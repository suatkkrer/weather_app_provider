import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/Weather.dart';


@immutable
abstract class WeatherState extends Equatable {
  @override
  List<Object> get props => throw UnimplementedError();

}

class WeatherInitial extends WeatherState {

}

class WeatherLoadingState extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  WeatherLoaded({@required this.weather});
}

class WeatherErrorState extends WeatherState {}
