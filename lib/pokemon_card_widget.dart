import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_flutter/poke_model.dart';

class PokemonCardWidget extends StatefulWidget {
  final PokeModel pokeModel;

  const PokemonCardWidget({super.key, required this.pokeModel});

  @override
  State<PokemonCardWidget> createState() => _PokemonCardWidgetState();
}

class _PokemonCardWidgetState extends State<PokemonCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.green, width: 4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.pokeModel.number,
              style: TextStyle(color: widget.pokeModel.ColorPoke),
            ),
          ),
          Center(child: Image.network(widget.pokeModel.url, height: 50),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(color: widget.pokeModel.ColorPoke),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(widget.pokeModel.name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
