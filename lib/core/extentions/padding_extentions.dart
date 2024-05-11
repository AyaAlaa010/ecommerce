import 'package:flutter/cupertino.dart';

import '../config/app_constants/constants.dart';

extension PaddingToWidget on Widget {
  Widget setHorizontalPadding(double value, {bool enableMediaQuery = true}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              enableMediaQuery ? Constants.mediaQuery.width * value : value),
      child: this,
    );
  }

  Widget setVerticalPadding(double value, {bool enableMediaQuery = true}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical:
              enableMediaQuery ? Constants.mediaQuery.height * value : value),
      child: this,
    );
  }

  Widget setHorizontalAndVerticalPadding(
      double valueHorizontal, double valueVertical,
      {bool enableMediaQuery = true}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: enableMediaQuery
              ? Constants.mediaQuery.height * valueVertical
              : valueVertical,
          horizontal: enableMediaQuery
              ? Constants.mediaQuery.width * valueHorizontal
              : valueHorizontal),
      child: this,
    );
  }

  Widget setOnlyPadding(double top, double bottom, double right, double left,
      {bool enableMediaQuery = true}) {
    return Padding(
      padding: EdgeInsets.only(
        top: enableMediaQuery ? Constants.mediaQuery.height * top : top,
        bottom:
            enableMediaQuery ? Constants.mediaQuery.height * bottom : bottom,
        left: enableMediaQuery ? Constants.mediaQuery.width * left : left,
        right: enableMediaQuery ? Constants.mediaQuery.width * right : right,
      ),
      child: this,
    );
  }
}
