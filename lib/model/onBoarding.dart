 import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboardingData {
  final String title;
  final String subtitle;
  final LottieBuilder image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  onboardingData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.background,
  });
}

class onboarding extends StatelessWidget {
  const onboarding({
    required this.data,
    Key? key,
  }) : super(key: key);

  final onboardingData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              Flexible(
                flex: 20,
                child: data.image,
              ),
              const Spacer(flex: 1),
              Text(
                data.title.toUpperCase(),
                style: TextStyle(
                  color: data.titleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                maxLines: 1,
              ),
              const Spacer(flex: 1),
              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
                maxLines: 5,
              ),
              const Spacer(flex: 10),
            ],
          ),
        ),
      ],
    );
  }
}