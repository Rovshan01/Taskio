import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _passController = TextEditingController();
    late final size = MediaQuery.of(context).size;
    late final screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 700.0,
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 90.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Title and Subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Reset Password", style: TextStyle(fontSize: 38.0)),
                SizedBox(height: 8.0),
                Text(
                  "Reset code was sent to your email. Please enter the code and creae new password",
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF9B9B9B)),
                ),
              ],
            ),

            /// Reset code field
            TextField(
              controller: _passController,
              decoration: InputDecoration(
                label: Text(
                  "Enter your code",
                  style: TextStyle(fontSize: 18.0, color: Colors.black45),
                ),
              ),
            ),

            /// New password field
            TextField(
              controller: _passController,
              decoration: InputDecoration(
                label: Text(
                  "Enter your password",
                  style: TextStyle(fontSize: 18.0, color: Colors.black45),
                ),
              ),
            ),

            /// Confirm password field
            TextField(
              controller: _passController,
              decoration: InputDecoration(
                label: Text(
                  "Enter your confirm password",
                  style: TextStyle(fontSize: 18.0, color: Colors.black45),
                ),
              ),
            ),

            /// Change password button
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
                onPressed: () {
                  context.go('/success');
                },
                child: Text(
                  'Change password',
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
