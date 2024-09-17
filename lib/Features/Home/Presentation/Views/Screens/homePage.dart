import 'package:book_nest/Core/Resources/list_manager.dart';
import 'package:book_nest/Features/Home/presentation/Views/Screens/homeBodyView.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBodyView(
        category: categoriesNamesList[0],
      ),
    );
  }
}
