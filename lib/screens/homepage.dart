import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
  
class _HomepageState extends State<Homepage> {
  int i = 0;
  bool isLike = false;
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
            SizedBox.expand(
            child: Stack(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage('images/pp.png'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontFamily: 'sfprobold',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '@johndoe',
                              style: TextStyle(
                                fontFamily: 'sfpro',
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text('Follow'),
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Text('''"Sejauh mata memandang, hanya ada hamparan hijau dan ketenangan. Di antara lekuk jalan dan megahnya gunung, tersimpan cerita yang tak lekang oleh waktu. 🌾⛰️
Inilah definisi nyata dari sebuah 'Tanah Legenda'. Tempat di mana waktu seolah berhenti sejenak."
#TanahLegenda #IndonesianScenery #ExploreNature #Ketenangan #LandscapePhotography #VibesPedesaan''',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        height: 1.5,
                        fontFamily: 'sfpro'
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/placeholder.png'),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                          onPressed: () {
                            setState(() {
                              isLike = !isLike;
                              if (isLike){
                                i++;
                              } else {
                                i--;
                              }
                            });
                          },
                          icon: FaIcon(isLike ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart ,color: isLike? Colors.red : Colors.grey, ),
                        ),
                        Text('$i K', style: TextStyle(fontFamily: 'sfpro'),),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.comment),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.paperPlane),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.ellipsis),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    )
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
        ]))],
        ),
      ),
    );
  }
}
