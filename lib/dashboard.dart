import 'package:flutter/material.dart';
import 'profil.dart';


class dashboard extends StatelessWidget {

  // Creating static data in lists

  List catNames = [
    "Kelas",
    "Kuis",
    "Kursus Gratis",
    "Papan Peringkat",
    "Live Kursus",
    "Toko Buku",
  ];
  List<Color> catColors = [
    Color(0xFF78E667),
    Color.fromARGB(255, 38, 184, 15),
    Color.fromARGB(255, 103, 205, 230),
    Color.fromARGB(255, 33, 160, 13),
    Color.fromARGB(255, 240, 49, 65),
    Color.fromARGB(255, 245, 230, 19),
  ];
  List<Icon> catIcons = [
    Icon(Icons.video_library, color: Colors.white, size: 30),
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.assignment, color: Colors.white, size: 30),
    Icon(Icons.emoji_events, color: Colors.white, size: 30),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    Icon(Icons.store, color: Colors.white, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(children: [
              GridView.builder(
                itemCount: catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: catColors[index],
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: catIcons[index],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        catNames[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      )
                    ],
                  );
                },
              )
            ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Latest",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            ),
            _cardItem(1),
            _cardItem(2),
            _cardItem(3),
            _cardItem(4),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index !=1) {
          } else {
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profil(),
                        ));
          }
        },
        showSelectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }

_cardItem(image) {
  return Padding(padding: EdgeInsets.all(16.0),child: Row(
    children: <Widget>[
      Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/kursus.png"),
            fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0)
        ),
      ),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Live Kursus", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),),
          SizedBox(height: 10.0),
          Text(
            "15 Penonton",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ],
  ),);
}

  _top(){
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 14, 36, 238),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                  SizedBox(width: 10.0),
                  Text("Hi, Welcome", style: TextStyle(color: Colors.white),),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {},
                )
            ],
          ),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.filter_list),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding: 
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0)
            ),
          )
        ],
      ),
    );
  }
}