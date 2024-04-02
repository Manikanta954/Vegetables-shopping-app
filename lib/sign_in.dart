import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:veggie/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final User? user = (await _auth.signInWithCredential(credential)).user;
      print("signed in ${user?.displayName}");
      ScaffoldMessenger(
        child: Text('signed in ${user?.displayName}'),
      );
      return user;
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/background.png",
              ),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sign in to continue',
                ),
                Text(
                  'Vegi',
                  style: TextStyle(color: Colors.white, fontSize: 50, shadows: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.green.shade900,
                        offset: Offset(3, 3))
                  ]),
                ),
                Column(children: [
                  SignInButton(Buttons.google, onPressed: () {
                    _googleSignUp().then((value) =>
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        )));
                  }),
                  SignInButton(Buttons.apple, onPressed: () {
                    print('pressed apple button');
                  }),
                  SignInButton(Buttons.email, onPressed: () {
                    print('pressed email button');
                  })
                ]),
                Column(children: [
                  Text(
                    "By signing in you are agreeing to our",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Text(
                    "Terms and Policies",
                    style: TextStyle(color: Colors.grey[500]),
                  )
                ]),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
