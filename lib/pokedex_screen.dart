import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_flutter/poke_detail_screen.dart';
import 'package:poke_flutter/poke_model.dart';
import 'package:poke_flutter/pokemon_card_widget.dart';

class PokeScreen extends StatefulWidget {
  const PokeScreen({super.key});

  @override
  State<PokeScreen> createState() => _PokeScreenState();
}

class _PokeScreenState extends State<PokeScreen> {

  final List<PokeModel> listPoke = getListPokemon();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.catching_pokemon, size: 40),
                  SizedBox(width: 16),
                  Text(
                    "Pokedex",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_downward, size: 40),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  itemCount: listPoke.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    final item = listPoke[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PokeDetailScreen(
                              pokeList: listPoke, 
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: PokemonCardWidget(pokeModel: item),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
