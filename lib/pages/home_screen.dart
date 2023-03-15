import 'package:flutter/material.dart';
import 'package:flutter_elnur/pages/numbers_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/numbers',
                  arguments: {'name': 'Elnur'},
                );
              },
              child: Text('Numbers in english'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }
}
