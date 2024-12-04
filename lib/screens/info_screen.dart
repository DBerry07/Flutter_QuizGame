import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/my_card.dart';
import 'package:flutter_quiz_app/constants.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(kInfoScreenTitle)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyCard(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        'This app was made by',
                        style: kQuestionTextStyle.copyWith(
                            fontWeight: FontWeight.normal),
                      ),
                      const Text('David WJ Berry', style: kAnswerButtonText),
                      Text(
                        '2024',
                        style: kQuestionTextStyle.copyWith(
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              MyCard(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        'https://github.com/DBerry07',
                        style: kQuestionTextStyle.copyWith(
                            fontWeight: FontWeight.normal, fontSize: 16),
                      ),
                      Text(
                        'https://dberry07.github.io',
                        style: kQuestionTextStyle.copyWith(
                            fontWeight: FontWeight.normal, fontSize: 16),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
