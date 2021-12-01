// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:pilkosis/Data/login.dart';

//using class steful because memiliki keadaan/ bisa berubah
class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

//mengatur waktu landing sebelum berpindah ke halaman home
class _LandingState extends State<Landing> {
  @override
  void initState() {
    //kurang lebib seperti onCreate() pada android dan java
    super.initState();
    start();
  }

  start() async {
    var duration =
        const Duration(seconds: 5); //mengatur waktu berapa lama landing
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        //pushReplacement maka activity sebelumnya tidak akan di tampilkan lagi ketika kita menekan tombol back alias di finish.
        MaterialPageRoute(builder: (_) {
          return Login();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold tampilan dasar dari aplikasi
      backgroundColor: const Color(0xFF363f93),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/smk.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              'PILKOSIS',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const Text(
              'Pemilihan Ketua Osis',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
