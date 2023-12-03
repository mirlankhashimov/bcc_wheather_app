class CityApi {
  CityApi({
    required this.results,
  });

  List<Result> results;

  factory CityApi.fromJson(Map<String, dynamic> json) => CityApi(
        results: json['results'] == null
            ? List<Result>.empty()
            : List<Result>.from(json['results'].map((x) => Result.fromJson(x))),
      );
}

class Result {
  Result({
    required this.latitude,
    required this.longitude,
  });

  double latitude;
  double longitude;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        latitude: json['latitude'],
        longitude: json['longitude'],
      );
}
