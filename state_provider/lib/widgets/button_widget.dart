import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: FlatButton(
        color: Colors.blue[300],
        onPressed: () {
          print("Nothing happens when we press this button...");
          print("...but we want that counter to be updated!!!");
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Update counter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              letterSpacing: -2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
