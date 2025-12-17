import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.bottomImage,
  });

  final String image;
  final String title;
  final String subtitle;
  final String bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 40.0),
              child: Image.asset(image),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
            ),
            Text(subtitle, style: TextStyle(fontSize: 20.0)),

            Padding(
              padding: const EdgeInsets.only(top: 140.0),
              child: Image.asset(
                bottomImage,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
