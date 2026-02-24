import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 12),
        title: Text(
          'Kwik',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'sfpro',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_rounded)),
        ],
      ),
      body: Padding(padding: EdgeInsets.all(16.0)),
    );
  }
}
