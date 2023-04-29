import 'dart:async';
import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:kartal/kartal.dart';

class LevelOnePage extends StatefulWidget {
  const LevelOnePage({super.key});

  @override
  State<LevelOnePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LevelOnePage> {
  late Timer zamanlayici;
  int sure = 0;

    void _refresh(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LevelOnePage(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    zamanlayici = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        sure++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 43, 78),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Colors.blue,
                ),
                Spacer(
                  flex: 40,
                ),
                Text(
                  "Süre : $sure",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Spacer(
                  flex: 60,
                )
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.8),
              width: context.dynamicWidth(1.0),
              child: Maze(
                player: MazeItem(
                    'https://cdn-icons-png.flaticon.com/512/4357/4357645.png',
                    ImageType.network),
                columns: 6,
                rows: 12,
                wallThickness: 8.0,
                wallColor: Theme.of(context).primaryColor,
                finish: MazeItem(
                    'https://cdn-icons-png.flaticon.com/512/495/495535.png',
                    ImageType.network),
                onFinish: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Game Over',
                          style: TextStyle(fontSize: 30),
                        ),
                        content: Text('Tebrikler $sure saniyede tamamladınız.'),
                        actions: [
                          TextButton(
                            onPressed: () => _refresh(context),
                            child: Text(
                              'Tekrar Oyna',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                  zamanlayici.cancel();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
