import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/awnser_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;

    await Future.delayed(
      Duration(seconds: 2),
    );

    user = UserModel(
      name: 'Edilson DEV',
      photoUrl: AppImages.avatar,
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    await Future.delayed(
      Duration(seconds: 2),
    );

    quizzes = [
      QuizModel(
        imagem: AppImages.blocks,
        questionAnswered: 1,
        title: 'NLW 5 FLutter 2021',
        level: Level.facil,
        questions: [
          QuestionModel(
            title: 'Está curtindo o Flutter',
            awnsers: [
              AwnserModel(
                title: 'Estou curtindo',
              ),
              AwnserModel(
                title: 'Amando o FLutter',
              ),
              AwnserModel(
                title: 'Muito top',
              ),
              AwnserModel(
                title: 'Show de bola!',
                isRight: true,
              ),
            ],
          ),
          QuestionModel(
            title: 'Está curtindo o Flutter',
            awnsers: [
              AwnserModel(
                title: 'Estou curtindo',
              ),
              AwnserModel(
                title: 'Amando o FLutter',
              ),
              AwnserModel(
                title: 'Muito top',
              ),
              AwnserModel(
                title: 'Show de bola!',
                isRight: true,
              ),
            ],
          ),
        ],
      ),
    ];

    state = HomeState.success;
  }
}
