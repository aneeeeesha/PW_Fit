import 'package:fit/pages/login_page.dart';
import 'package:fit/pages/sign_up.dart';
import 'package:fit/pages/welcome_page.dart';
import 'package:fit/utilities/routes.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),

      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute:MyRoutes.welcomeRoute,
      routes: {
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.welcomeRoute: (context) => WelcomePage(),
        MyRoutes.signUpRoute: (context) => SignUpPage(),

        // MyRoutes.welcomeRoute: (context)=> WelcomePage(),
      },
    );
  }
}
