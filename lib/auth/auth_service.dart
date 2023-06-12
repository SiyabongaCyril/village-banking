import 'package:villagebanking/auth/auth_provider.dart';
import 'package:villagebanking/auth/auth_user.dart';
import 'package:villagebanking/auth/firebase_auth_provider.dart';

class AuthService implements AuthProvider {
  AuthService(this.provider);
  final AuthProvider provider;

  factory AuthService.firebase() => AuthService(FirebaseAuthProvider());

  @override
  Future<AuthUser> register(
      {required String email, required String password}) async {
    return await provider.register(email: email, password: password);
  }

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> logIn(
      {required String email, required String password}) async {
    return await provider.logIn(email: email, password: password);
  }

  @override
  Future<void> logOut() async {
    return await provider.logOut();
  }

  @override
  Future<void> sendEmailVerification() async {
    return await provider.sendEmailVerification();
  }

  @override
  Future<void> initialise() async {
    await provider.initialise();
  }
}
