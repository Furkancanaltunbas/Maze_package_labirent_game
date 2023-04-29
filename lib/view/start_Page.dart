import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:labirent_game/core/constants/widgets/button_widgets/container_button.dart';
import 'package:labirent_game/view/level_one_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 43, 78),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: context.dynamicHeight(0.8),
                width: context.dynamicWidth(0.8),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7.0,
                          offset: Offset(5, 7),
                          color: Colors.white)
                    ],
                    color: Color.fromARGB(255, 25, 125, 232),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: [
                    SizedBox(
                      height: context.dynamicHeight(0.03),
                    ),
                    Text(
                      "MAZE GAME",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "RampartOne"),
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.06),
                    ),
                    Image.asset("assets/images/maze.png"),
                    SizedBox(
                      height: context.dynamicHeight(0.13),
                    ),
                    ContainerButton(
                      text: "Start",
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LevelOnePage()));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
