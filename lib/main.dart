
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggie/Provider/product_provider.dart';
import 'package:veggie/Provider/user_provider.dart';
import 'package:veggie/firebase_options.dart';
import 'package:veggie/home.dart';
import 'package:veggie/review_cart/review_cart_provider.dart';
import 'package:veggie/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ProductProvider>(
        create: (context) => ProductProvider(),),
         ChangeNotifierProvider<UserProvider>(
        create: (context) => UserProvider(),
      ),
       ChangeNotifierProvider<ReviewCartProvider>(
        create: (context) => ReviewCartProvider(),
      ),
    ],
    // ignore: dead_code
    child:
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Veggie",
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                return HomeScreen();
              }
              return SignIn();
            }
           
            )

        // HomeScreen(),
        )
        );
  }
}
