import 'package:flutter/material.dart';
import 'package:pense_responda/widgets/start_card.dart';

class StartScreen extends StatefulWidget {
//  const StartScreen({ Key? key }) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
        
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20.0),
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 70,
                        ),
                        child: Text(
                          'Iniciar partida',
                          style: TextStyle(
                            color:
                                Theme.of(context).cardColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    StartCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}