import 'package:flutter/material.dart';
import 'package:shopywell/presentation/widgets/button_widgets.dart';
import 'package:shopywell/presentation/widgets/text_field_widget.dart';
import 'package:shopywell/utils/theme.dart';

// ignore: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  TextEditingController emailCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          color: AppTheme.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Forgot \nPassword?",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 36),
              TextFieldWidget(
                hintText: 'Enter your email address',
                prefixIcon: Icons.mail_rounded,
                controller: emailCtr,
              ),
              SizedBox(height: 31),

              Text(
                "* We will send you a message to set or reset your new password",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(height: 38),
              ButtonWidget(text: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
