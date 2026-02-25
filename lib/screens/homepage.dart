import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Row(
            children: [
              Image.asset('images/logo.png', height: 27),
              SizedBox(width: 8),
              Text(
                'Kwik',
                style: TextStyle(
                  fontFamily: 'sfpro',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_sharp)),
          ],
          backgroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            indicatorWeight: 3,
            labelStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'sfpro',
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: 'Feed'),
              Tab(text: 'Community'),
              Tab(text: 'Friend'),
            ],
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.normal,
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
      ),
    );
  }
}
