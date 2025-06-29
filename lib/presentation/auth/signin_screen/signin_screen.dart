import 'package:flutter/material.dart';
import 'package:shopywell/presentation/widgets/text_field_widget.dart';
import 'package:shopywell/utils/theme.dart';

// ignore: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  TextEditingController usernameCtr = TextEditingController();
  TextEditingController passCtr = TextEditingController();

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
              Text(
                "Welcome \nBack!",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 36),
              TextFieldWidget(
                hintText: 'Username or Email',
                prefixIcon: Icons.person_2_rounded,
                controller: usernameCtr,
              ),
              SizedBox(height: 31),
              TextFieldWidget(
                hintText: 'Password',
                prefixIcon: Icons.lock_rounded,
                controller: passCtr,
                obscureText: true,
              ),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 31),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
