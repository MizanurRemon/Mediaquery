import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var title = "Mediaquery";
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: (() {
                  show_toast("menu");
                }),
                icon: const Icon(Icons.menu)),
            title: Text(title),
          ),
          body: const MyHomePage(),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void show_toast(var type) {
  Fluttertoast.showToast(
    msg: type,
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: screenHeight / 5,
                width: screenWidth / 4,
                color: const Color.fromARGB(255, 83, 83, 81),
                child: const Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: screenHeight / 5,
                width: screenWidth / 4,
                color: const Color.fromARGB(255, 255, 255, 0),
                child: const Center(
                  child: Text(
                    "2",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: screenHeight / 5,
                width: screenWidth / 4,
                color: const Color.fromARGB(255, 255, 255, 0),
                child: const Center(
                  child: Text(
                    "3",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: screenHeight / 5,
                width: screenWidth / 4,
                color: const Color.fromARGB(255, 201, 22, 22),
                child: const Center(
                  child: Text(
                    "4",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: screenHeight / 5,
                width: screenWidth / 4,
                color: const Color.fromARGB(255, 32, 95, 35),
                child: const Center(
                  child: Text(
                    "5",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
