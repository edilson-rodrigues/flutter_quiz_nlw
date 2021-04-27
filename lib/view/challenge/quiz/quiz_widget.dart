import 'package:dev_quiz/view/challenge/awnser/awnser_widget.dart';
import 'package:flutter/material.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/awnser_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AwnserModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 64,
        ),
        Text(
          widget.question.title,
          style: AppTextStyles.heading,
        ),
        SizedBox(
          height: 24,
        ),
        for (int i = 0; i < widget.question.awnsers.length; i++)
          AwnserWidget(
            awnser: awnser(i),
            disabled: indexSelected != -1,
            isSelected: indexSelected == i,
            onTap: (awnser) {
              indexSelected = i;

              setState(() {});
              Future.delayed(
                Duration(
                  milliseconds: 750,
                ),
              ).then((_) => widget.onSelected(awnser));
            },
          ),
      ],
    );
  }
}

class Question {}
