import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Form',
          textAlign: TextAlign.center
          ),
          backgroundColor: Color.fromARGB(255, 8, 109, 224),
        ),
        backgroundColor: Color.fromARGB(255, 140, 223, 209),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Text("RUANG DOSEN",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 1, 97, 68)),
              ),
              SizedBox(height: 20,),
              Text("Selamat datang di Ruang Dosen, Silahkan login dengan memasukkan Email dan password dengan benar",
              style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 1, 97, 68)),
              textAlign: TextAlign.center,
              ),
              Image.asset(
                "assets/images/avatar.png",
                height: 200,
                width: 200,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => dashboard(),
                        ));
                  },
                  child: Text("Log In",
                  style: TextStyle(fontSize: 15),))),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 1, 97, 68) ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
            ],
          ),
        ));
  }
}