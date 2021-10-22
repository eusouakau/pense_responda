import 'package:flutter/material.dart';
import 'package:pense_responda/widgets/start_card.dart';
import 'package:pense_responda/utils/app_routes.dart';

class StartScreen extends StatefulWidget {
//  const StartScreen({ Key? key }) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.HOME_SCREEN);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Iniciar Partida',
                      style: TextStyle(
                        color: Color.fromRGBO(185, 185, 185, 1),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    child: Text(
                      'Escolha um modo de jogo:',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            StartCard(),
          ],
        ),
      ),
    );
  }
}
