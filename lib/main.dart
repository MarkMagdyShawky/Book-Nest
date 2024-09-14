import 'package:book_nest/Core/Utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'App/myApp.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}
