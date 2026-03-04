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

  Widget _buildStatRow(String label, String value, Color color) {
    double statValue = double.tryParse(value) ?? 0;
    double progress = statValue / 150;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Text(label, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 20, width: 1, color: Colors.grey.withOpacity(0.3),
            margin: const EdgeInsets.symmetric(horizontal: 12),
          ),
          SizedBox(
            width: 35,
            child: Text(value.padLeft(3, '0'), style: const TextStyle(color: Colors.black87)),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress > 1.0 ? 1.0 : progress,
                backgroundColor: color.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(color),
                minHeight: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildStatItem(IconData? icon, String value, String label) {
    return Column(
      children: [
        Row(
          children: [
            if (icon != null) Icon(icon, size: 20, color: Colors.black87),
            if (icon != null) const SizedBox(width: 8),
            Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ],
        ),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentPoke = widget.pokeList[currentIndex];

    return Scaffold(
      backgroundColor: currentPoke.ColorPoke,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.catching_pokemon,
                size: 250,
                color: Colors.white.withOpacity(0.1),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.58,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 60),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        decoration: BoxDecoration(
                          color: currentPoke.ColorPoke,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          currentPoke.types,
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      Text("About", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: currentPoke.ColorPoke)),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
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
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(currentPoke.info, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14)),
                      ),
                      
                      const SizedBox(height: 20),
                      Text("Base Stats", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: currentPoke.ColorPoke)),
                      const SizedBox(height: 16),
                      _buildStatRow("HP", currentPoke.hp, currentPoke.ColorPoke),
                      _buildStatRow("ATK", currentPoke.attack, currentPoke.ColorPoke),
                      _buildStatRow("DEF", currentPoke.def, currentPoke.ColorPoke),
                      _buildStatRow("SATK", currentPoke.satk, currentPoke.ColorPoke),
                      _buildStatRow("SDEF", currentPoke.sdef, currentPoke.ColorPoke),
                      _buildStatRow("SPD", currentPoke.spd, currentPoke.ColorPoke),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),

            Align(
              alignment: const Alignment(0, -0.45),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                  currentPoke.url,
                  fit: BoxFit.contain,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.broken_image, size: 80, color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.3),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentIndex > 0)
                      IconButton(
                        onPressed: () => setState(() => currentIndex--),
                        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 35),
                      )
                    else
                      const SizedBox(width: 48),
                    if (currentIndex < widget.pokeList.length - 1)
                      IconButton(
                        onPressed: () => setState(() => currentIndex++),
                        icon: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 35),
                      )
                    else
                      const SizedBox(width: 48),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  ),
                  Text(currentPoke.name, style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Text(currentPoke.number, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
