// ignore_for_file: use_key_in_widget_constructors, must_call_super
import 'package:flutter/material.dart';
import 'package:pilkosis/Data/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            // key: _formkey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Welcome to Pilkosis",
                        style: TextStyle(
                          color: Color(0xFF363f93),
                          fontSize: 35,
                          fontFamily: "Montserrat Regular",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Sig in to Continue",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontFamily: "NeoSans",
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.grey))
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
                    controller: emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter your email'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key),
                        hintText: 'Enter your password'),
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
                    onPressed: () async {
                      // await FirebaseAuth.instance.signInWithEmailAndPassword(
                      //     email: emailController.text,
                      //     password: passwordController.text);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const Home()));
                    },
                    // child: InkWell(
                    //   onTap: () => Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (BuildContext context) => const Home(),
                    //     ),
                    //   ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
