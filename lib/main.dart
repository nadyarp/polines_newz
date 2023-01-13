import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({superkey});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Kelenteng Sam Poo Kong';
  final String location = "Semarang, Jawa Tengah";
  final String description =
      '''Klenteng ini merupakan bangunan bersejarah megah yang menyimpan unsur islam dalam kebudayaan Tiongkok. Kelenteng Gedung Kuno Sam Poo Kong (Hanzi: 三保洞, memiliki makna "gua Sam Poo") yaitu bekas tempat persinggahan dan pendaratan pertama seorang Laksamana Tiongkok beragama Islam yang bernama Zheng He/Cheng Ho, yang juga dikenal dengan nama Sam Poo (三保).''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/spk.jpeg',
            height: 250,
            width: 412,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15,
          ),
          Row(children: [
            Container(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  this.location,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            Container(
              width: 100,
            ),
            Icon(
              Icons.star,
              size: 30,
              color: Colors.orange,
            ),
            Text('4',
                style: TextStyle(
                  fontSize: 18,
                ))
          ]),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
