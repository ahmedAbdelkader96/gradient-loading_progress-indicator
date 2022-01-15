import 'package:flutter/material.dart';
import 'package:gradient_progress_indicator/gradient_progress_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        backgroundColor: Colors.amber[500],
        body: GradientProgressIndicator(
          curveType: Curves.linear,
          //backgroundColor: Colors.pinkAccent,
          radius: 120,
          duration: 4,
          strokeWidth: 12,
          gradientStops: const [
            0.0,
            0.5,
          ],
          gradientColors: const [
            Colors.white,
            Colors.grey,
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Progress Indicator',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              // Text(
              //   'Another text',
              //   style: TextStyle(color: Colors.black, fontSize: 18),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
