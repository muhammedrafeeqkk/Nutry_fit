import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class firebaseServices {
  final _auth = FirebaseAuth.instance;
  final _googleSigning = GoogleSignIn();

  SigningWithGoole() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSigning.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);

        await _auth.signInWithCredential(authCredential);
      }
    } on FirebaseAuthException catch (e) {
      print("refeeqee ${e.message}");
      throw e;
    }
  }

  signOutWithGoogle() async {
    await _auth.signOut();
    await _googleSigning.signOut();
  }
}
