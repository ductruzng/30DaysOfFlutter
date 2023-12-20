import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70.0,
              ),
              child: Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text("Login"),
              style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
