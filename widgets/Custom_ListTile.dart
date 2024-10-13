import 'package:flutter/material.dart';

class CustomLisTile extends StatelessWidget {
  const CustomLisTile({super.key, required this.title, required this.leading});
  final String title;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: leading,
    );
  }
}
