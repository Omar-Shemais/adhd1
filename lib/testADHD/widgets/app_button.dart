import 'package:flutter/material.dart';
import '../../testADHD/core/app_colors/app_colors.dart';
import '../../testADHD/core/dimensions/dimensions.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.onTap,
    this.color = AppColors.ansowr,
  });

  final String title;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48.height,
        width: double.infinity,
        alignment: Alignment.center,
        child: AppText(
          title: title,
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
      ),
    );
  }
}
