import 'package:flutter/material.dart';
import 'package:flutter_training/views/pages/carousel.dart';
import 'package:flutter_training/views/pages/home.dart';
import 'package:flutter_training/views/pages/list.dart';
import 'package:flutter_training/views/pages/login.dart';
import 'package:flutter_training/views/pages/navigation.dart';
import 'package:flutter_training/views/pages/tabs.dart';
import 'package:flutter_training/utils/globals.dart' as globals;

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globals.darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return ['Toggle Theme'].map((e) {
                return PopupMenuItem(
                    child: TextButton(
                  child: Text('Toggle Theme'),
                  onPressed: () {
                    setState(() {
                      globals.darkThemeEnabled = !globals.darkThemeEnabled;
                    });
                  },
                ));
              }).toList();
            })
          ],
        ),
      ),
    );
  }
}
