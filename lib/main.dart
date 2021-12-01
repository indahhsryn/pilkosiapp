import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pilkosis/Data/Landing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'splash screen',
    // ignore: unnecessary_const
    home: Landing(),
  ));
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => User,
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Wrapper(),
//       ),
//     );
//   }
// }
