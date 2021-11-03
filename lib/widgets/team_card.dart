//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:pense_responda/models/search_data.dart';
//import 'package:pense_responda/models/team_data.dart';
//import 'package:pense_responda/widgets/user_image_picker.dart';
import 'package:pense_responda/models/user_model.dart';

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
  final SearchData _searchData = SearchData();
  final Map<String, String> _name = {
    'name': '',
  };

  Future<void> search(Map<String, String> map) async {
    return await _searchData.searchUser(map['name']);
  }

  final _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(40, 40, 40, 1),
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: _controllerSearch,
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(30, 30, 30, 1),
                    filled: true,
                    hintText: 'Digite um nome para a equipe',
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(200, 200, 200, 1),

                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) => _name['name'] = _controllerSearch.text,
                ),
                SizedBox(height: 14),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(30, 30, 30, 1),
                    filled: true,
                    hintText: 'Cole a URL ou escolha uma imagem',
                    labelText: 'Imagem',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(200, 200, 200, 1),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) => null,
                ),
                SizedBox(height: 14),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(30, 30, 30, 1),
                    filled: true,
                    hintText: 'Pesquisar usuários',
                    labelText: 'Membros',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(200, 200, 200, 1),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  onChanged: (_user) => {}, //team1(_user.name),
                ),
                SizedBox(height: 150),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      left: 95,
                      right: 95,
                      top: 15,
                      bottom: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Colors.yellowAccent,
                  ),
                  child: Text(
                    'Sortear equipe',
                    style: TextStyle(
                      color: Color.fromRGBO(45, 45, 45, 1),
                    ),
                  ),
                  onPressed: () => null,
                ),
                SizedBox(height: 15),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      left: 82,
                      right: 82,
                      top: 15,
                      bottom: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Color.fromRGBO(0, 170, 255, 5),
                  ),
                  child: Text(
                    'Convidar membros',
                    style: TextStyle(
                      color: Color.fromRGBO(45, 45, 45, 1),
                    ),
                  ),
                  onPressed: () => null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
