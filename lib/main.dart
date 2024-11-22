import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/NavBar/navbar_penjual.dart';
import 'package:testing_aplikasi/brand/emina/emina_product.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testing_aplikasi/keuangan/keuangan.dart';
import 'package:testing_aplikasi/keuangan/tarik_tunai.dart';
import 'package:testing_aplikasi/splash02.dart';
import 'firebase_options.dart';


void main() async{
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sierra - Make Up Marketplace',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navbar()
    );
  }
}

