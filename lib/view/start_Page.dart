import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          offset: Offset(7, 10),
                          color: Colors.black)
                    ],
                    color: Colors.blue,
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
                      height: context.dynamicHeight(0.18),
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.05),
                      width: context.dynamicWidth(0.5),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "START",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "RampartOne"),
                          )),
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
