//import 'dart:html';
import 'package:flutter/material.dart';
//import 'package:pense_responda/models/team_data.dart';
//import 'package:pense_responda/widgets/user_image_picker.dart';


class TeamCard extends StatefulWidget {
  //const TeamCard({ Key? key }) : super(key: key);
  //final TeamData _teamData = TeamData();

  // void _handlePickedImage(File image) {
  //   _teamData.image = image;
  // }

  @override
  State<TeamCard> createState() => _TeamCardState();
}

class _TeamCardState extends State<TeamCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(labelText: 'Nome da equipe'),
          onChanged: (value) => null,
        ),
    //    UserImagePicker(_handlePickedImage),
        TextFormField(
          decoration: InputDecoration(labelText: 'Pesquisar membro'),
          onChanged: (value) => null,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
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
              child: Text('Sortear equipe'),
              onPressed: () => null,
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10),
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
              child: Text('Convidar membros'),
              onPressed: () => null,
            ),
          ),
        ),
      ],
    );
  }
}
