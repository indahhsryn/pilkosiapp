import 'package:flutter/material.dart';
import 'package:pilkosis/Data/paslo_satu.dart';
import 'package:pilkosis/Data/paslon2.dart';
import 'package:pilkosis/Data/paslon3.dart';
import 'package:pilkosis/Data/paslon4.dart';

class Paslon extends StatefulWidget {
  const Paslon({Key? key}) : super(key: key);

  @override
  _PaslonState createState() => _PaslonState();
}

class _PaslonState extends State<Paslon> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = const TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 10.0,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(63, 63, 63, 1));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Paslon",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              fontSize: 20,
              shadows: [
                Shadow(
                  color: Colors.greenAccent,
                  blurRadius: 2,
                )
              ]),
        ),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.people,
                color: Colors.black,
                size: 35,
              )),
        ],
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Text(
                      "Pasangan calon",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat Regular"),
                    ),
                    const Text(
                      "Ketua Osis & Wakil Ketua Osis",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat Regular"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            elevation: 4,
                            margin: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Kandidat1())),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.people_alt_sharp,
                                      color: Colors.blue,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                    ),
                                    Text(
                                      'PASLON 1',
                                      style: cardTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            elevation: 4,
                            margin: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Kandidat2())),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.people_alt_sharp,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'PASLON 2',
                                      style: cardTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            elevation: 4,
                            margin: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Kandidat3())),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.people_alt_sharp,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'PASLON 3',
                                      style: cardTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            elevation: 4,
                            // ignore: prefer_const_constructors
                            margin: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Kandidat4())),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.people_alt_sharp,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'PASLON 4',
                                      style: cardTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
