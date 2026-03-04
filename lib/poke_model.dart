import 'dart:ui';
import 'package:flutter/material.dart';

class PokeModel {
  final String name;
  final String number;
  final String url;
  final Color ColorPoke;
  final double kg;
  final double height;
  final String moves;
  final String types;
  final String info;
  final String hp;
  final String attack;
  final String def;
  final String satk;
  final String sdef;
  final String spd;

  PokeModel({
    required this.name,
    required this.number,
    required this.url,
    required this.ColorPoke,
    required this.kg,
    required this.height,
    required this.moves,
    required this.types,
    required this.info,
    required this.hp,
    required this.attack,
    required this.def,
    required this.satk,
    required this.sdef,
    required this.spd,
  });
}

List<PokeModel> getListPokemon() {
  const bulbasaurUrl = "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/48f36803-a892-45fb-bdae-8dd3d50abb93/dacanl0-6e602889-cbf4-492f-bcb5-5e086069586e.gif/v1/fill/w_475,h_435,q_85,strp/_01_bulbasaur_gif_by_sakuramedia_dacanl0-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NDM1IiwicGF0aCI6IlwvZlwvNDhmMzY4MDMtYTg5Mi00NWZiLWJkYWUtOGRkM2Q1MGFiYjkzXC9kYWNhbmwwLTZlNjAyODg5LWNiZjQtNDkyZi1iY2I1LTVlMDg2MDY5NTg2ZS5naWYiLCJ3aWR0aCI6Ijw9NDc1In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.KsoLTcJVEsSZuM8Llpj5tOo4ZXmUheb5XXEdKzqP8TU";
  const charmanderUrl = "https://th.bing.com/th/id/OIP.kLoJPuLqpWvsT9eRcY2tjAHaHa?w=207&h=207&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3";
  const squirtleUrl = "https://tse2.mm.bing.net/th/id/OIP.HLXppHGLjVFgrFP5qSZ9PwHaHa?rs=1&pid=ImgDetMain&o=7&rm=3";
  const butterfreeUrl = "https://th.bing.com/th/id/OIP.PW8f9wGB2rKl-vpoCKH2FAHaHu?w=162&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3";
  const pikachuUrl = "https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/02/captain-pikachu.jpeg";
  const gastlyUrl = "https://i.pinimg.com/originals/f4/0d/89/f40d89bc08ab45c8fad38023ed0926b6.jpg";
  const dittoUrl = "https://tse2.mm.bing.net/th/id/OIP.xCo33jFicpPMee8A80__pQHaHa?rs=1&pid=ImgDetMain&o=7&rm=3";
  const mewUrl = "https://th.bing.com/th/id/OIP.KQTrixRY5Ykxi8wKrt1T9AHaHP?w=189&h=185&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3";
  const aronUrl = "https://tse4.mm.bing.net/th/id/OIP.RiiPJumQuBn2aHbczCAy_QHaIj?rs=1&pid=ImgDetMain&o=7&rm=3";

  return [
    PokeModel(
        name: "Bulbasaur",
        number: "#001",
        url: bulbasaurUrl,
        ColorPoke: Colors.green,
        kg: 6.9,
        height: 0.7,
        moves: "Vine Whip",
        types: "Grass",
        info: "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back.",
        hp: "045", attack: "049", def: "049", satk: "065", sdef: "065", spd: "045"),
    PokeModel(
        name: "Charmander",
        number: "#004",
        url: charmanderUrl,
        ColorPoke: Colors.orange,
        kg: 8.5,
        height: 0.4,
        moves: "Scratch",
        types: "Fire",
        info: "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.",
        hp: "039", attack: "052", def: "043", satk: "060", sdef: "050", spd: "065"),
    PokeModel(
        name: "Squirtle",
        number: "#007",
        url: squirtleUrl,
        ColorPoke: Colors.blue,
        kg: 9.0,
        height: 0.5,
        moves: "Water Gun",
        types: "Water",
        info: "When it retracts its long neck into its shell, it squirts out water with vigorous force.",
        hp: "044", attack: "048", def: "065", satk: "050", sdef: "064", spd: "043"),
    PokeModel(
        name: "Butterfree",
        number: "#012",
        url: butterfreeUrl,
        ColorPoke: Colors.lightGreenAccent,
        kg: 5.2,
        height: 1.1,
        moves: "Bug Bite",
        types: "Bug",
        info: "Butterfree has a superior ability to search for delicious honey from flowers.",
        hp: "060", attack: "045", def: "050", satk: "090", sdef: "080", spd: "070"),
    PokeModel(
        name: "Pikachu",
        number: "#025",
        url: pikachuUrl,
        ColorPoke: Colors.yellowAccent,
        kg: 6.0,
        height: 0.4,
        moves: "Thunderbolt",
        types: "Electric",
        info: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft.",
        hp: "035", attack: "055", def: "040", satk: "050", sdef: "050", spd: "090"),
    PokeModel(
        name: "Gastly",
        number: "#092",
        url: gastlyUrl,
        ColorPoke: Colors.deepPurple,
        kg: 0.1,
        height: 1.3,
        moves: "Lick",
        types: "Ghost",
        info: "Born from gases, anyone would faint if engulfed by its gaseous body.",
        hp: "030", attack: "035", def: "030", satk: "100", sdef: "035", spd: "080"),
    PokeModel(
        name: "Ditto",
        number: "#132",
        url: dittoUrl,
        ColorPoke: const Color(0xFFAAA67F),
        kg: 4.0,
        height: 0.3,
        moves: "Transform",
        types: "Normal",
        info: "It can reconstitute its entire cellular structure to change into what it sees.",
        hp: "048", attack: "048", def: "048", satk: "048", sdef: "048", spd: "048"),
    PokeModel(
        name: "Mew",
        number: "#152",
        url: mewUrl,
        ColorPoke: const Color(0xFFFB5584),
        kg: 4.0,
        height: 0.4,
        moves: "Psychic",
        types: "Psychic",
        info: "When viewed through a microscope, this Pokémon’s fine hair can be seen.",
        hp: "100", attack: "100", def: "100", satk: "100", sdef: "100", spd: "100"),
    PokeModel(
        name: "Aron",
        number: "#304",
        url: aronUrl,
        ColorPoke: const Color(0xFFB7B9D0),
        kg: 60.0,
        height: 0.5,
        moves: "Bite",
        types: "Rock",
        info: "It eats iron ore to build up the steel armor that protects its body.",
        hp: "050", attack: "070", def: "100", satk: "040", sdef: "040", spd: "030"),
  ];
}
