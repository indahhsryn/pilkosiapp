import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pilkosis/Data/Charts.dart';
import 'package:pilkosis/Data/feedback.dart';
import 'package:pilkosis/Data/info.dart';
import 'package:pilkosis/Data/kandidat.dart';
import 'package:pilkosis/Data/panduan.dart';
import 'package:pilkosis/Voting/vote.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = const TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 10.0,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(63, 63, 63, 1));
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[SvgPicture.asset('images/icon/menu.svg')],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Home",
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
                Icons.school,
                color: Colors.black,
                size: 35,
              )),
        ],
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text(
                "INDAH SURYANINGSIH",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              accountEmail: const Text("indahsuryaningsih538@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.asset("images/org.png"),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text("Home"),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
            ),
          ],
        ),
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
                      "PILKOSIS",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat Regular"),
                    ),
                    const Text(
                      "SMK N 1 KEBUMEN",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat Regular"),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
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
                                      const Paslon(),
                                ),
                              ),
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
                                      'PASLON',
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
                                      const Vote(),
                                ),
                              ),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.add_task_rounded,
                                      color: Colors.green,
                                      size: 24.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                    ),
                                    Text(
                                      'Voting',
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
                                          const Chart())),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.analytics_rounded,
                                      color: Colors.red,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                    ),
                                    Text(
                                      'Hasil Suara',
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
                                          const Panduan())),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.book,
                                      color: Colors.blueAccent,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                    ),
                                    Text(
                                      'PANDUAN',
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
                                      const Informasi(),
                                ),
                              ),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.info,
                                      color: Colors.blue,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                    ),
                                    Text(
                                      'INFORMASI',
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
                                  builder: (BuildContext context) => FeedBack(),
                                ),
                              ),
                              splashColor: Colors.greenAccent,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(Icons.feedback,
                                        color: Colors.green),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                    ),
                                    Text(
                                      'FeedBack',
                                      style: cardTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
