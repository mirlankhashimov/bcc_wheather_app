part of 'weather.dart';

_$WeatherDataApiImpl _$$WeatherDataApiImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDataApiImpl(
      daily: Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherDataApiImplToJson(
        _$WeatherDataApiImpl instance) =>
    <String, dynamic>{
      'daily': instance.daily,
    };

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      weatherCode: (json['weathercode'] as List<dynamic>?)
          ?.map((e) => e as int?)
          .toList(),
      temperature2MMax: (json['temperature_2m_max'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      temperature2MMin: (json['temperature_2m_min'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      apparentTemperatureMax:
          (json['apparent_temperature_max'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toDouble())
              .toList(),
      apparentTemperatureMin:
          (json['apparent_temperature_min'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toDouble())
              .toList(),
      precipitationSum: (json['precipitation_sum'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      sunrise:
          (json['sunrise'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sunset:
          (json['sunset'] as List<dynamic>?)?.map((e) => e as String).toList(),
      precipitationProbabilityMax:
          (json['precipitation_probability_max'] as List<dynamic>?)
              ?.map((e) => e as int?)
              .toList(),
      windSpeed10MMax: (json['windspeed_10m_max'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      windGusts10MMax: (json['windgusts_10m_max'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      uvIndexMax: (json['uv_index_max'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      rainSum: (json['rain_sum'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      windDirection10MDominant:
          (json['winddirection_10m_dominant'] as List<dynamic>?)
              ?.map((e) => e as int?)
              .toList(),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'weathercode': instance.weatherCode,
      'temperature_2m_max': instance.temperature2MMax,
      'temperature_2m_min': instance.temperature2MMin,
      'apparent_temperature_max': instance.apparentTemperatureMax,
      'apparent_temperature_min': instance.apparentTemperatureMin,
      'precipitation_sum': instance.precipitationSum,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
      'windspeed_10m_max': instance.windSpeed10MMax,
      'windgusts_10m_max': instance.windGusts10MMax,
      'uv_index_max': instance.uvIndexMax,
      'rain_sum': instance.rainSum,
      'winddirection_10m_dominant': instance.windDirection10MDominant,
    };
