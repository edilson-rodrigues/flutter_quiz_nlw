import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: size.width * 0.1,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: size.height * 0.09,
              width: size.width * 0.2,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: .75,
                backgroundColor: AppColors.chartSecondary,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.chartPrimary,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              '75%',
              style: AppTextStyles.heading,
            ),
          ),
        ],
      ),
    );
  }
}
