import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.withOpacity(0.8),
      body: Column(
        children:[SizedBox(height: 30,),Text(
          "What Color is the Sky?\nAi mi Amor\nAi mi Amor",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,color: Colors.white),
        ),
      Image.asset("images/cat.jpg")],
    ),);
  }
}
