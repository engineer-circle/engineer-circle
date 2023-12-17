import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthenticationRepository(
    firebaseAuth: ref.watch(firebaseAuthProvider),
  ),
);

class AuthenticationRepository {
  AuthenticationRepository({
    required this.firebaseAuth,
  });

  final FirebaseAuth firebaseAuth;

  static final _googleSignIn = GoogleSignIn();

  String? getCurrentUserUid() {
    return firebaseAuth.currentUser?.uid;
  }

  Future<String?> googleSignIn() async {
    GoogleSignInAccount? signinAccount = await _googleSignIn.signIn();

    if (signinAccount == null) return null;
    GoogleSignInAuthentication auth = await signinAccount.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      idToken: auth.idToken,
      accessToken: auth.accessToken,
    );
    // 認証情報をFirebaseに登録
    User? user = (await firebaseAuth.signInWithCredential(credential)).user;

    return user?.uid;
  }

  Future<void> googleLogout() => _googleSignIn.disconnect();
}
