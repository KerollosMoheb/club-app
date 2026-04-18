import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext ontext) {
    return const Divider(
      endIndent:  10.0,
      indent: 10.0,
      color: Colors.grey,
      thickness: 1.0,
    );
  }
}