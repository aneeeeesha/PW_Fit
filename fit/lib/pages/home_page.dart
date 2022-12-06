import 'package:flutter/material.dart';
import '../utilities/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(alignment: Alignment.center, children: [
        Image.asset("images/welcome_img.jpg",
            height: 1000, fit: BoxFit.fitHeight),
        Positioned(top: 80, left: MediaQuery.of(context).size.width * 0.35, child: Image.asset("images/logo.png")),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.55,
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 40),
                height: 160,
                child: Text(
                    "Welcome to the app where fitness is\na daily routine and now you can \ndo it at the comfort of your\nhome.",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                height: 70,
                child: Text(
                  "Transform yourself with this app",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 50, left: 50),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.loginRoute);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.signUpRoute);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 25, fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ]),
              ),
            ]),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.deepPurple.withOpacity(0.7)),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ]),
    );
  }
}
