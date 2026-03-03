import 'dart:ui';

import 'package:flutter/material.dart';

class PokeModel {
  final String name;
  final String number;
  final String url;
  final Color ColorPoke;

  PokeModel({required this.name, required this.number, required this.url, required this.ColorPoke, required this.kg,});
}

List<PokeModel> getListPokemon(){
  final bulbasaurUrl =
      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/48f36803-a892-45fb-bdae-8dd3d50abb93/dacanl0-6e602889-cbf4-492f-bcb5-5e086069586e.gif/v1/fill/w_475,h_435,q_85,strp/_01_bulbasaur_gif_by_sakuramedia_dacanl0-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NDM1IiwicGF0aCI6IlwvZlwvNDhmMzY4MDMtYTg5Mi00NWZiLWJkYWUtOGRkM2Q1MGFiYjkzXC9kYWNhbmwwLTZlNjAyODg5LWNiZjQtNDkyZi1iY2I1LTVlMDg2MDY5NTg2ZS5naWYiLCJ3aWR0aCI6Ijw9NDc1In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.KsoLTcJVEsSZuM8Llpj5tOo4ZXmUheb5XXEdKzqP8TU";
  final charmanderUrl = "https://th.bing.com/th/id/OIP.kLoJPuLqpWvsT9eRcY2tjAHaHa?w=207&h=207&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3";

  final squirtleUrl = "https://tse2.mm.bing.net/th/id/OIP.HLXppHGLjVFgrFP5qSZ9PwHaHa?rs=1&pid=ImgDetMain&o=7&rm=3";

  final butterfreeUrl = "https://th.bing.com/th/id/OIP.PW8f9wGB2rKl-vpoCKH2FAHaHu?w=162&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3";

  final pikachuUrl = "https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/02/captain-pikachu.jpeg";

  final gastlyUrl = "https://i.pinimg.com/originals/f4/0d/89/f40d89bc08ab45c8fad38023ed0926b6.jpg";

  final dittoUrl = "https://tse2.mm.bing.net/th/id/OIP.xCo33jFicpPMee8A80__pQHaHa?rs=1&pid=ImgDetMain&o=7&rm=3";

  final mewUrl = "https://th.bing.com/th/id/OIP.KQTrixRY5Ykxi8wKrt1T9AHaHP?w=189&h=185&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3";

  final aronUrl = "https://tse4.mm.bing.net/th/id/OIP.RiiPJumQuBn2aHbczCAy_QHaIj?rs=1&pid=ImgDetMain&o=7&rm=3";

  List<PokeModel> pokeList = [
    PokeModel(name: "bulbasaur", number: "#001", url: bulbasaurUrl, ColorPoke: Colors.green, kg: 6.9),
    PokeModel(name: "Charmander", number: "#004", url: charmanderUrl, ColorPoke: Colors.orange, kg: 8.5 ),
    PokeModel(name: "Squirtle", number: "#007", url: squirtleUrl, ColorPoke: Colors.blue, kg: 9.0),
    PokeModel(name: "Butterfree", number: "#012", url: butterfreeUrl, ColorPoke: Colors.lightGreenAccent, kg: 5.2),
    PokeModel(name: "Pikachu", number: "#025", url: pikachuUrl, ColorPoke: Colors.yellowAccent, kg: 6.0),
    PokeModel(name: "Gastly", number: "#092", url: gastlyUrl, ColorPoke: Colors.deepPurple, kg: 0.1),
    PokeModel(name: "Ditto", number: "#132", url: dittoUrl, ColorPoke: const Color(0xFFAAA67F), kg: 4.0),
    PokeModel(name: "Mew", number: "#152", url: mewUrl, ColorPoke: const Color(0xFFFB5584), kg: 4.0),
    PokeModel(name: "Aron", number: "#304", url: aronUrl, ColorPoke: const Color(0xFFB7B9D0), kg: 60.0),

  ];
  return pokeList;
}