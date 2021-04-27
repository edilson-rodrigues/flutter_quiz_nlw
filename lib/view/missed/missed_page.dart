import 'package:dev_quiz/view/challenge/next_button/next_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/core.dart';

class MissedPage extends StatelessWidget {
  final String title;

  const MissedPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 68.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.error,
              ),
              Text(
                'Que pena :/',
                style: AppTextStyles.heading40,
              ),
              SizedBox(
                height: 16,
              ),
              Text.rich(
                TextSpan(
                  text: "Você não concluiu",
                  style: AppTextStyles.body,
                  children: [
                    TextSpan(
                      text: '\n$title',
                      style: AppTextStyles.bodyBold,
                    ),
                    TextSpan(
                      text: '\nTente novamente',
                      style: AppTextStyles.body,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: NextButtonWidget.white(
                      label: 'Voltar ao início',
                      onTap: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
