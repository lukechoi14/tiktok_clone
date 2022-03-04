import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: ()=>authController.signOut(),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Text('hello'),
          ),
        ),
      )
    );
  }
}
