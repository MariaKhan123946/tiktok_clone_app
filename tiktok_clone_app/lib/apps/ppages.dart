import 'package:flutter/material.dart';
class Pages extends StatefulWidget {
  const Pages({super.key});
  @override
  State<Pages> createState() => _PagesState();
}
class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 20)
            ),
          ),
        ],
      ),
    );
  }
}
