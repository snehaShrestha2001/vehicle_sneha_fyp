import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_sneha_fyp/views/pages/home_screen.dart';
import 'package:vehicle_sneha_fyp/views/pages/second_screen.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SecondScreen(
    ),
  ));
}