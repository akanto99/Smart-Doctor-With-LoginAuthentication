import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<User?> signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

  final userCredential = await _auth.signInWithCredential(facebookAuthCredential);
  final User? user = userCredential.user;

  //CHECKING IS ON
  // assert(!user!.isAnonymous);
  // assert(await user!.getIdToken() != null);

  // final User? currentUser = await _auth.currentUser;
  // assert(currentUser!.uid == user!.uid);

  // print(user);
  return user;

  // Once signed in, return the UserCredential
  // return await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);

}


