import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            color: Colors.green,
            child: const Center(
              child: Text('best score'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            color: Colors.green,
            child: const Center(
              child: Text('calender'),
            ),
          ),
        ),
      ],
    );
  }
}
