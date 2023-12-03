import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class WeatherDataApi with _$WeatherDataApi {
  const factory WeatherDataApi({
    required Daily daily,
  }) = _WeatherDataApi;

  factory WeatherDataApi.fromJson(Map<String, dynamic> json) => _$WeatherDataApiFromJson(json);
}

List<DateTime> _dateTimeFromJson(List<dynamic>? json) => json?.map((x) => DateTime.parse(x)).toList() ?? [];

@freezed
class Daily with _$Daily {
  const factory Daily({
    @JsonKey(name: 'weathercode') List<int?>? weatherCode,
    @JsonKey(name: 'temperature_2m_max') List<double?>? temperature2MMax,
    @JsonKey(name: 'temperature_2m_min') List<double?>? temperature2MMin,
    @JsonKey(name: 'apparent_temperature_max') List<double?>? apparentTemperatureMax,
    @JsonKey(name: 'apparent_temperature_min') List<double?>? apparentTemperatureMin,
    @JsonKey(name: 'precipitation_sum') List<double?>? precipitationSum,
    List<String>? sunrise,
    List<String>? sunset,
    @JsonKey(name: 'precipitation_probability_max') List<int?>? precipitationProbabilityMax,
    @JsonKey(name: 'windspeed_10m_max') List<double?>? windSpeed10MMax,
    @JsonKey(name: 'windgusts_10m_max') List<double?>? windGusts10MMax,
    @JsonKey(name: 'uv_index_max') List<double?>? uvIndexMax,
    @JsonKey(name: 'rain_sum') List<double?>? rainSum,
    @JsonKey(name: 'winddirection_10m_dominant') List<int?>? windDirection10MDominant,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}
