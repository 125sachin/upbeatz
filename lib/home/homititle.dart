import 'package:flutter/material.dart';

class title extends StatelessWidget {
  String x;
  title(this.x, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
        child: Text(
          x,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Gotham'),
        ),
      ),
    );
  }
}
