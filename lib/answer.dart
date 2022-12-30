import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  const Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text('Answer 1'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
      ),
    );
  }
}
