import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 10),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/alfini.jpeg'),
            ),
            const SizedBox(height: 5),
            itemProfile('Name', 'Noor Alfini', CupertinoIcons.person),
            const SizedBox(height: 3),
            itemProfile('Npm', '2110020053', CupertinoIcons.suit_diamond),
            const SizedBox(height: 3),
            itemProfile(
                'Kelas', '5A SI reg Banjarmasin', CupertinoIcons.suit_spade),
            const SizedBox(height: 3),
            itemProfile('Phone', '087839302079', CupertinoIcons.phone),
            const SizedBox(height: 3),
            itemProfile('Address', 'Jl.Purna sakti Jalur XI No.17, Banjarmasin',
                CupertinoIcons.location),
            const SizedBox(height: 3),
            itemProfile('Email', 'nooralfini@gmail.com', CupertinoIcons.mail),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 5,
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
