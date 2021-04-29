import 'package:flutter/material.dart';
import 'package:weather_app/blocs/weather/weather_state.dart';
import 'package:weather_app/blocs/weather/weather_event.dart';


@immutable
abstract class WeatherEvent {}

class FetchWeatherEvent extends WeatherEvent{
  final String cityName;

  FetchWeatherEvent({@required this.cityName});
}
