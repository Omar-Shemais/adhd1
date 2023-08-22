import 'package:flutter/material.dart';
import '../../../testADHD/core/app_colors/app_colors.dart';
import '../../../testADHD/core/dimensions/dimensions.dart';
import '../../../testADHD/widgets/app_text.dart';


class QuizAnswerCard extends StatelessWidget {
  const QuizAnswerCard({
    super.key,
    required this.isSelected,
    required this.answer,
    required this.onTap,
  });

  final String answer;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 12.height,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 12.height,
        horizontal: 12.width,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Radio(
              value: true,
              groupValue: isSelected,
              activeColor: AppColors.white,
              onChanged: (_) {},
            ),
            SizedBox(width: 12.width),
            Expanded(
              child: AppText(
                title: answer,
                color: isSelected ? AppColors.white : AppColors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? AppColors.ansowr : AppColors.mainColor.withOpacity(0.2),
      ),
    );
  }
}
