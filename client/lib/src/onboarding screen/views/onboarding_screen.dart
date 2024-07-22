import 'package:fashionext/src/onboarding%20screen/controllers/onboard_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("OnBoarding Screen"),
          Text((context.watch<OnBoardNotifier>().selectedPage).toString()),
          TextButton(
            onPressed: () => context.read<OnBoardNotifier>().changePage = 15,
            child: const Text("Change Page"),
          ),
        ],
      ),
    );
  }
}
