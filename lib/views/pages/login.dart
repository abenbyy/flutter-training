import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var _ctrlUsername = TextEditingController();
  var _ctrlPass = TextEditingController();

  void _onPressed(BuildContext ctx) {
    if (_ctrlUsername.text == "" || _ctrlPass.text == "") {
      // Scaffold.of(ctx).showSnackBar(
      //     SnackBar(content: Text('Username and Password is empty!')));
      ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(content: Text('Username and Password is empty!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: 'Username'),
          controller: _ctrlUsername,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(hintText: 'Password'),
          controller: _ctrlPass,
        ),
        ElevatedButton(
            onPressed: () => _onPressed(context), child: Text('Validate!'))
      ],
    );
  }
}
