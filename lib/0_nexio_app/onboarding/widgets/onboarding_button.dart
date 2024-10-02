import 'package:first_flutter_app/0_nexio_app/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/0_nexio_app/constant/colors.dart';

class OnboardingButton extends StatelessWidget {
  final Color? buttonColor;
  final String buttonTitle;
  final Widget page;

  const OnboardingButton({
      super.key,
      this.buttonColor = primary,
      this.buttonTitle = "Next",
      required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return page;
        }));
      },
      label: Text(buttonTitle),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.all(0),
        backgroundColor: buttonColor, // Button background color
        fixedSize: const Size(400, 64),
        textStyle: const TextStyle(
          fontSize: 20.5,
        ),
        foregroundColor: Colors.white, // Text color
        alignment: Alignment.center,
      ),
    );
  }
}
