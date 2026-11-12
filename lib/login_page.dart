import 'package:classico_cmd/custom_widgets/app_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:classico_cmd/ui_helper.dart' as AppDecoration;

class LoginPage extends StatelessWidget {
  bool isPasswordVisible = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, Welcome back...", style: TextStyle(fontSize: 21)),
              SizedBox(height: 11),
              TextField(
                controller: emailController,
                decoration: AppDecoration.getInputDecoration(
                  label: 'Email',
                  hint: 'Enter your email here...',
                  mIcon: Icons.email_outlined,
                ),
              ),
              SizedBox(height: 11),
              StatefulBuilder(
                builder: (context, ss) {
                  return TextField(
                    controller: passwordController,
                    obscureText: !isPasswordVisible,
                    decoration: AppDecoration.getInputDecoration(
                      label: 'Password',
                      hint: 'Enter your password here...',
                      mIcon: Icons.password_outlined,
                      isPasswordField: true,
                      isPasswordVisible: isPasswordVisible,
                      onTap: () {
                        ss(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 11),
              AppRoundedButton(
                title: "Login",
                onTap: () {
                  print("Login button");
                },
              ),
              SizedBox(height: 11),
              AppRoundedButton(
                title: "Sign Up",
                icon: Icons.play_arrow,
                bgColor: Colors.purple,
                roundValue: 50,
                mWidth: 150,
                onTap: () {
                  print("Sign up button");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
