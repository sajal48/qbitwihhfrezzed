part of 'fireauth_cubit.dart';

@freezed
@immutable
abstract class FireauthState with _$FireauthState {
  const factory FireauthState.initial() = _Initial;
  const factory FireauthState.signedIn() = _SignedIn;
  const factory FireauthState.signedOut() = _SignedOut;
  const factory FireauthState.loading() = _Loading;
  const factory FireauthState.anyerrorState(String message) = _AnyErrorState;
}
