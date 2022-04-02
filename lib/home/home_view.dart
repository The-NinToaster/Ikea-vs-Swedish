//lib/home/home_view.dart

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:winning_streak/routes/route_generator.dart';

/// Show the high score
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ikea Vs. Swedish"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/ikeavsswedish.png')),
            ElevatedButton(
                child: Text('Start a Streak'),
                onPressed: () => Navigator.pushNamed(
                      context,
                      RouteGenerator.streakPage,
                    )),
            ElevatedButton(
                child: Text('View High Scores'),
                onPressed: () => Navigator.pushNamed(
                      context,
                      RouteGenerator.highScorePage,
                    )),
          ],
        ),
      ),
    );
  }
}
