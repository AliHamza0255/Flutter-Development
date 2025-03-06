import 'package:flutter/material.dart';

void main() {
  runApp(BGNUApp());
}

class BGNUApp extends StatelessWidget {
  const BGNUApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BGNUHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class BGNUHomePage extends StatelessWidget {
  const BGNUHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(

            'assets/bgnu_logo2.jpeg',
            width: 40,
            height: 40,

            fit: BoxFit.contain,
          ),
        ),
        title: Row(
          children: [
            SizedBox(width: 10),
            Text(
              'Baba Guru Nanak University',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        titleSpacing: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/vc_image.jpeg'), // VC profile image
            ),
            SizedBox(height: 20),
            Text(
              'Dr. Muhammad Afzal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Dr. Muhammad Afzal is a distinguished academic leader '
                    'with extensive experience in higher education. With a commitment '
                    'to excellence and innovation, they have been guiding BGNU towards '
                    'new heights of academic achievement and social impact.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              '© 2024 BGNU - Building Knowledge, Nurturing Futures',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}