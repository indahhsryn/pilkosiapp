import 'package:flutter/material.dart';

class Informasi extends StatefulWidget {
  const Informasi({Key? key}) : super(key: key);

  @override
  _InformasiState createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text(
                'Pemilihan Akan dimulai pada......',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'NeoSans',
                    fontWeight: FontWeight.w500),
              ),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Icon(Icons.calendar_today),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Pemilihan Akan ditutup pada......',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'NeoSans',
                    fontWeight: FontWeight.w500),
              ),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Icon(Icons.calendar_today),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Team Developer',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'NeoSans',
                    fontWeight: FontWeight.w500),
              ),
              leading:
                  SizedBox(width: 50, height: 50, child: Icon(Icons.people)),
            ),
          ),
        ],
      ),
    );
  }
}
