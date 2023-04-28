import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class LevelOnePage extends StatefulWidget {
  const LevelOnePage({super.key});

  @override
  State<LevelOnePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LevelOnePage> {
  int playerPosition = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: Maze(
              player: MazeItem(
                  'https://as2.ftcdn.net/v2/jpg/02/70/75/71/1000_F_270757122_vEr3npFlTXaQTeU9cSx9TIpdZQmQ6WGr.jpg',
                  ImageType.network),
              columns: 6,
              rows: 12,
              wallThickness: 4.0,
              wallColor: Theme.of(context).primaryColor,
              finish: MazeItem(
                  'https://as2.ftcdn.net/v2/jpg/02/70/75/71/1000_F_270757122_vEr3npFlTXaQTeU9cSx9TIpdZQmQ6WGr.jpg',
                  ImageType.network),
              onFinish: () => print('Finish'),
            ),
          ),
          
        ],
      ),
    );
  }
}
