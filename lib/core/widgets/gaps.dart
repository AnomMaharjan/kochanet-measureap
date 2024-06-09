import 'package:flutter/material.dart';

class SmallGap extends StatelessWidget {
  const SmallGap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class MediumGap extends StatelessWidget {
  const MediumGap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class LargeGap extends StatelessWidget {
  const LargeGap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}

class ExtraLargeGap extends StatelessWidget {
  const ExtraLargeGap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
    );
  }
}
