import 'package:flutter/material.dart';
import 'package:vehicle_sneha_fyp/views/components/my_field.dart';

import '../components/my_button.dart';

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
                    print(data);
                  }
                })
              ],
            ),
        ),),
      );
  }
}