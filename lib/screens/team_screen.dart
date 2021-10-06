import 'package:flutter/material.dart';
import 'package:pense_responda/widgets/team_card.dart';

class TeamScreen extends StatefulWidget {
 // const TeamScreen({ Key? key }) : super(key: key);

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
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
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 70,
                      ),
                      child: Text(
                        'Formar equipe',
                        style: TextStyle(
                          color:
                              Theme.of(context).cardColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    TeamCard(),
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