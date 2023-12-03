import 'dart:convert';

import 'package:bcc_wheather_app/weather/weather_now.dart';
import 'package:flutter/material.dart';
import '../api/city_response.dart';
import '../api/weather.dart';
import '../data/weather.dart';
import 'package:http/http.dart' as http;
import 'package:timezone/timezone.dart' as tz;

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)?.settings.arguments as City;
    return Scaffold(
        appBar: AppBar(title: Text("Todays weather of ${todo.title}")),
        body: FutureBuilder<WeatherCard>(
            future: fetchWeatherCard(todo.title),
            builder:
                (BuildContext context, AsyncSnapshot<WeatherCard> snapshot) {
              final mainWeather = snapshot.data;
              if (mainWeather == null) {
                return const SizedBox.shrink();
              }
              final dayOfNow = getDay(mainWeather.timeDaily);
              final sunrise = mainWeather.sunrise?[dayOfNow];
              final sunset = mainWeather.sunset?[dayOfNow];
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    WeatherNow(
                      time: sunrise!,
                      weather: mainWeather.weathercodeDaily!.first!,
                      degree: mainWeather.apparentTemperatureMax!.first!,
                      timeDay: sunrise,
                      timeNight: sunset!,
                    )
                  ]);
            }));
  }

  Future<WeatherCard> fetchWeatherCard(String city) async {
    final url =
        'https://geocoding-api.open-meteo.com/v1/search?name=$city&count=1&language=en&format=json';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        CityApi cityData = CityApi.fromJson(json.decode(response.body));
        final lat = cityData.results.first.latitude;
        final lon = cityData.results.first.longitude;
        return getWeatherCard(lat, lon, city);
      } else {
        throw Exception('Failed to load suggestions');
      }
    } on Exception catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<WeatherCard> getWeatherCard(
      double? lat, double? lon, String city) async {
    String url =
        'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&daily=weathercode,temperature_2m_max,temperature_2m_min,apparent_temperature_max,apparent_temperature_min,sunrise,sunset,rain_sum';
    try {
      final response = await http.get(Uri.parse(url));
      WeatherDataApi weatherData =
          WeatherDataApi.fromJson(json.decode(response.body));

      return WeatherCard(
        weathercodeDaily: weatherData.daily.weatherCode,
        temperature2MMax: weatherData.daily.temperature2MMax,
        temperature2MMin: weatherData.daily.temperature2MMin,
        apparentTemperatureMax: weatherData.daily.apparentTemperatureMax,
        apparentTemperatureMin: weatherData.daily.apparentTemperatureMin,
        sunrise: weatherData.daily.sunrise,
        sunset: weatherData.daily.sunset,
        precipitationSum: weatherData.daily.precipitationSum,
        precipitationProbabilityMax:
            weatherData.daily.precipitationProbabilityMax,
        windspeed10MMax: weatherData.daily.windSpeed10MMax,
        windgusts10MMax: weatherData.daily.windGusts10MMax,
        uvIndexMax: weatherData.daily.uvIndexMax,
        rainSum: weatherData.daily.rainSum,
        winddirection10MDominant: weatherData.daily.windDirection10MDominant,
        lat: lat,
        lon: lon,
        city: city,
        timestamp: DateTime.now(),
      );
    } on Exception catch (e) {
      rethrow;
    }
  }

  int getDay(List<DateTime>? time) {
    int getDay = 0;
    if (time == null) return 0;
    for (var i = 0; i < time.length; i++) {
      if (tz.TZDateTime.now(tz.getLocation('GMT+')).day == time[i].day) {
        getDay = i;
      }
    }
    return getDay;
  }
}

class City {
  final String title;

  const City(this.title);
}