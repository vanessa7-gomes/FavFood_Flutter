import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/lasanha.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'text',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
