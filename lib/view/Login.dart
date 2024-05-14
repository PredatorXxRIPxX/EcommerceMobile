import 'dart:ffi';
import 'package:flutter/material.dart';
import '../components/Textinfo.dart';
import '../components/SubmitingBtn.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    const CircleAvatar(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.deepPurple,
                      radius: 30,
                      child: Icon(Icons.person_2_outlined),
                    ),
                    Textinfo(
                        label: "Email",
                        icon: const Icon(Icons.email_outlined),
                        isPassword: false),
                    const SizedBox(
                      height: 10,
                    ),
                    Textinfo(
                        label: "password",
                        icon: const Icon(Icons.password_outlined),
                        isPassword: true),
                    const SizedBox(
                      height: 25,
                    ),
                    SubmitingBtn(label: "Log in", backgroundColor: Colors.deepPurple, foregroundColor: Colors.white, fonctuanility: "login"),
                    const SizedBox(height: 25,),
                    SubmitingBtn(label: "Sign in", backgroundColor: Colors.white, foregroundColor: Colors.deepPurple, fonctuanility: "signin")
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
