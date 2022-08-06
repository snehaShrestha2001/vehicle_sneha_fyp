import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_field.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 200,
                    width: 200,
                  ),
                  const Text("Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  MyField(
                    controller: emailController,
                    myValidator: (value) {
                      if (!value.toString().contains("@")) {
                        return "Email is not valid";
                      }
                      return null;
                    },
                  ),
                  MyField(
                    text: "Password",
                    obscureText: true,
                    controller: passwordController,
                    myValidator: (value) {
                      return null;
                    },
                  ),
                  MyButton(onTap: () {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      if (emailController.text == "admin@gmail.com" &&
                          passwordController.text == "password") {}
                    }
                  }),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Forgot Password?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline)),
                  ),
                  SizedBox(height: 190,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Don't have an account?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text("Sign Up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}