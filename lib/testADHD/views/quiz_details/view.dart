import 'package:flutter/material.dart';
import '../../../testADHD/core/app_colors/app_colors.dart';
import '../../../testADHD/core/dimensions/dimensions.dart';
import '../../../testADHD/widgets/app_button.dart';
import '../../../testADHD/widgets/app_text.dart';

import '../../widgets/app/quiz_answer_card.dart';
import '../../widgets/app_app_bar.dart';
import 'controller.dart';

class QuizDetailsView extends StatefulWidget {
  const QuizDetailsView({super.key});

  @override
  State<QuizDetailsView> createState() => _QuizDetailsViewState();
}

class _QuizDetailsViewState extends State<QuizDetailsView> {

  QuizDetailsController controller = QuizDetailsController();

  @override
  void initState() {
    controller.initQuiz();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 24.height),
              AppText(
                title: 'Question ${controller.currentQuestionIndex + 1}/${controller.questions.length}',
                fontSize: 18,
                color: AppColors.ansowr,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(height: 24.height),
              AppText(
                title: controller.currentQuestion.question,
                fontSize: 22,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 52.height),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.currentQuestion.answers.length,
                  itemBuilder: (context, index) {
                    final answer = controller.currentQuestion.answers[index];
                    return QuizAnswerCard(
                      isSelected: answer == controller.selectedAnswer,
                      answer: answer,
                      onTap: () {
                        controller.selectAnswer(answer);
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 12.height),
              if (controller.selectedAnswer != null)
                AppButton(
                  title: controller.currentQuestionIndex == controller.questions.length - 1 ? 'Finish' : 'Next',
                  onTap: () {
                    controller.nextQuestion(context);
                    setState(() {});
                  },
                ),
              SizedBox(height: 12.height),
            ],
          ),
        ),
      ),
    );
  }
}
