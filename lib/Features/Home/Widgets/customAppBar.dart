import 'package:book_nest/Core/Resources/fontManager.dart';
import 'package:book_nest/Core/Resources/routeManager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Navigator.of(context).pushNamed(RoutesName.kSearchPage);
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
