import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qbitwihhfrezzed/controllers/auth_controllers.dart';
import 'package:qbitwihhfrezzed/controllers/item_list_controller.dart';
import 'package:qbitwihhfrezzed/cubit/firebase_auth_repo.dart';
import 'package:qbitwihhfrezzed/repositories/custom_exception.dart';
import 'package:qbitwihhfrezzed/router.dart';

import 'models/item_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
    router:
        AppRouter(repo: FireBaseAuthRepo(firebaseAuth: FirebaseAuth.instance)),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({Key? key, required this.router}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.genarateRoute,
    );
  }
}

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final authControllerState = useProvider(authControllerProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Provider"),
        leading: authControllerState != null
            ? IconButton(
                onPressed: () =>
                    context.read(authControllerProvider.notifier).signOut(),
                icon: const Icon(Icons.logout_rounded))
            : null,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AddItemDialog.show(context, Item.empty()),
        child: const Icon(Icons.add_box_outlined),
      ),
      body: ProviderListener(
        provider: itemListExceptionProvider,
        onChange: (BuildContext context,
            StateController<CustomException?> customException) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.red,
                content: Text(customException.state!.message!)),
          );
        },
        child: const ItemList(),
      ),
    );
  }
}

class AddItemDialog extends HookWidget {
  static void show(BuildContext context, Item item) {
    showDialog(
      context: context,
      builder: (context) => AddItemDialog(item: item),
    );
  }

  final Item item;
  const AddItemDialog({Key? key, required this.item}) : super(key: key);
  bool get isUpdating => item.id != null;
  @override
  Widget build(BuildContext context) {
    final textcont = useTextEditingController(text: item.name);
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: textcont,
              autofocus: true,
              decoration: const InputDecoration(hintText: "Item name"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: isUpdating
                        ? Colors.orange
                        : Theme.of(context).primaryColor),
                onPressed: () {
                  isUpdating
                      ? context
                          .read(itemListControllerProvider.notifier)
                          .updateItem(
                              updateitem: item.copyWith(
                                  name: textcont.text.trim(),
                                  obtained: item.obtained))
                      : context
                          .read(itemListControllerProvider.notifier)
                          .addItem(name: textcont.text.trim());
                  Navigator.of(context).pop();
                },
                child: Text(isUpdating ? "Update" : "Add"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final currentItem = ScopedProvider<Item>((_) => throw UnimplementedError());

class ItemList extends HookWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemListState = useProvider(itemListControllerProvider);
    return itemListState.when(
        data: (items) => items.isEmpty
            ? const Center(
                child: Text(
                  "Tap + add an item",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            : ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext contxt, int index) {
                  final item = items[index];
                  return ProviderScope(
                      overrides: [currentItem.overrideWithValue(item)],
                      child: ListTile(
                        key: ValueKey(item.id),
                        title: Text(item.name),
                        trailing: Checkbox(
                          value: item.obtained,
                          onChanged: (val) => context
                              .read(itemListControllerProvider.notifier)
                              .updateItem(
                                  updateitem:
                                      item.copyWith(obtained: !item.obtained)),
                        ),
                        onTap: () => AddItemDialog(item: item),
                        onLongPress: () => context
                            .read(itemListControllerProvider.notifier)
                            .deleteItem(itemId: item.id!),
                      ));
                },
              ),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        error: (error, _) => ItemListError(
            message: error is CustomException
                ? error.message!
                : "Something went wrong"));
  }
}

// class ItemTile extends StatelessWidget {
//   const ItemTile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final item = useProvider(currentItem);
//     return ListTile(
//       key: ValueKey(item.id),
//       title: Text(item.name),
//       trailing: Checkbox(
//         value: item.obtained,
//         onChanged: (val) => context
//             .read(itemListControllerProvider.notifier)
//             .updateItem(updateitem: item.copyWith(obtained: !item.obtained)),
//       ),
//       onTap: () => AddItemDialog(item: item),
//       onLongPress: () => context
//           .read(itemListControllerProvider.notifier)
//           .deleteItem(itemId: item.id!),
//     );
//   }
// }

class ItemListError extends StatelessWidget {
  final String message;
  const ItemListError({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () => context
                  .read(itemListControllerProvider.notifier)
                  .retreiveItems(isRefreshing: true),
              child: const Text('Retry'))
        ],
      ),
    );
  }
}
