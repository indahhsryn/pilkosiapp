// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Respon extends StatelessWidget {
  const Respon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your FeedBack'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Thank for your feedback! ',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'NeoSans'),
        ),
      ),
    );
  }
}
