import 'package:flutter/material.dart';
import 'package:shopywell/presentation/widgets/button_widgets.dart';
import 'package:shopywell/utils/image_res.dart';
import 'package:shopywell/utils/theme.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(34),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageRes.startImg),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "You want \nAuthentic, here \nyou go!",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: AppTheme.white),
            ),
            SizedBox(height: 14),
            Text(
              "Find it here, buy it now!",
              style: Theme.of(
                context,
              ).textTheme.displaySmall?.copyWith(color: AppTheme.white),
            ),
            SizedBox(height: 44),
            ButtonWidget(text: "Get Started"),
          ],
        ),
      ),
    );
  }
}
