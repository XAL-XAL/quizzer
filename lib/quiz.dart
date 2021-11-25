import 'package:quizzer/question.dart';

class Quiz {
  int _counter = 0;

  final List<Question> _questionList = [
    Question(q: 'An elephant\'s heart can weigh up to 30 pounds', i: true),
    Question(q: 'Elephants can jump', i: false),
    Question(q: 'Octopuses have three hearts', i: true),
    Question(
        q: 'Cows have one stomach with four different compartments', i: true),
    Question(q: '9 + 11 = 21', i: false),
    Question(q: 'George Washington was the first president', i: true),
    Question(q: 'Tom Cruise is dating Whitney Houston', i: false),
    Question(q: 'Thanos is the son of a Celestial', i: true),
    Question(q: 'An RTX 3090 graphics card is easy to acquire', i: false),
    Question(q: 'GPU scalpers suck ):', i: true),
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
