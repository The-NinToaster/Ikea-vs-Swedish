///represent a multiple-choice question
class MCQuestion {
  //instance fields
  final String questionText;
  final String correctAnswer;

  late int correctIndex;
  late int _correctIndex;
  final List<String> _choices = ["Ikea", "Common Swedish", "Both"];

  //initializing formals
  /*
  This has been changed to represent more accurately a static set of answers
  that do not change during the game. I have adapted this to fit the logic of
   the previous question.*/
  MCQuestion(this.questionText, this.correctAnswer) {
    switch (correctAnswer) {
      case "Ikea":
        _correctIndex = 0;
        break;

      case "Common Swedish":
        _correctIndex = 1;
        break;

      case "Both":
        _correctIndex = 2;
        break;

      default: //will crash the program, will fix this later.
        _correctIndex = 3;
    }
    correctIndex = _correctIndex;
  }

  MCQuestion.fromJson(Map<dynamic, dynamic> json)
      : questionText = json['word'] as String,
        correctAnswer = json['correctAnswer'] as String;

  int get choiceCount => _choices.length;

  //only comment methods when it isn't readily apparent from the method
  //name and parameter list / return type what the method does.
  //this method does not require comments. (delete this once you read it)
  String getChoice(int index) {
    if (index < 0 || index >= choiceCount) {
      throw RangeError.index(index, _choices);
    }
    return _choices[index];
  }

  @override
  String toString() {
    var buffer = StringBuffer("question: $questionText\n");
    buffer.write("choices:\n");
    for (var i = 0; i < choiceCount; i++) {
      buffer.write("${_choices[i]}\n");
    }
    buffer.write("correct Answer: $correctAnswer\n");
    buffer.write("correct index: $_correctIndex");
    return buffer.toString();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MCQuestion &&
        o._choices.length == _choices.length &&
        o._choices.every((element) => _choices.contains(element)) &&
        o.questionText == questionText &&
        o.correctIndex == correctIndex;
  }

  @override
  int get hashCode {
    int hash = Object.hashAll(_choices);
    return hash ^ questionText.hashCode ^ correctIndex.hashCode;
  }
}
