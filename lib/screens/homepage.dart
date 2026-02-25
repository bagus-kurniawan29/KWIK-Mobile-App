import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_rounded)),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.normal
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Feed',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "sfpro",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Comunity',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "sfpro",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Friend',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "sfpro",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  ...List.generate(
                    20,
                    (index) => Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 100,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Center(child: Text("Postingan Ke-$index")),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 12,
            child: FloatingActionButton(
              onPressed: () {},
              shape: CircleBorder(),
              backgroundColor: Colors.black,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
