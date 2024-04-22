import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.indigo),
        primaryColor: Colors.indigo,
        secondaryHeaderColor: Colors.grey,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/images/batmen.png'),
                  fit: BoxFit.cover, // You can adjust the fit if needed
                ),
              ),
            ),
            const Text(
              'Batman',
              style: TextStyle(
                  fontFamily: 'Pacifico', color: Colors.white, fontSize: 30),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                  fontFamily: 'SanSerif', color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 20.0,
              width: 150,
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Icon(
                      color: Colors.indigo,
                      Icons.phone,
                    ),
                    title: Text(
                      '+923110064957',
                      style: TextStyle(
                          fontFamily: 'SanSerif',
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Icon(
                      color: Colors.indigo,
                      Icons.mail,
                    ),
                    title: Text(
                      'gulfarazahmed58@gmail.com',
                      style: TextStyle(
                          fontFamily: 'SanSerif',
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
