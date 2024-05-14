import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import './view/Homepage.dart';
import './view/Login.dart';
import './view/Profile.dart';
import './view/Signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await dotenv.load(fileName: "api/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/homepage',
      routes: {
        "/login": (context) => const Login(),
        "/signin": (context) => const Signin(),
        "/homepage": (context) => const Homepage(),
        "/profile": (context) => const Profile(),
      },
    );
  }
}
