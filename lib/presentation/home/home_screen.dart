import 'package:flutter/material.dart';
import 'package:shopywell/presentation/widgets/home_appbar_widget.dart';
import 'package:shopywell/presentation/widgets/search_textfield_widget.dart';
import 'package:shopywell/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBgColor,
      appBar: HomeAppbarWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            SearchTextFieldWidget(),
          ],
        ),
      ),
    );
  }
}

