import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/common_widget/round_button.dart';
import 'package:meal_monkey/common_widget/round_icon_button.dart';
import 'package:meal_monkey/common_widget/round_textfield.dart';
import 'package:meal_monkey/view/login/sign_up_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              _text(
                'Login',
                TColor.primaryText,
                30,
                FontWeight.w800,
              ),
              _text(
                'Add your details to login',
                TColor.secondaryText,
                14,
                FontWeight.w500,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextField(
                hintText: 'Email',
                controller: emailText,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextField(
                hintText: 'Password',
                controller: passwordText,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(
                title: 'Login',
                onPressed: () {},
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {},
                child: _text(
                  'Forgot you password?',
                  TColor.secondaryText,
                  14,
                  FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _text(
                'or Login with',
                TColor.secondaryText,
                14,
                FontWeight.w500,
              ),
              const SizedBox(
                height: 30,
              ),
              RoundIconButton(
                onPressed: () {},
                buttonText: 'Login with Facebook',
                containerColor: const Color(0xff367FC0),
                textColor: TColor.white,
                iconPathName: 'assets/images/facebook_logo.png',
              ),
              const SizedBox(
                height: 25,
              ),
              RoundIconButton(
                onPressed: () {},
                buttonText: 'Login with Google',
                containerColor: const Color(0xffDD4B39),
                textColor: TColor.white,
                iconPathName: 'assets/images/google_logo.png',
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _text(
                      "Don't have an account?",
                      TColor.secondaryText,
                      14,
                      FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    _text(
                      'Sign Up',
                      TColor.primary,
                      14,
                      FontWeight.w700,
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

//Text
Widget _text(String text, Color color, double fontSize, FontWeight fontWeight) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
