import 'package:Taskio/features/auth/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController();
    late final size = MediaQuery.of(context).size;
    late final screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 500.0,
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            /// Title and Subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Forgot Password", style: TextStyle(fontSize: 38.0)),
                SizedBox(height: 8.0),
                Text(
                  "Please enter your email below to recevie your password reset instructions",
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF9B9B9B)),
                ),
              ],
            ),

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

            /// Send request button
            Container(
              width: screenWidth,
              height: 55.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF96060),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Reset link sent to your email'),
                      duration: Duration(seconds: 2),
                    ),
                  );

                  await Future.delayed(const Duration(seconds: 2));

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },

                child: Text(
                  'Send Request',
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
