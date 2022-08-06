import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String value;
  const SecondScreen({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: "Address",
                hintText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: "Phone No.",
                hintText: "Phone No.",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Password",
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