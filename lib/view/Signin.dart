import 'package:flutter/material.dart';
import '../components/SubmitingBtn.dart';
import '../components/Textinfo.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
                      foregroundColor: Colors.deepPurple,
                      backgroundColor: Colors.white70,
                      radius: 30.0,
                      child: Icon(Icons.lock),
                    ),
                    Textinfo(
                      label: "username", 
                      icon: const Icon(Icons.person_2_outlined), 
                      isPassword: false),
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
                    SubmitingBtn(
                        label: "Sign in",
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        fonctuanility: "signin"),
                    const SizedBox(
                      height: 25,
                    ),
                    SubmitingBtn(
                        label: "Log in",
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.deepPurple,
                        fonctuanility: "login")
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
