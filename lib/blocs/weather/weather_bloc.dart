import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/model/Weather.dart';
import 'package:weather_app/blocs/weather/weather_state.dart';
import 'package:weather_app/blocs/weather/weather_event.dart';



class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {

    if(event is FetchWeatherEvent) {
      yield WeatherLoadingState();
      try{
        yield WeatherLoaded(weather: Weather());
      }catch(_){
        yield WeatherErrorState();
      }
    }
  }
}
