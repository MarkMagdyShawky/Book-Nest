import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:flutter/material.dart';

class CustomDropMenu extends StatelessWidget {
  const CustomDropMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: kPurpelColor1.withOpacity(0.4)),
              color: kSecondColor.withOpacity(.2),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Row(
                  children: [
                    Icon(Icons.category_outlined, color: kWhiteColor1),
                    SizedBox(width: 8),
                    Text("Category", style: TextStyle(color: kWhiteColor1, fontSize: 15)),
                  ],
                ),
                items: [
                  DropdownMenuItem(child: Text("Category1"), value: "Category1"),
                  DropdownMenuItem(child: Text("Category1"), value: "Category2"),
                  DropdownMenuItem(child: Text("Category1"), value: "Category3"),
                ],
                onChanged: (String? value) {},
                dropdownColor: kSecondColor,
                borderRadius: BorderRadius.circular(16),
                isDense: true,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: kPurpelColor1.withOpacity(0.4)),
                color: kSecondColor.withOpacity(0.2)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Row(
                  children: [
                    Icon(Icons.link, color: kWhiteColor1),
                    SizedBox(width: 8),
                    Text("Sorting", style: TextStyle(color: kWhiteColor1, fontSize: 15)),
                  ],
                ),
                items: [
                  DropdownMenuItem(child: Text("Category1"), value: "Category1"),
                  DropdownMenuItem(
                      child: Text(
                        "Category2",
                      ),
                      value: "Category2"),
                  DropdownMenuItem(child: Text("Category3"), value: "Category3"),
                ],
                onChanged: (String? value) {},
                dropdownColor: kSecondColor,
                borderRadius: BorderRadius.circular(16),
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
