import 'package:flutter/material.dart';
import 'package:flash_chat/welcomescreen.dart';
import 'package:flash_chat/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.amber),
        ),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        'Welcome_Screen': (context) => WelcomeScreen(),
        'Login_Screen': (context) => LoginScreen(),
        //  'Registration_Screen':(context) => RegistrationScreen(),
        //  'chat_Screen' :(context) => ChatScreen(),
      },
    );
  }
}
