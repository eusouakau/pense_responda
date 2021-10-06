import 'package:flutter/material.dart';
import 'package:pense_responda/screens/team_screen.dart';
//import 'package:pense_responda/utils/colors.dart';

class StartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0, bottom: 10.0),
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                textStyle: TextStyle(
                    color: Theme.of(context).primaryTextTheme.button.color),
                padding: EdgeInsets.symmetric(
                  horizontal: 55.0,
                  vertical: 8.0,
                ),
                elevation: 20,
              ),
              child: Text('Solo'),
              onPressed: () => null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            child: ElevatedButton(
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
              child: Text('Desafio 1x1'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeamScreen(),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            child: ElevatedButton(
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
              child: Text('Desafio 2x2'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeamScreen(),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: ElevatedButton(
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
              child: Text('Desafio 3x3'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeamScreen(),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            child: ElevatedButton(
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
              child: Text('Mediar partida'),
              onPressed: () => null,
            ),
          ),
        ),
      ],
    );
  }
}
