import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/firebase_services.dart';
import '../pages/authPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          // Text('Hi ${FirebaseAuth.instance.currentUser!.displayName}'),
          IconButton(
            onPressed: () async {
                await FirebaseServices().signOut();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AuthenticationPage(),
                          ),
                              (r) => false,
                        );
                        print('Button pressed ...');
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body:  Center(
        child:Column(children: [
          CircleAvatar(
            radius: 50,
            backgroundImage:NetworkImage(
                                        '${FirebaseAuth.instance.currentUser!.photoURL}',
                                      ),
          ),
          Text('${FirebaseAuth.instance.currentUser!.displayName}'),
          Text('${FirebaseAuth.instance.currentUser!.email}'),
        ])

      )
    );
  }
}