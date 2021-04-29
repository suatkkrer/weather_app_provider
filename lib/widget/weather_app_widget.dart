import 'package:flutter/material.dart';
import 'package:weather_app/widget/choose_city.dart';
import 'location_widget.dart';
import 'temperature_widget.dart';
import 'update_widget.dart';
import 'weather_image.dart';

class WeatherApp extends StatelessWidget {

  String chosenCity = "Warsaw";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                chosenCity = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChooseCity()));
              })
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: LocationWidget(chosenCity: chosenCity,)),
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
              padding: const EdgeInsets.all(12.0),
              child: Center(child: MaxAndMinTemperature()),
            ),
          ],
        ),
      ),
    );
  }
}
