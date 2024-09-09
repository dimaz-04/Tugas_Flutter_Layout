import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Toba Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Medan, Sumatra Utara", style: TextStyle(color: Colors.grey[500]),
                )
              ],
          )
        ),
        Icon(
          Icons.star, color: Colors.orange,
        ),
        const Text('41')
      ],
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, "CALL"),
        _buildButtonColumn(color, Icons.near_me, "ROUTE"),
        _buildButtonColumn(color, Icons.share, "SHARE"),
      ],
    );

    Widget textSection = const Padding(padding: EdgeInsets.all(32),
      child: Text("Lake Toba, nestled in the heart of North Sumatra, Indonesia, is a captivating natural wonder that leaves visitors spellbound. This colossal volcanic caldera lake, formed by one of the largest volcanic eruptions in Earth's history, is a testament to nature's raw power and beauty. Its vast expanse of crystal-clear water mirrors the sky and the lush green mountains that encircle it, creating a serene and picturesque landscape. Samosir Island, a volcanic island in the middle of the lake, is a cultural and natural gem, offering visitors a chance to experience the rich traditions of the Batak people. With its stunning natural beauty, diverse flora and fauna, and rich cultural heritage, Lake Toba is a must-visit destination for anyone seeking an unforgettable travel experience. Whether you're exploring the island by motorbike, hiking through the surrounding forests, or simply relaxing on the shores of the lake, Lake Toba offers something for everyone.",
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const  Text("Flutter Layout"),
        ),
        body:

        ListView(
            children: [
              Image.asset("images/danautoba.jpeg", width: 600, height: 240, fit: BoxFit.cover),
              titleSection, buttonSection, textSection],
          ),
        ),
      );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}

