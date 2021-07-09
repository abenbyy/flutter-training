import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Training'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: TextButton(
                child: Text('Home'),
                onPressed: null,
              ),
            ),
            ListTile(
              trailing: Text('Items'),
            ),
            ListTile(
              title: Text('Logout'),
            ),
            Switch(value: true, onChanged: null)
          ],
        ),
      ),
    );
  }
}
