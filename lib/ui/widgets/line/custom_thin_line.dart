import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';

class CustomThinLine extends StatelessWidget {
  const CustomThinLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.5,
      decoration: BoxDecoration(
        color: kFontLightGray,
      ),
    );
  }
}
