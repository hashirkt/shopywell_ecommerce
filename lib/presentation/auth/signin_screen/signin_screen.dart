import 'package:flutter/material.dart';
import 'package:shopywell/presentation/auth/signin_screen/forgot_password_screen.dart';
import 'package:shopywell/presentation/auth/signup/signup_screen.dart';
import 'package:shopywell/presentation/home/start_screen.dart';
import 'package:shopywell/presentation/widgets/button_widgets.dart';
import 'package:shopywell/presentation/widgets/text_field_widget.dart';
import 'package:shopywell/utils/image_res.dart';
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
              SizedBox(height: 20),
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 52),
              ButtonWidget(
                text: 'Login',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartScreen()),
                  );
                },
              ),
              SizedBox(height: 75),
              Center(
                child: Text(
                  "- OR Continue with -",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 20),
              Center(child: Image.asset(ImageRes.buttons, width: 185)),
              SizedBox(height: 28),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create an Account? ",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: Theme.of(
                          context,
                        ).textTheme.displaySmall?.copyWith(
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
