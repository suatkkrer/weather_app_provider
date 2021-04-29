import 'package:flutter/material.dart';
import 'location_widget.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: Center(
        child: ListView(
          children: [
            LocationWidget(),
          ],
        ),
      ),
    );
  }
}
