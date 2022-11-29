import 'package:flutter/material.dart';
import '../services/location.dart';
import '../utilities/constants.dart';
import '../widgets/expanded-flex-2.dart';
import '../widgets/get-local-and-weather-button.dart';
import '../widgets/loading-screen-background.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.title});
  final String title;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location location = Location();

  @override
  void initState() {
    super.initState();
    location.getPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: loadingScreenBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Welcome to $title',
                  style: TextStyle(fontSize: 26.0, color: Colors.blueGrey),
                ),
              ),
              Row(
                children: const [
                  ExpandedFlexTwo(),
                  Expanded(
                    flex: 3,
                    child: GetLocationAndWeatherButton(),
                  ),
                  ExpandedFlexTwo(),
                ],
              ),
              const SizedBox(
                height: 160.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
