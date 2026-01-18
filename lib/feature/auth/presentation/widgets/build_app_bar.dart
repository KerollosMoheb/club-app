import 'package:flutter/material.dart';

AppBar buildAppBar(void Function()? onPressed) {
  return AppBar(
    toolbarHeight: 35.0,
    leading: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back)),
  );
}
