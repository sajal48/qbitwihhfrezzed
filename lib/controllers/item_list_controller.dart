import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qbitwihhfrezzed/controllers/auth_controllers.dart';
import 'package:qbitwihhfrezzed/models/item_model.dart';
import 'package:qbitwihhfrezzed/repositories/custom_exception.dart';
import 'package:qbitwihhfrezzed/repositories/item_repositories.dart';

final itemListExceptionProvider = StateProvider<CustomException?>((_) => null);
final itemListControllerProvider =
    StateNotifierProvider<ItemListController, AsyncValue<List<Item>>>((ref) {
  final user = ref.watch(authControllerProvider);
  return ItemListController(ref.read, user?.uid);
});

class ItemListController extends StateNotifier<AsyncValue<List<Item>>> {
  final Reader _read;
  final String? _userId;
  ItemListController(this._read, this._userId) : super(AsyncValue.loading()) {
    if (_userId != null) {
      retreiveItems();
    }
  }

  Future<void> retreiveItems({bool isRefreshing = false}) async {
    if (isRefreshing) state = AsyncValue.loading();
    try {
      final items =
          await _read(itemRepositoryProvider).retriveItems(userId: _userId!);
      if (mounted) {
        state = AsyncValue.data(items);
      }
    } on CustomException catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> addItem({required String name, bool obtained = false}) async {
    try {
      final item = Item(name: name, obtained: obtained);
      final itemId = await _read(itemRepositoryProvider)
          .createItem(userId: _userId!, item: item);
      state.whenData((items) =>
          state = AsyncValue.data(items..add(item.copyWith(id: itemId))));
    } on CustomException catch (e) {
      _read(itemListExceptionProvider).state = e;
    }
  }

  Future<void> updateItem({required Item updateitem}) async {
    try {
      await _read(itemRepositoryProvider)
          .updateItem(userId: _userId!, item: updateitem);
      state.whenData((items) => state = AsyncValue.data([
            for (final item in items)
              if (item.id == updateitem.id) updateitem else item
          ]));
    } on CustomException catch (e) {
      _read(itemListExceptionProvider).state = e;
    }
  }

  Future<void> deleteItem({required String itemId}) async {
    try {
      await _read(itemRepositoryProvider)
          .deleteItem(userId: _userId!, itemId: itemId);
      state.whenData((items) => state =
          AsyncValue.data(items..removeWhere((item) => item.id == itemId)));
    } on CustomException catch (e) {
      _read(itemListExceptionProvider).state = e;
    }
  }
}
