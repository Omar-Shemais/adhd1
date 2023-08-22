import 'dart:io';

import 'package:flutter/material.dart';
import '../../../testADHD/core/app_colors/app_colors.dart';
import '../../../testADHD/core/route_utils/route_utils.dart';
import '../../../testADHD/views/quiz_details/view.dart';
import '../../../testADHD/widgets/app_button.dart';
import '../../../testADHD/widgets/app_text.dart';

class QuizResultView extends StatefulWidget {
  const QuizResultView({
    super.key,
    required this.score,
    required this.total,
  });

  final int score;
  final int total;

  @override
  State<QuizResultView> createState() => _QuizResultViewState();
}

class _QuizResultViewState extends State<QuizResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AppText(
                  title: 'Test Finished',
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                          child: AppText(
                            title:
                                'Test result is ${widget.score}/${widget.total} please contact your psychiatrist to be sure',
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AppButton(
                  title: 'Try the test agin',
                  onTap: () {
                    RouteUtils.pushAndPopAll(
                      context: context,
                      view: QuizDetailsView(),
                    );
                  },
                  color: AppColors.ansowr,
                ),
                SizedBox(height: 12),
                AppButton(
                  title: 'Exit',
                  color: AppColors.red,
                  onTap: () => exit(0),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
