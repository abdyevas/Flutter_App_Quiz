import 'package:quiz_app/data/questions.dart';

class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  QuizQuestion shuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return QuizQuestion(question, shuffledList);
  }

  List<QuizQuestion> shuffledQuestions = questions.map((question) => question.shuffle()).toList();

}