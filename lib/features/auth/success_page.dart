import 'package:Taskio/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      context.go('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.forgotPassword),
              SizedBox(height: 50.0),
              Text('Succesful!', style: TextStyle(fontSize: 34.0)),
              SizedBox(height: 12.0),
              Text(
                textAlign: TextAlign.center,
                'You have succesfully change password. Please use your new passwords when logging in.',
                style: TextStyle(fontSize: 18.0, color: Color(0xFF313131)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
