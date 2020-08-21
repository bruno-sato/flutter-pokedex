import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PokemonListPage extends StatefulWidget {
  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.orderAlphabeticalAscending, color: Colors.black,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.tune, color: Colors.black,),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Pokédex",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Busque por Pokémons usando o nome ou o número nacional da Pokédex",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xFFEDEDED),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: GestureDetector(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(MdiIcons.magnify),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: "Qual Pokémon você procura?"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
