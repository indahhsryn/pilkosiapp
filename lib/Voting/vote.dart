import 'package:flutter/material.dart';
import 'package:pilkosis/Data/response.dart';

class Vote extends StatefulWidget {
  const Vote({Key? key}) : super(key: key);

  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  int _cekRadio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voting'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: const Text('Paslon 1'),
            leading: Radio(
                value: 0,
                groupValue: _cekRadio,
                onChanged: (value) {
                  setState(() {
                    _cekRadio = int.parse(value.toString());
                  });
                }),
          ),
          ListTile(
            title: const Text('Paslon 2'),
            leading: Radio(
                value: 1,
                groupValue: _cekRadio,
                onChanged: (value) {
                  setState(() {
                    _cekRadio = int.parse(value.toString());
                  });
                }),
          ),
          ListTile(
            title: const Text('Paslon 3'),
            leading: Radio(
                value: 2,
                groupValue: _cekRadio,
                onChanged: (value) {
                  setState(() {
                    _cekRadio = int.parse(value.toString());
                  });
                }),
          ),
          ListTile(
            title: const Text('Paslon 4'),
            leading: Radio(
                value: 3,
                groupValue: _cekRadio,
                onChanged: (value) {
                  setState(() {
                    _cekRadio = int.parse(value.toString());
                  });
                }),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 190,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Response()));
              },
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
