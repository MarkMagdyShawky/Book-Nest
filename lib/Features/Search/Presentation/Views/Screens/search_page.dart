import 'package:book_nest/Features/Search/Presentation/Views/Screens/search_page_body.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchPageBody(),
    );
  }
}