import 'package:isar/isar.dart';

@collection
class WeatherCard {
  Id id = Isar.autoIncrement;
  List<int>? weathercode;
  List<double>? temperature2M;
  List<double?>? apparentTemperature;
  List<int?>? relativehumidity2M;
  List<double?>? precipitation;
  List<double?>? rain;
  List<double?>? surfacePressure;
  List<double?>? visibility;
  List<double?>? evapotranspiration;
  List<double?>? windspeed10M;
  List<int?>? winddirection10M;
  List<double?>? windgusts10M;
  List<int?>? cloudcover;
  List<double?>? uvIndex;
  List<double?>? dewpoint2M;
  List<int?>? precipitationProbability;
  List<double?>? shortwaveRadiation;
  List<DateTime>? timeDaily;
  List<int?>? weathercodeDaily;
  List<double?>? temperature2MMax;
  List<double?>? temperature2MMin;
  List<double?>? apparentTemperatureMax;
  List<double?>? apparentTemperatureMin;
  List<String>? sunrise;
  List<String>? sunset;
  List<double?>? precipitationSum;
  List<int?>? precipitationProbabilityMax;
  List<double?>? windspeed10MMax;
  List<double?>? windgusts10MMax;
  List<double?>? uvIndexMax;
  List<double?>? rainSum;
  List<int?>? winddirection10MDominant;
  double? lat;
  double? lon;
  String? city;
  String? district;
  DateTime? timestamp;
  int? index;

  WeatherCard({
    this.temperature2M,
    this.relativehumidity2M,
    this.apparentTemperature,
    this.precipitation,
    this.rain,
    this.weathercode,
    this.surfacePressure,
    this.visibility,
    this.evapotranspiration,
    this.windspeed10M,
    this.winddirection10M,
    this.windgusts10M,
    this.cloudcover,
    this.uvIndex,
    this.dewpoint2M,
    this.precipitationProbability,
    this.shortwaveRadiation,
    this.weathercodeDaily,
    this.temperature2MMax,
    this.temperature2MMin,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
    this.sunrise,
    this.sunset,
    this.precipitationSum,
    this.precipitationProbabilityMax,
    this.windspeed10MMax,
    this.windgusts10MMax,
    this.uvIndexMax,
    this.rainSum,
    this.winddirection10MDominant,
    this.lat,
    this.lon,
    this.city,
    this.district,
    this.timestamp,
    this.index,
  });
}
