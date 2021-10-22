import 'package:flutter/material.dart';
import 'package:pense_responda/screens/team_screen.dart';
//import 'package:pense_responda/utils/colors.dart';

class StartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
          padding: EdgeInsets.only(top: 25, bottom: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 47.5,
                          right: 47.5,
                          top: 55,
                          bottom: 55,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: Color.fromRGBO(0, 170, 255, 5),
                      ),
                      child: Text(
                        'Solo',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 45, 45, 1),
                        ),
                      ),
                      onPressed: () => null,
                    ),
                    SizedBox(width: 25),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 31.5,
                          right: 31.5,
                          top: 43,
                          bottom: 43,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: Color.fromRGBO(100, 130, 255, 5),
                      ),
                      child: Text(
                        'Desafio \n   1x1',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 45, 45, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TeamScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                           left: 31.5,
                          right: 31.5,
                          top: 43,
                          bottom: 43,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: Color.fromRGBO(130, 220, 190, 5),
                      ),
                      child: Text(
                        'Desafio \n   2x2',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 45, 45, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TeamScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 25),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 31.5,
                          right: 31.5,
                          top: 43,
                          bottom: 43,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: Colors.yellowAccent,
                      ),
                      child: Text(
                        'Desafio \n   3x3',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 45, 45, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TeamScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 125),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    left: 60,
                    right: 60,
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
                  'Mediar Partida',
                  style: TextStyle(
                    color: Color.fromRGBO(200, 200, 200, 1),
                  ),
                ),
                onPressed: () => null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
