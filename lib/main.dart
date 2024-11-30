import 'package:flutter/material.dart';
import 'package:shopping/screens/Login/login.dart';
import 'package:shopping/screens/add_product/add_product.dart';
import 'package:shopping/screens/home/homepage.dart';
import 'package:shopping/theme.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    theme: primaryTheme,
  ));

  // Make the status bar transparent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Make status bar transparent
    statusBarIconBrightness: Brightness
        .dark, // Adjust icon brightness (dark for light backgrounds, light for dark backgrounds)
  ));
}
