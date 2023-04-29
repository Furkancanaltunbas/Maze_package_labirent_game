import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kartal/kartal.dart';

class ContainerButton extends StatefulWidget {
  String text;
  Function() function;

  ContainerButton({Key? key, required this.function, required this.text})
      : super(key: key);

  @override
  State<ContainerButton> createState() => _ContainerButtonState();
}

class _ContainerButtonState extends State<ContainerButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.dynamicWidth(0.5),
      height: context.dynamicHeight(0.07),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 7.0, offset: Offset(5, 5), color: Colors.black)
          ],
          color: Color.fromARGB(255, 167, 217, 240),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          TextButton(
            onPressed: widget.function,
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "RampartOne"),
            ),
          )
        ],
      ),
    );
  }
}
