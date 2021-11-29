import 'package:quizzer/question.dart';

class Quiz {
  int _counter = 0;

  final List<Question> _questionList = [
    Question('An elephant\'s heart can weigh up to 30 pounds', true),
    Question('Elephants can jump', false),
    Question('Octopuses have three hearts', true),
    Question('Cows have one stomach with four different compartments', true),
    Question('9 + 11 = 21', false),
    Question('George Washington was the first president', true),
    Question('Tom Cruise is dating Whitney Houston', false),
    Question('Thanos is the son of a Celestial', true),
    Question('An RTX 3090 graphics card is easy to acquire', false),
    Question('GPU scalpers suck ):', true),
  ];

  void nextQuestion() {
    if (_counter < _questionList.length) {
      _counter++;
    }
  }

  String getQuestion() {
    return _questionList[_counter].question;
  }

  bool getAnswer() {
    return _questionList[_counter].isCorrect;
  }

  bool isFinished() {
    if (_counter == _questionList.length - 1) {
      print("Finished Quiz");
      return true;
    } else {
      print("Quiz not yet finished");
      return false;
    }
  }

  void reset() {
    _counter = 0;
  }
}
