import 'package:flutter/material.dart';
class MyTabs extends StatelessWidget {
  const MyTabs({Key? key, required this.iconPath}) : super(key: key);

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 55,

      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(iconPath, color: Colors.grey[600],),
      ),
    );
  }
}
