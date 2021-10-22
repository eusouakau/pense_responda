import 'package:flutter/material.dart';
import 'package:pense_responda/screens/start_screen.dart';
import 'package:pense_responda/utils/app_routes.dart';
//import 'package:pense_responda/widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pense e Responda',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(0, 170, 255, 5),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.AUTH_SCREEN);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 200),
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                            left: 106,
                            right: 106,
                            top: 20,
                            bottom: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor: Color.fromRGBO(0, 170, 255, 5),
                        ),
                        child: Text(
                          'Continuar',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 5),
                          ),
                        ),
                        onPressed: () => null,
                      ),
                      SizedBox(height: 17),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                            left: 89,
                            right: 89,
                            top: 20,
                            bottom: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor: Colors.yellowAccent,
                        ),
                        child: Text(
                          '+ Iniciar partida',
                          style: TextStyle(
                            color: Color.fromRGBO(45, 45, 45, 1),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StartScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 60),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 200,
                            top: 17,
                            bottom: 17,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor: Color.fromRGBO(50, 50, 50, 1),
                        ),
                        child: Text(
                          'Ver mão',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 5),
                          ),
                        ),
                        onPressed: null,
                      ),
                      SizedBox(height: 12),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 175,
                            top: 17,
                            bottom: 17,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor: Color.fromRGBO(50, 50, 50, 1),
                        ),
                        child: Text(
                          'Ver tabuleiro',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 5),
                          ),
                        ),
                        onPressed: null,
                      ),
                      SizedBox(height: 60),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 145,
                            top: 17,
                            bottom: 17,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor: Color.fromRGBO(50, 50, 50, 1),
                        ),
                        child: Text(
                          'Ranking semanal',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 5),
                          ),
                        ),
                        onPressed: null,
                      ),
                      SizedBox(height: 12),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 130,
                            top: 17,
                            bottom: 17,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor: Color.fromRGBO(50, 50, 50, 1),
                        ),
                        child: Text(
                          'Questões avaliadas',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 5),
                          ),
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
