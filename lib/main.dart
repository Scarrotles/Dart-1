import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MY PROFILE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              //fontFamily: "Source Sans Pro",  // <- Looks up the specified font in pubspec.yaml
              fontWeight: FontWeight.w700, // <- uses the Bold font weight
              fontSize: 28.0),
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 175, 25, 255),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: double.infinity, height: 50),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 17, 255, 0),
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: const Color.fromARGB(255, 17, 255, 0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: const EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 44, 118, 255),
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: const Color.fromARGB(255, 44, 118, 255),
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: const EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 220, 14, 216),
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: const Color.fromARGB(255, 220, 14, 216),
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: const EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: const Color.fromARGB(255, 255, 0, 0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: const EdgeInsets.only(bottom: 10),
            ),
            const SizedBox(width: double.infinity, height: 30),
            Flex(direction: Axis.horizontal, children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 17, 0),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 181, 9),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 174, 214, 53),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 50, 50, 255),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
