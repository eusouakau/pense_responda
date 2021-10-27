import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pense_responda/models/auth_data.dart';
import 'package:pense_responda/screens/home_screen.dart';
//import 'package:pense_responda/utils/colors.dart';
//import '../widgets/button_widget.dart';
//import 'package:pense_responda/utils/colors.dart';
//import 'package:teste/screens/home_screen.dart';

class AuthCard extends StatefulWidget {
  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard>
    with SingleTickerProviderStateMixin {
  GlobalKey<FormState> _form = GlobalKey();
  final AuthData _authData = AuthData();
  String userLogIn;

  final Map<String, String> _data = {
    'email': '',
    'name': '',
    'password': '',
  };

  Future<String> onLogin(Map<String, String> map) async {
    return await _authData.login(map['email'], map['password']);
  }

  Future<void> onSignup(Map<String, String> map) async {
    await _authData.signup(map['email'], map['name'], map['password']);
  }

  final _controllerName = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
          height: _authData.isSignup ? 470 : 455,
          width: 320,
          padding: EdgeInsets.all(25.0),
          child: Form(
            key: _form,
            child: Column(
              children: newMethod,
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> get newMethod {
    return <Widget>[
      if (_authData.isSignup)
        TextFormField(
          controller: _controllerName,
          decoration: InputDecoration(
            fillColor: Color.fromRGBO(30, 30, 30, 1),
            filled: true,
            labelText: 'Nome',
            labelStyle: TextStyle(
              color: Color.fromRGBO(200, 200, 200, 1),
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onChanged: (value) => _data['name'] = _controllerName.text,
        ),
      SizedBox(
        height: 25
      ),
      TextFormField(
        controller: _controllerEmail,
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(30, 30, 30, 1),
          filled: true,
          labelText: 'E-mail',
          labelStyle: TextStyle(
            color: Color.fromRGBO(200, 200, 200, 1),
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (value) => _data['email'] = _controllerEmail.text,
      ),
      SizedBox(
        height: 25
      ),
      TextFormField(
        controller: _controllerPassword,
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(30, 30, 30, 1),
          filled: true,
          labelText: 'Senha',
          labelStyle: TextStyle(
            color: Color.fromRGBO(200, 200, 200, 1),
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        obscureText: true,
        onChanged: (value) => _data['password'] = _controllerPassword.text,
      ),
      SizedBox(height: _authData.isSignup ? 80 : 130),
      _authData.isSignup
          ? TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 94,
                  right: 94,
                  top: 15,
                  bottom: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                textStyle: const TextStyle(fontSize: 14),
                backgroundColor: Colors.yellowAccent,
              ),
              child: Text(
                'CADASTRAR',
                style: TextStyle(
                  color: Color.fromRGBO(45, 45, 45, 1),
                ),
              ),
              onPressed: () => onSignup(_data),
            )
          : TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 106,
                  right: 106,
                  top: 15,
                  bottom: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                textStyle: const TextStyle(fontSize: 14),
                backgroundColor: Colors.yellowAccent,
              ),
              child: Text(
                'ENTRAR',
                style: TextStyle(
                  color: Color.fromRGBO(45, 45, 45, 1),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
      SizedBox(height: 10),
      _authData.isSignup
          ? TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 106,
                  right: 106,
                  top: 15,
                  bottom: 15,
                ),
                textStyle: const TextStyle(fontSize: 14),
                backgroundColor: Color.fromRGBO(50, 50, 50, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'ENTRAR',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 5),
                ),
              ),
              onPressed: () {
                setState(() {
                  _authData.toggleMode();
                });
              },
            )
          : TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 94,
                  right: 94,
                  top: 15,
                  bottom: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                textStyle: const TextStyle(fontSize: 14),
                backgroundColor: Color.fromRGBO(50, 50, 50, 1),
              ),
              child: Text(
                'CADASTRAR',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 5),
                ),
              ),
              onPressed: () {
                setState(() {
                  _authData.toggleMode();
                });
              },
            ),
    ];
  }
}
