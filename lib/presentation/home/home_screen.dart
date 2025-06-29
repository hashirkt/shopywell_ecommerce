import 'package:flutter/material.dart';
import 'package:shopywell/utils/image_res.dart';
import 'package:shopywell/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: AppTheme.secondaryColor,
            child: Icon(Icons.menu_rounded, color: Colors.black),
          ),
        ),
        title: Image.asset(ImageRes.logo, width: 100, fit: BoxFit.contain),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(ImageRes.profile),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
              ],
            ),
          ],
        ),
      ),
    );
  }
}
