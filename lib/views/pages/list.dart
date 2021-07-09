import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/models/location.dart';
import 'package:flutter_training/views/pages/listdetail.dart';

class ListPage extends StatelessWidget {
  var _ctx = null;
  var _data = [
    Location('1.jpg', 'Amazon'),
    Location('2.jpg', 'Himalaya'),
    Location('3.jpg', 'Antartica'),
    Location('4.jpg', 'Bromo'),
  ];

  void _onPressed(Location l) {
    Navigator.push(_ctx, MaterialPageRoute(builder: (builder) {
      return ListDetailPage(l.img, l.name);
    }));
  }

  Widget _buildWidget(Location l) {
    return Card(
      child: ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 44,
            minWidth: 44,
            maxHeight: 64,
            maxWidth: 64,
          ),
          child: Image.asset(
            'assets/${l.img}',
            fit: BoxFit.cover,
          ),
        ),
        title: Text(l.name),
        trailing: ElevatedButton(
          child: Text('Details'),
          onPressed: () => _onPressed(l),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return ListView(children: _data.map((e) => _buildWidget(e)).toList());
  }
}
