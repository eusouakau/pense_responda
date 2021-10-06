import 'package:flutter/material.dart';
import 'package:pense_responda/screens/start_screen.dart';
//import 'package:pense_responda/widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                //  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      textStyle: TextStyle(
                          color:
                              Theme.of(context).primaryTextTheme.button.color),
                      padding: EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 8.0,
                      ),
                      elevation: 20,
                    ),
                    child: Text('Continuar'),
                    onPressed: () => null,
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      textStyle: TextStyle(
                          color:
                              Theme.of(context).primaryTextTheme.button.color),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 8.0,
                      ),
                      elevation: 20,
                    ),
                    child: Text('+ Iniciar partida'),
                    onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartScreen(),
                              ),
                            );
                          },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
