import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MyApp Flutter',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: MyContent(),
      ),
    );
  }
}

class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Text(
                  'Konten Pertama',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Ini adalah konten yang diletakkan di atas halaman.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Text(
                  'Konten Kedua',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Ini adalah konten yang diletakkan di tengah halaman.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Text(
                  'Konten Ketiga',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Ini adalah konten yang diletakkan di bawah halaman.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
