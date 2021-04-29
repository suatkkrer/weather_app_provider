import 'package:flutter/material.dart';
import 'location_widget.dart';
import 'temperature_widget.dart';
import 'update_widget.dart';
import 'weather_image.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: LocationWidget()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: UpdateWidget()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: WeatherImage()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: MaxAndMinTemperature()),
            ),
          ],
        ),
      ),
    );
  }
}
