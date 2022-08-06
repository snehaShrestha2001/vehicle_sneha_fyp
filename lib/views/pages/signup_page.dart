import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_sneha_fyp/views/components/my_field.dart';
import 'package:vehicle_sneha_fyp/views/pages/second_screen.dart';


import '../components/my_button.dart';
import 'login_page.dart';

class HomeScreen extends StatelessWidget {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
              children: [
                Image.asset("assets/images/logo.png",
                height: 200,
                width: 200,
                ),
                MyField(
                  text: "Full Name",
                  controller: fullNameController,
                  myValidator: (value){
                    return null;
                  },
                ),
                MyField(
                  controller: emailController,
                  myValidator: (value){
                    if (!value.toString().contains("@")){
                      return "Email is not valid";
                    }
                    return null;
                  },
                ),
                MyField(
                  text: "Address",
                  controller: addressController,
                  myValidator: (value){
                    return null;
                  },
                ),
                MyField(
                  text: "Phone No.",
                  controller: phoneController,
                  myValidator: (value){
                    return null;
                  },
                ),
                MyField(
                  text: "Password",
                  obscureText: true,
                  controller: passwordController,
                  myValidator: (value){
                    return null;
                  },
                ),
                MyField(
                  text: "Confirm Password",
                  obscureText: true,
                  controller: confirmPasswordController,
                ),
                MyButton(onTap: (){
                  var isFormValid = formKey.currentState!.validate();
                  if (isFormValid){
                    var data = {"email": emailController.text};
                    Get.to(SecondScreen(value: data.toString()));
                  }
                }),
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Already have an account?"),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(LoginPage());
                    },
                    child: const Text("Login",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
          )],  
            ),
        ),),
      );
  }
}