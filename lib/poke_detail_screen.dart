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
  Widget _buildStatItem(IconData? icon, String value, String label) {
    return Column(
      children: [
        Row(
          children: [
            if (icon != null) Icon(icon, size: 20, color: Colors.black87),if (icon != null) const SizedBox(width: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
      ],
    );
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
                child: Column(
                  children: [

                    const SizedBox(height: 60),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4), // Отступы внутри
                      decoration: BoxDecoration(
                        color: currentPoke.ColorPoke,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(widget.pokeList[currentIndex].types,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("About",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange)),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildStatItem(Icons.monitor_weight_outlined, "${currentPoke.kg} kg", "Weight"),

                          Container(width: 1, height: 40, color: Colors.grey.withOpacity(0.2)),

                          _buildStatItem(Icons.height, "${currentPoke.height} m", "Height"),

                          Container(width: 1, height: 40, color: Colors.grey.withOpacity(0.2)),

                          _buildStatItem(null, currentPoke.moves, "Moves"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(widget.pokeList[currentIndex].info,
                      style: TextStyle(color: Colors.black, fontSize: 14),),
                    ),
                    const SizedBox(height: 20),
                    Text("Base Stats",
                    style: TextStyle(color: widget.pokeList[currentIndex].ColorPoke, fontSize: 24, fontWeight: FontWeight.bold),)
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
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    currentPoke.number,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Align(
              alignment: const Alignment(0, -0.40),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
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
                        icon: const Icon(Icons.arrow_back_ios_new,
                            color: Colors.white, size: 40),
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
                        icon: const Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 40),
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
