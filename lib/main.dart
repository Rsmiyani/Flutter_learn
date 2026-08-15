
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rudra Miyani'),
          backgroundColor: Colors.blue,
        ),

        body: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 1. TEXT WIDGET
              Text(
                'Welcome to Flutter!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(height: 20),

              // 2. CONTAINER WIDGET
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'I am a Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // 3. ROW WIDGET
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                ],
              ),

              SizedBox(height: 20),

              // 4. LISTVIEW WIDGET
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text('Map'),
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_album),
                      title: Text('Album'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Phone'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // 5. ELEVATED BUTTON
              ElevatedButton(
                onPressed: () {
                  print('Button pressed!');
                },
                child: Text('Press Me'),
              ),

            ],
          ),
        ),
      ),
    ),
  );
}
