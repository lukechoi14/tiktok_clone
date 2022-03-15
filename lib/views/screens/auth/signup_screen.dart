import 'package:flutter/material.dart';
import 'package:tiktok_clone/views/screens/auth/login_screen.dart';
import 'package:tiktok_clone/views/widgets/text_input_field.dart';

import '../../../constants.dart';
import 'package:get/get.dart';
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tiktok Clone",
                style: TextStyle(
                    fontSize: 35,
                    color: buttonColor,
                    fontWeight: FontWeight.w900),
              ),
              const Text(
                "Register",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(
                children:[
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1646236177974-845180916b03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                    backgroundColor: Colors.black,
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(onPressed: () {
                        authController.pickImage();
                      }, icon: const Icon(Icons.add_a_photo)))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _usernameController,
                  labelText: "Username",
                  icon: Icons.person,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  labelText: "Email",
                  icon: Icons.email,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordController,
                  labelText: "Password",
                  icon: Icons.lock,
                  isObscure: true,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: InkWell(
                    onTap: ()=> authController.registerUser(_usernameController.text, _emailController.text, _passwordController.text, authController.profilePhoto),
                    child: const Center(
                        child: Text(
                          "Register",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ))),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                      onTap: () {
                       Get.off(LoginScreen());
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: buttonColor),
                      )),
                ],
              )
            ],
          )),
    );
  }
}
