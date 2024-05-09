import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Color color;
  final double height, width, radius;
  final VoidCallback onPressed;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.height = 40,
      this.width = double.infinity,
      this.color = AppColors.greenColor,
      this.radius = 50});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
