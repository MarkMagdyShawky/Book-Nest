import 'package:book_nest/Core/Resources/fontManager.dart';
import 'package:book_nest/Core/Resources/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FontManager().LogoText(38),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(RoutesName.kSearchPage);
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 23,
            ),
          ),
        ],
      ),
    );
  }
}
