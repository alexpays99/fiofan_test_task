import 'package:flutter/material.dart';

import '../widgets/player_card.dart';

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('fitofan', style: TextStyle(color: Colors.white)),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Previous'),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text('Zhou Emma',
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text('Winner',
                            style: TextStyle(color: Colors.yellow)),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Show on TV'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '#5 Day 1, Dojang 1, №1 All. Poomsae',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.volume_up,
                                color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.sports_martial_arts,
                                color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.tv, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon:
                                const Icon(Icons.settings, color: Colors.white),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const PlayerCard(
                        name: 'Shirin Shirinov',
                        imageUrl: 'https://via.placeholder.com/150',
                        team: 'Poomsae Ukrainian Federation',
                        coach: 'Чебан (Cheban) B.',
                        backgroundColor: Colors.blue,
                      ),
                      const PlayerCard(
                        name: 'Shirin Shirinov',
                        imageUrl: 'https://via.placeholder.com/150',
                        team: 'Poomsae Ukrainian Federation',
                        coach: 'Чебан (Cheban) B.',
                        backgroundColor: Colors.red,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('This match is active'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Save results'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Show result on screen'),
                          ),
                          const Text(
                            'Round 1  01:29',
                            style: TextStyle(color: Colors.black, fontSize: 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Next'),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text('Zhou Emma',
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text('Winner',
                            style: TextStyle(color: Colors.yellow)),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
