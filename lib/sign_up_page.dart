import 'package:classico_cmd/ui_helper.dart' as AppDecoration;
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
            TextField(
              controller: nameController,
              decoration: AppDecoration.getInputDecoration(
                label: 'Name',
                hint: 'Enter your name here...',
                mIcon: Icons.person_outline,
              ),
            ),
            SizedBox(height: 11),
            TextField(
              controller: mobileNoController,
              decoration: AppDecoration.getInputDecoration(
                label: 'Mobile No.',
                hint: 'Enter your mobile no. here...',
                mIcon: Icons.call_outlined,
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
                    // setState: ss,
                    onTap: () {
                      ss(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
