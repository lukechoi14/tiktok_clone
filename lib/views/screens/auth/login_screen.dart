import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Tiktok Clone", style:  TextStyle(fontSize: 35, color: buttonColor, fontWeight: FontWeight.w900),)
          ],
        )
      ),
    );
  }
}
