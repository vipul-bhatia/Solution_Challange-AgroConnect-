import 'package:flutter/material.dart';
import 'package:solution_challange/services/authOption.dart';
import './pages/onBoardingScreen.dart';
import './pages/authPage.dart';
import './pages/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build (BuildContext context){
      return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => AuthOption(),
          '/auth': (context) => AuthenticationPage(),
          '/home':(context) => homePage(),
        },
      );
  }
}