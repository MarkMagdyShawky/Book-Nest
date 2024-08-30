import 'package:flutter/material.dart';

class PageDimensions {
  double pageWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  double pageHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }
}
