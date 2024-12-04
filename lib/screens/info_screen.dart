import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/my_card.dart';
import 'package:flutter_quiz_app/constants.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('App Info')),
        body: Center(
          child: SizedBox(
            height: 200,
            width: 400,
            child: MyCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'This app was made by',
                    style: kQuestionTextStyle.copyWith(fontWeight: FontWeight.normal),
                  ),
                  const Text('David WJ Berry', style: kAnswerButtonText),
                  Text(
                    '2024',
                    style: kQuestionTextStyle.copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
