import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:padiku/ui/pages/get_started_page.dart';
import 'package:padiku/ui/pages/home_page.dart';
import 'package:padiku/ui/pages/signin_page.dart';
import 'package:padiku/ui/pages/signup_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const GetStartedPage(),
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
