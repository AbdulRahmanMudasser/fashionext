import 'package:fashionext/src/onboarding%20screen/controllers/onboard_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OnBoardNotifier>(
        builder: (context, notifier, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("OnBoarding Screen"),
              Text((notifier.selectedPage).toString()),
              TextButton(
                onPressed: () => notifier.changePage = 17,
                child: const Text("Change Page"),
              ),
            ],
          );
        },
      ),
    );
  }
}
