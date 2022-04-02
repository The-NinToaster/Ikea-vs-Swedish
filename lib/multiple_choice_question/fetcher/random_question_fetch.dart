import 'dart:async';
import 'dart:math';
import 'question_fetch.dart';
import '../mc_question.dart';
import 'package:firebase_database/firebase_database.dart';

class RandomQuestionFetch extends QuestionFetch {
  static const String databasepath1 =
      "11WIH897mRvsHsMCp5KCdsrgYN_kWX1EohA2WMYvRmx0";

  late final DatabaseReference ref = FirebaseDatabase.instance
      .reference()
      .child(databasepath1)
      .child("AnswerKey");

  @override
  Future<MCQuestion> fetch() async {
    int rng = random(1, 1492);
    Query query = ref.child(rng.toString());
    DataSnapshot event = await query.once();
    Map<dynamic, dynamic> question = event.value;
    return MCQuestion(question["word"], question["CorrectAnswer"]);
    //for debug purposes
    //return MCQuestion("foo", "Both");
  }

  int random(min, max) {
    return min + Random().nextInt(max - min);
  }
}
