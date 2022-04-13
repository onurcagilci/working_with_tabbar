import 'package:flutter/material.dart';

class AppBarTitleTextWidget extends StatelessWidget {
  final String title;

  const AppBarTitleTextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontWeight: FontWeight.bold));
  }
}
