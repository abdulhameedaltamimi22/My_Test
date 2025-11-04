import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CvPage(),
    );
  }
}

class CvPage extends StatelessWidget {
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        title: const Text(
          'My CV',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF263238),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(2, 2),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('assets/me.jpg'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Abdulhameed Altamimi',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 20),

                // Contact Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Email:', style: TextStyle(color: Colors.white)),
                    Text('yha506n@gmail.com',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Phone:', style: TextStyle(color: Colors.white)),
                    Text('774172011', style: TextStyle(color: Colors.white)),
                  ],
                ),
                const Divider(color: Colors.white54, height: 30),

                // Skills
                const Text(
                  'Skills',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- Teamwork & Communication',
                          style: TextStyle(color: Colors.white)),
                      Text('- Problem Solving',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),

                const Divider(color: Colors.white54, height: 30),

                // Academic Qualifications
                const Text(
                  'Academic Qualifications',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- General Secondary Education Certificate',
                          style: TextStyle(color: Colors.white)),
                      Text('- Bachelor in Information Technology (In Progress)',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),

                const Divider(color: Colors.white54, height: 30),

                // Practical Qualifications
                const Text(
                  'Practical Qualifications',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- Developed Small Mobile Applications',
                          style: TextStyle(color: Colors.white)),
                      Text('- Built Simple Web Projects',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
