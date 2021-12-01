import 'package:flutter/material.dart';

class Kandidat3 extends StatefulWidget {
  const Kandidat3({Key? key}) : super(key: key);

  @override
  _Kandidat3State createState() => _Kandidat3State();
}

class _Kandidat3State extends State<Kandidat3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 238,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
                ),
                color: Color(0xFF363f93),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),
                    ),
                  ),
                  const Positioned(
                      top: 110,
                      child: Text(
                        "Faida",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 180.0,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.8),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 30,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.green.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/org.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: 200,
                      child: SizedBox(
                        height: 150,
                        width: 180,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Faida",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " Faizal Jefrin A.D",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Ghaida Azahrah",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ))
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 25),
                  height: 200,
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF363f93),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(88.0),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 50,
                      bottom: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Visi",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text("diisi dengan visi kandidat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 25),
                  height: 200,
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(88.0),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 50,
                      bottom: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Misi",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text("diisi dengan misi kandidat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 25),
                  height: 200,
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(88.0),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 50,
                      bottom: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Program Kerja",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text("diisi dengan program kerja",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ))
          ],
        ));
  }
}
