// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDataApi _$WeatherDataApiFromJson(Map<String, dynamic> json) {
  return _WeatherDataApi.fromJson(json);
}

/// @nodoc
mixin _$WeatherDataApi {
  Daily get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataApiCopyWith<WeatherDataApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataApiCopyWith<$Res> {
  factory $WeatherDataApiCopyWith(
          WeatherDataApi value, $Res Function(WeatherDataApi) then) =
      _$WeatherDataApiCopyWithImpl<$Res, WeatherDataApi>;
  @useResult
  $Res call({Daily daily});

  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class _$WeatherDataApiCopyWithImpl<$Res, $Val extends WeatherDataApi>
    implements $WeatherDataApiCopyWith<$Res> {
  _$WeatherDataApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res> get daily {
    return $DailyCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherDataApiImplCopyWith<$Res>
    implements $WeatherDataApiCopyWith<$Res> {
  factory _$$WeatherDataApiImplCopyWith(_$WeatherDataApiImpl value,
          $Res Function(_$WeatherDataApiImpl) then) =
      __$$WeatherDataApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ Daily daily});

  @override
  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class __$$WeatherDataApiImplCopyWithImpl<$Res>
    extends _$WeatherDataApiCopyWithImpl<$Res, _$WeatherDataApiImpl>
    implements _$$WeatherDataApiImplCopyWith<$Res> {
  __$$WeatherDataApiImplCopyWithImpl(
      _$WeatherDataApiImpl _value, $Res Function(_$WeatherDataApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
  }) {
    return _then(_$WeatherDataApiImpl(
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDataApiImpl implements _WeatherDataApi {
  const _$WeatherDataApiImpl(
      {required this.daily});

  factory _$WeatherDataApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDataApiImplFromJson(json);

  @override
  final Daily daily;

  @override
  String toString() {
    return 'WeatherDataApi(daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataApiImpl &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDataApiImplCopyWith<_$WeatherDataApiImpl> get copyWith =>
      __$$WeatherDataApiImplCopyWithImpl<_$WeatherDataApiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDataApiImplToJson(
      this,
    );
  }
}

abstract class _WeatherDataApi implements WeatherDataApi {
  const factory _WeatherDataApi(
      {
      required final Daily daily,
      }) = _$WeatherDataApiImpl;

  factory _WeatherDataApi.fromJson(Map<String, dynamic> json) =
      _$WeatherDataApiImpl.fromJson;

  @override
  Daily get daily;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDataApiImplCopyWith<_$WeatherDataApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
  }

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  @JsonKey(name: 'weathercode')
  List<int?>? get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double?>? get temperature2MMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double?>? get temperature2MMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature_max')
  List<double?>? get apparentTemperatureMax =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature_min')
  List<double?>? get apparentTemperatureMin =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_sum')
  List<double?>? get precipitationSum => throw _privateConstructorUsedError;
  List<String>? get sunrise => throw _privateConstructorUsedError;
  List<String>? get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability_max')
  List<int?>? get precipitationProbabilityMax =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'windspeed_10m_max')
  List<double?>? get windSpeed10MMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'windgusts_10m_max')
  List<double?>? get windGusts10MMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index_max')
  List<double?>? get uvIndexMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain_sum')
  List<double?>? get rainSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'winddirection_10m_dominant')
  List<int?>? get windDirection10MDominant =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson) List<DateTime>? time,
      @JsonKey(name: 'weathercode') List<int?>? weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double?>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double?>? temperature2MMin,
      @JsonKey(name: 'apparent_temperature_max')
      List<double?>? apparentTemperatureMax,
      @JsonKey(name: 'apparent_temperature_min')
      List<double?>? apparentTemperatureMin,
      @JsonKey(name: 'precipitation_sum') List<double?>? precipitationSum,
      List<String>? sunrise,
      List<String>? sunset,
      @JsonKey(name: 'precipitation_probability_max')
      List<int?>? precipitationProbabilityMax,
      @JsonKey(name: 'windspeed_10m_max') List<double?>? windSpeed10MMax,
      @JsonKey(name: 'windgusts_10m_max') List<double?>? windGusts10MMax,
      @JsonKey(name: 'uv_index_max') List<double?>? uvIndexMax,
      @JsonKey(name: 'rain_sum') List<double?>? rainSum,
      @JsonKey(name: 'winddirection_10m_dominant')
      List<int?>? windDirection10MDominant});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
    Object? apparentTemperatureMax = freezed,
    Object? apparentTemperatureMin = freezed,
    Object? precipitationSum = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? precipitationProbabilityMax = freezed,
    Object? windSpeed10MMax = freezed,
    Object? windGusts10MMax = freezed,
    Object? uvIndexMax = freezed,
    Object? rainSum = freezed,
    Object? windDirection10MDominant = freezed,
  }) {
    return _then(_value.copyWith(
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      temperature2MMax: freezed == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      temperature2MMin: freezed == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      apparentTemperatureMax: freezed == apparentTemperatureMax
          ? _value.apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      apparentTemperatureMin: freezed == apparentTemperatureMin
          ? _value.apparentTemperatureMin
          : apparentTemperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      precipitationSum: freezed == precipitationSum
          ? _value.precipitationSum
          : precipitationSum // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      windSpeed10MMax: freezed == windSpeed10MMax
          ? _value.windSpeed10MMax
          : windSpeed10MMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      windGusts10MMax: freezed == windGusts10MMax
          ? _value.windGusts10MMax
          : windGusts10MMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      uvIndexMax: freezed == uvIndexMax
          ? _value.uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      rainSum: freezed == rainSum
          ? _value.rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      windDirection10MDominant: freezed == windDirection10MDominant
          ? _value.windDirection10MDominant
          : windDirection10MDominant // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson) List<DateTime>? time,
      @JsonKey(name: 'weathercode') List<int?>? weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double?>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double?>? temperature2MMin,
      @JsonKey(name: 'apparent_temperature_max')
      List<double?>? apparentTemperatureMax,
      @JsonKey(name: 'apparent_temperature_min')
      List<double?>? apparentTemperatureMin,
      @JsonKey(name: 'precipitation_sum') List<double?>? precipitationSum,
      List<String>? sunrise,
      List<String>? sunset,
      @JsonKey(name: 'precipitation_probability_max')
      List<int?>? precipitationProbabilityMax,
      @JsonKey(name: 'windspeed_10m_max') List<double?>? windSpeed10MMax,
      @JsonKey(name: 'windgusts_10m_max') List<double?>? windGusts10MMax,
      @JsonKey(name: 'uv_index_max') List<double?>? uvIndexMax,
      @JsonKey(name: 'rain_sum') List<double?>? rainSum,
      @JsonKey(name: 'winddirection_10m_dominant')
      List<int?>? windDirection10MDominant});
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
    Object? apparentTemperatureMax = freezed,
    Object? apparentTemperatureMin = freezed,
    Object? precipitationSum = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? precipitationProbabilityMax = freezed,
    Object? windSpeed10MMax = freezed,
    Object? windGusts10MMax = freezed,
    Object? uvIndexMax = freezed,
    Object? rainSum = freezed,
    Object? windDirection10MDominant = freezed,
  }) {
    return _then(_$DailyImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      weatherCode: freezed == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      temperature2MMax: freezed == temperature2MMax
          ? _value._temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      temperature2MMin: freezed == temperature2MMin
          ? _value._temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      apparentTemperatureMax: freezed == apparentTemperatureMax
          ? _value._apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      apparentTemperatureMin: freezed == apparentTemperatureMin
          ? _value._apparentTemperatureMin
          : apparentTemperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      precipitationSum: freezed == precipitationSum
          ? _value._precipitationSum
          : precipitationSum // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      sunrise: freezed == sunrise
          ? _value._sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sunset: freezed == sunset
          ? _value._sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value._precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      windSpeed10MMax: freezed == windSpeed10MMax
          ? _value._windSpeed10MMax
          : windSpeed10MMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      windGusts10MMax: freezed == windGusts10MMax
          ? _value._windGusts10MMax
          : windGusts10MMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      uvIndexMax: freezed == uvIndexMax
          ? _value._uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      rainSum: freezed == rainSum
          ? _value._rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      windDirection10MDominant: freezed == windDirection10MDominant
          ? _value._windDirection10MDominant
          : windDirection10MDominant // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl(
      {@JsonKey(fromJson: _dateTimeFromJson) final List<DateTime>? time,
      @JsonKey(name: 'weathercode') final List<int?>? weatherCode,
      @JsonKey(name: 'temperature_2m_max')
      final List<double?>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      final List<double?>? temperature2MMin,
      @JsonKey(name: 'apparent_temperature_max')
      final List<double?>? apparentTemperatureMax,
      @JsonKey(name: 'apparent_temperature_min')
      final List<double?>? apparentTemperatureMin,
      @JsonKey(name: 'precipitation_sum') final List<double?>? precipitationSum,
      final List<String>? sunrise,
      final List<String>? sunset,
      @JsonKey(name: 'precipitation_probability_max')
      final List<int?>? precipitationProbabilityMax,
      @JsonKey(name: 'windspeed_10m_max') final List<double?>? windSpeed10MMax,
      @JsonKey(name: 'windgusts_10m_max') final List<double?>? windGusts10MMax,
      @JsonKey(name: 'uv_index_max') final List<double?>? uvIndexMax,
      @JsonKey(name: 'rain_sum') final List<double?>? rainSum,
      @JsonKey(name: 'winddirection_10m_dominant')
      final List<int?>? windDirection10MDominant})
      : _time = time,
        _weatherCode = weatherCode,
        _temperature2MMax = temperature2MMax,
        _temperature2MMin = temperature2MMin,
        _apparentTemperatureMax = apparentTemperatureMax,
        _apparentTemperatureMin = apparentTemperatureMin,
        _precipitationSum = precipitationSum,
        _sunrise = sunrise,
        _sunset = sunset,
        _precipitationProbabilityMax = precipitationProbabilityMax,
        _windSpeed10MMax = windSpeed10MMax,
        _windGusts10MMax = windGusts10MMax,
        _uvIndexMax = uvIndexMax,
        _rainSum = rainSum,
        _windDirection10MDominant = windDirection10MDominant;

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  final List<DateTime>? _time;
  @override
  @JsonKey(fromJson: _dateTimeFromJson)
  List<DateTime>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int?>? _weatherCode;
  @override
  @JsonKey(name: 'weathercode')
  List<int?>? get weatherCode {
    final value = _weatherCode;
    if (value == null) return null;
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double?>? get temperature2MMax {
    final value = _temperature2MMax;
    if (value == null) return null;
    if (_temperature2MMax is EqualUnmodifiableListView)
      return _temperature2MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _temperature2MMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double?>? get temperature2MMin {
    final value = _temperature2MMin;
    if (value == null) return null;
    if (_temperature2MMin is EqualUnmodifiableListView)
      return _temperature2MMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _apparentTemperatureMax;
  @override
  @JsonKey(name: 'apparent_temperature_max')
  List<double?>? get apparentTemperatureMax {
    final value = _apparentTemperatureMax;
    if (value == null) return null;
    if (_apparentTemperatureMax is EqualUnmodifiableListView)
      return _apparentTemperatureMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _apparentTemperatureMin;
  @override
  @JsonKey(name: 'apparent_temperature_min')
  List<double?>? get apparentTemperatureMin {
    final value = _apparentTemperatureMin;
    if (value == null) return null;
    if (_apparentTemperatureMin is EqualUnmodifiableListView)
      return _apparentTemperatureMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _precipitationSum;
  @override
  @JsonKey(name: 'precipitation_sum')
  List<double?>? get precipitationSum {
    final value = _precipitationSum;
    if (value == null) return null;
    if (_precipitationSum is EqualUnmodifiableListView)
      return _precipitationSum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _sunrise;
  @override
  List<String>? get sunrise {
    final value = _sunrise;
    if (value == null) return null;
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _sunset;
  @override
  List<String>? get sunset {
    final value = _sunset;
    if (value == null) return null;
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int?>? _precipitationProbabilityMax;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<int?>? get precipitationProbabilityMax {
    final value = _precipitationProbabilityMax;
    if (value == null) return null;
    if (_precipitationProbabilityMax is EqualUnmodifiableListView)
      return _precipitationProbabilityMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _windSpeed10MMax;
  @override
  @JsonKey(name: 'windspeed_10m_max')
  List<double?>? get windSpeed10MMax {
    final value = _windSpeed10MMax;
    if (value == null) return null;
    if (_windSpeed10MMax is EqualUnmodifiableListView) return _windSpeed10MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _windGusts10MMax;
  @override
  @JsonKey(name: 'windgusts_10m_max')
  List<double?>? get windGusts10MMax {
    final value = _windGusts10MMax;
    if (value == null) return null;
    if (_windGusts10MMax is EqualUnmodifiableListView) return _windGusts10MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _uvIndexMax;
  @override
  @JsonKey(name: 'uv_index_max')
  List<double?>? get uvIndexMax {
    final value = _uvIndexMax;
    if (value == null) return null;
    if (_uvIndexMax is EqualUnmodifiableListView) return _uvIndexMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _rainSum;
  @override
  @JsonKey(name: 'rain_sum')
  List<double?>? get rainSum {
    final value = _rainSum;
    if (value == null) return null;
    if (_rainSum is EqualUnmodifiableListView) return _rainSum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int?>? _windDirection10MDominant;
  @override
  @JsonKey(name: 'winddirection_10m_dominant')
  List<int?>? get windDirection10MDominant {
    final value = _windDirection10MDominant;
    if (value == null) return null;
    if (_windDirection10MDominant is EqualUnmodifiableListView)
      return _windDirection10MDominant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Daily(time: $time, weatherCode: $weatherCode, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, apparentTemperatureMax: $apparentTemperatureMax, apparentTemperatureMin: $apparentTemperatureMin, precipitationSum: $precipitationSum, sunrise: $sunrise, sunset: $sunset, precipitationProbabilityMax: $precipitationProbabilityMax, windSpeed10MMax: $windSpeed10MMax, windGusts10MMax: $windGusts10MMax, uvIndexMax: $uvIndexMax, rainSum: $rainSum, windDirection10MDominant: $windDirection10MDominant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMax, _temperature2MMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMin, _temperature2MMin) &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMax, _apparentTemperatureMax) &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMin, _apparentTemperatureMin) &&
            const DeepCollectionEquality()
                .equals(other._precipitationSum, _precipitationSum) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbabilityMax,
                _precipitationProbabilityMax) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed10MMax, _windSpeed10MMax) &&
            const DeepCollectionEquality()
                .equals(other._windGusts10MMax, _windGusts10MMax) &&
            const DeepCollectionEquality()
                .equals(other._uvIndexMax, _uvIndexMax) &&
            const DeepCollectionEquality().equals(other._rainSum, _rainSum) &&
            const DeepCollectionEquality().equals(
                other._windDirection10MDominant, _windDirection10MDominant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_temperature2MMax),
      const DeepCollectionEquality().hash(_temperature2MMin),
      const DeepCollectionEquality().hash(_apparentTemperatureMax),
      const DeepCollectionEquality().hash(_apparentTemperatureMin),
      const DeepCollectionEquality().hash(_precipitationSum),
      const DeepCollectionEquality().hash(_sunrise),
      const DeepCollectionEquality().hash(_sunset),
      const DeepCollectionEquality().hash(_precipitationProbabilityMax),
      const DeepCollectionEquality().hash(_windSpeed10MMax),
      const DeepCollectionEquality().hash(_windGusts10MMax),
      const DeepCollectionEquality().hash(_uvIndexMax),
      const DeepCollectionEquality().hash(_rainSum),
      const DeepCollectionEquality().hash(_windDirection10MDominant));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {@JsonKey(fromJson: _dateTimeFromJson) final List<DateTime>? time,
      @JsonKey(name: 'weathercode') final List<int?>? weatherCode,
      @JsonKey(name: 'temperature_2m_max')
      final List<double?>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      final List<double?>? temperature2MMin,
      @JsonKey(name: 'apparent_temperature_max')
      final List<double?>? apparentTemperatureMax,
      @JsonKey(name: 'apparent_temperature_min')
      final List<double?>? apparentTemperatureMin,
      @JsonKey(name: 'precipitation_sum') final List<double?>? precipitationSum,
      final List<String>? sunrise,
      final List<String>? sunset,
      @JsonKey(name: 'precipitation_probability_max')
      final List<int?>? precipitationProbabilityMax,
      @JsonKey(name: 'windspeed_10m_max') final List<double?>? windSpeed10MMax,
      @JsonKey(name: 'windgusts_10m_max') final List<double?>? windGusts10MMax,
      @JsonKey(name: 'uv_index_max') final List<double?>? uvIndexMax,
      @JsonKey(name: 'rain_sum') final List<double?>? rainSum,
      @JsonKey(name: 'winddirection_10m_dominant')
      final List<int?>? windDirection10MDominant}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  @JsonKey(name: 'weathercode')
  List<int?>? get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double?>? get temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double?>? get temperature2MMin;
  @override
  @JsonKey(name: 'apparent_temperature_max')
  List<double?>? get apparentTemperatureMax;
  @override
  @JsonKey(name: 'apparent_temperature_min')
  List<double?>? get apparentTemperatureMin;
  @override
  @JsonKey(name: 'precipitation_sum')
  List<double?>? get precipitationSum;
  @override
  List<String>? get sunrise;
  @override
  List<String>? get sunset;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<int?>? get precipitationProbabilityMax;
  @override
  @JsonKey(name: 'windspeed_10m_max')
  List<double?>? get windSpeed10MMax;
  @override
  @JsonKey(name: 'windgusts_10m_max')
  List<double?>? get windGusts10MMax;
  @override
  @JsonKey(name: 'uv_index_max')
  List<double?>? get uvIndexMax;
  @override
  @JsonKey(name: 'rain_sum')
  List<double?>? get rainSum;
  @override
  @JsonKey(name: 'winddirection_10m_dominant')
  List<int?>? get windDirection10MDominant;
  @override
  @JsonKey(ignore: true)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
