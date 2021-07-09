import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var _idx = 0;
  var _mottos = [
    'To Learn, To Aim, To Achieve the Finest in Our Passion',
    'Always Try New Things, Overcome All Problems',
    'Gaining Experience, Achieveing Mastery',
    'In honesty and hardwork, we strive for excellence'
  ];

  void _onPressed() {
    setState(() {
      if (_idx < 3) {
        _idx++;
      }
    });
    print(_idx);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_mottos[_idx]),
        ElevatedButton(onPressed: _onPressed, child: Text('Next Motto')),
      ],
    );
  }
}
