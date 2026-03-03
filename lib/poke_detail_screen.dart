import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_flutter/poke_model.dart';

class PokeDetailScreen extends StatefulWidget {
  final List<PokeModel> pokeList;
  final int index;

  const PokeDetailScreen({super.key, required this.pokeList, required this.index});

  @override
  State<PokeDetailScreen> createState() => _PokeDetailScreenState();
}

class _PokeDetailScreenState extends State<PokeDetailScreen> {

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {

    final currentPoke = widget.pokeList[currentIndex];

    return Scaffold(
      backgroundColor: currentPoke.ColorPoke,
      body: SafeArea(
        child: Stack(
          children: [

            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.catching_pokemon,
                size: 300,
                color: Colors.white.withOpacity(0.1),
              ),
            ),


            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 60),
                    Text("About", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange)),
                  ],
                ),
              ),
            ),

            Align(
              alignment: const Alignment(0, -0.65),
              child: Image.network(
                currentPoke.url,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    currentPoke.name,
                    style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    currentPoke.number,
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentIndex > 0)
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex--;
                          });
                        },
                        icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
                      )
                    else
                      const SizedBox(width: 48),
                    if (currentIndex < widget.pokeList.length - 1)
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex++;
                          });
                        },
                        icon: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 30),
                      )
                    else
                      const SizedBox(width: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
