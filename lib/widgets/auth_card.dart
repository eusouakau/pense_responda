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
      // color: AppColors.darkBackgroundColor,
      children: [
        Container(
          height: _authData.isSignup ? 350 : 290,
          width: 300,
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
          decoration: InputDecoration(labelText: 'Nome'),
          onChanged: (value) => _data['name'] = _controllerName.text,
        ),
      TextFormField(
        controller: _controllerEmail,
        decoration: InputDecoration(labelText: 'E-mail'),
        onChanged: (value) => _data['email'] = _controllerEmail.text,
      ),
      TextFormField(
        controller: _controllerPassword,
        decoration: InputDecoration(labelText: 'Senha'),
        obscureText: true,
        onChanged: (value) => _data['password'] = _controllerPassword.text,
      ),
      SizedBox(height: 20),
      _authData.isSignup
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                textStyle: TextStyle(
                    color: Theme.of(context).primaryTextTheme.button.color),
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 8.0,
                ),
                elevation: 20,
              ),
              child: Text('CADASTRAR'),
              onPressed: () => onSignup(_data),
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 20,
                primary: Theme.of(context).primaryColor,
                textStyle: TextStyle(
                    color: Theme.of(context).primaryTextTheme.button.color),
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 8.0,
                ),
              ),
              child: Text('ENTRAR'),
               onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
              //() async {
              //   userLogIn = await onLogin(_data);
              //   if (userLogIn.isNotEmpty) {
              //     Navigator.of(context).pushReplacement(
              //       MaterialPageRoute(
              //         builder: (context) => null,
              //       ),
              //     );
              //   } else {
              //     return Text('Email ou senha incorretos');
              //   }
            ),
      TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        child: Text(
          _authData.isLogin ? 'CADASTRE-SE' : 'ENTRAR',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
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
