import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//pages
import '../Pages/onboardingscreen.dart';
import '../Pages/home.dart';
import '../pages/authPage.dart';
class AuthOption extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return homePage();
          }

          // user is NOT logged in
          else {
            return AuthenticationPage();
          }
        },
      ),
    );
  }
}