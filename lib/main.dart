import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_sneha_fyp/views/pages/home_page.dart';
import 'package:vehicle_sneha_fyp/views/pages/signup_page.dart';
import 'package:vehicle_sneha_fyp/views/pages/second_screen.dart';

void main(){
  runApp(MaterialApp(
    home: GetMaterialApp(
      title: "Vehicle Rent",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    )
  ));
}