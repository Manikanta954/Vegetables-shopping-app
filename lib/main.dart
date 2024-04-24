import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggie/Provider/product_provider.dart';
import 'package:veggie/firebase_options.dart';
import 'package:veggie/home.dart';

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
    return ChangeNotifierProvider<ProductProvider>(
      create:(context) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Veggie",
        home:HomeScreen(),
      ),
    );
  }
}
