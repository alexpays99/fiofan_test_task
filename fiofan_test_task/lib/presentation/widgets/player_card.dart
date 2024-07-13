import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String team;
  final String coach;
  final Color backgroundColor;

  const PlayerCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.team,
    required this.coach,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.network(imageUrl, width: 100, height: 100),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(color: Colors.white, fontSize: 24)),
              Text('Combat: $team',
                  style: const TextStyle(color: Colors.white)),
              Text('Coach: $coach',
                  style: const TextStyle(color: Colors.white)),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Penalty'),
          ),
        ],
      ),
    );
  }
}
