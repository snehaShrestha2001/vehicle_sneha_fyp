import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset("assets/images/logo.png",
                height: 200,
                width: 200,
                ),
              Text("Create a new account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 190, 151, 107), 
                ),
              ),
              SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                hintText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: "Address",
                hintText: "Enter your address",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: "Phone No.",
                hintText: "Enter your phone number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter the password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Confirm password",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(onPressed: (){}, 
              child: const Text("SignUp",)
              )
          ],),
        )
        ),
      )
    );
  }
}