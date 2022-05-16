import 'package:flutter/material.dart';

navigate(context, page) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

navigateReplace(context, page) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

navigateRemoveAll(context, page) {
  return Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false);
}

//sizes of screens
fullWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

fullHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//sizes height
const spaceSmall = SizedBox(
  height: 5,
);
const spaceMedium = SizedBox(
  height: 10,
);
const spaceLarge = SizedBox(
  height: 20,
);
const spaceExtraLarge = SizedBox(
  height: 30,
);
//sizes width
const spaceSmallWidth = SizedBox(
  width: 5,
);
const spaceMediumWidth = SizedBox(
  width: 10,
);
const spaceLargeWidth = SizedBox(
  width: 20,
);
const spaceExtraLargeWidth = SizedBox(
  width: 30,
);
