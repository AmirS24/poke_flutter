import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_flutter/poke_model.dart';

class PokeDetailScreen extends StatefulWidget {
  final PokeModel model;
  const PokeDetailScreen({super.key, required this.model});

  @override
  State<PokeDetailScreen> createState() => _PokeDetailScreenState();
}

class _PokeDetailScreenState extends State<PokeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: widget.model.ColorPoke,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.catching_pokemon, size: 300, color: Colors.white.withValues(
                alpha: 0.1
            ),
            ),
          ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(8),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            height: MediaQuery.of(context).size.height * 0.6,
          ),
        ),
         
          Align(
            alignment: Alignment(0, -0.7),
            child: Image.network(widget.model.url,
            height: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                IconButton(onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
                ),

                const SizedBox(width: 8),

                Text(widget.model.name,
                style: TextStyle(color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold)
                ),
                const Spacer(),
                Text(widget.model.number,
                style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)
                )
              ],
            ),
          ),
      ],),

    ));
  }
}
