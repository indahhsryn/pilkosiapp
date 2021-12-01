// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pilkosis/Data/feedback.dart';

class Response extends StatelessWidget {
  const Response({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 100,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xffF18265),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => FeedBack()));
        },
        child: const Text(
          'Thank You, and give this app feedback',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
    );
  }
}
