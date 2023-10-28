import 'package:flutter/material.dart';
import 'package:projectuts/main.dart';
import 'dashboard.dart';

class profil extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
          buildAbout(),
          SizedBox(height: 90),
          Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 130),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Text("Log Out",
                  style: TextStyle(fontSize: 15),))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index !=1) {
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => dashboard(),
                        ));
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
        selectedItemColor: Colors.grey,
        selectedFontSize: 18,
        unselectedItemColor: Color(0xFF674AEF),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
  
  Widget buildTop() {
  final bottom = profileHeight / 2;
  final top = coverHeight - profileHeight / 1;

  return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          Positioned(
            top: top,
            child: buildProfileImage(),
          ),
        ],
      );
}
}



Widget buildCoverImage() => Container(
  color: Colors.grey,
  child: Image.asset("assets/images/back.jpg",
  width: double.infinity),
);

Widget buildProfileImage() => CircleAvatar(
  radius: 75,
  backgroundColor: Colors.grey.shade800,
  backgroundImage: AssetImage("assets/images/prof.jpg"
  ),
);

Widget buildContent() => Column(
  children: [
    const SizedBox(height: 8),
    Text(
      'Novan Maulana',
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    ),
    Text(
      'Universitas PGRI Semarang',
      style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.7)),
    ),
    Text(
      '085602470947',
      style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.7)),
    ),
    

    const SizedBox(height: 10),
    Divider(),
  ],
);

Widget buildAbout() => Column(
  children: [
    const SizedBox(height: 8),
    Text(
      'About',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 16),
    Text(
      'Saya adalah mahasiswa Upgris semester 5 prodi Informatika kelas 5B dengan NPM 21670087. Lahir 4 November 2003 di Demak dan sekarang tinggal di Demak lebih tepatnya di Desa Buko dengan hobi mancing.',
      style: TextStyle(fontSize: 18, color: Colors.black),
      textAlign: TextAlign.center,
    ),
  ],
);


