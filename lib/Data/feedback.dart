// ignore_for_file: use_key_in_widget_constructors, must_call_super, prefer_typing_uninitialized_variables, unused_local_variable
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pilkosis/Data/responFeedback.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  var name, kelas, feedback;
  create() async {
    DocumentReference documentReference = await FirebaseFirestore.instance
        .collection("FeedBack")
        .add({"Name": name, "Class": kelas, "FeedBack": feedback});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Give FeedBack About The App",
                        style: TextStyle(
                          color: Color(0xFF363f93),
                          fontSize: 35,
                          fontFamily: "Montserrat Regular",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    onChanged: (v) {
                      setState(() {
                        name = v;
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.people),
                        hintText: 'Enter your name'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    onChanged: (v) {
                      setState(() {
                        kelas = v;
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: 'Class',
                        prefixIcon: Icon(Icons.class_),
                        hintText: 'Enter your class'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    onChanged: (v) {
                      setState(() {
                        feedback = v;
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: 'FeedBack',
                        prefixIcon: Icon(Icons.feedback_sharp),
                        hintText: 'Enter your feedback'),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xFF363f93),
                      borderRadius: BorderRadius.circular(20)),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      create();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const Respon()));
                    },
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
