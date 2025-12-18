import 'package:Taskio/features/auth/forgot_password_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController();
    late final size = MediaQuery.of(context).size;
    late final screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30.0,
          top: 50.0,
          bottom: 180.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Sign in to continue", style: TextStyle(fontSize: 18.0)),
                ],
              ),
            ),

            /// Gmail and password fields
            Column(
              children: [
                /// Gmail field
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    label: Text(
                      "Enter your gmail",
                      style: TextStyle(fontSize: 18.0, color: Colors.black45),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),

                /// Password label
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    label: Text(
                      "Enter your password",
                      style: TextStyle(fontSize: 18.0, color: Colors.black45),
                    ),
                  ),
                ),

                /// Forgot password button
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Forgot password',
                      style: TextStyle(
                        color: Color(0xFF313131),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /// Login button
            Container(
              width: screenWidth,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF96060),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
