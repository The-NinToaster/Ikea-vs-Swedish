import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winning_streak/multiple_choice_question/cubit/question_cubit.dart';
import 'package:winning_streak/fun_facts.dart';

class QuestionInitialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FunFact fact = FunFacts().fetchFact();
    String factTitle = fact.title;
    String factFact = fact.fact;
    String factSource = fact.source;
    String completeFact =
        "\nDid you know?\n${factTitle}\n\n${factFact}\n\nSource: ${factSource}\n\n";

    return Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                  'You will be presented with Swedish Words. Guess if they\'re Ikea Items, Commonly Used Swedish Words, or Both. \nGood Luck, and I\'m so sorry to all Swedes witnessing this'),
              Text(completeFact),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: context.read<QuestionCubit>().getQuestion,
                child: const Text('Now You can Actually Start a Streak'),
              )
            ]));
  }
}
