import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

//SIGN IN Function
Future<User?> signInWithGoogle() async
{
  try{
    //SIGNING IN WITH GOOGLE
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

    //CREATING CREDENTIAL FOR FIREBASE
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken
    );

    //SIGNING IN WITH CREDENTIAL & MAKING A USER IN FIREBASE  AND GETTING USER CLASS
    final userCredential  = await _auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    return user;
  }catch(e){
    print(e);
  }
}
