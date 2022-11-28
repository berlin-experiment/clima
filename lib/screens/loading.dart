import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'home.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.title});
  final String title;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/loading-screen-bg-img.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            child: const Text('Test'),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(
                    title: title,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
