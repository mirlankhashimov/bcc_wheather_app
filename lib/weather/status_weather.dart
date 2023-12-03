import 'package:get/get.dart';

const assetImageRoot = 'assets/images/';

class StatusWeather {

  String getImageToday(
      int weather, String time, String timeDay, String timeNight) {
    final currentTime = DateTime.parse(time);
    final day = DateTime.parse(timeDay);
    final night = DateTime.parse(timeNight);

    final dayTime =
        DateTime(day.year, day.month, day.day, day.hour, day.minute);
    final nightTime =
        DateTime(night.year, night.month, night.day, night.hour, night.minute);

    switch (weather) {
      case 0:
        if (currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime)) {
          return '${assetImageRoot}clear_day.png';
        } else {
          return '${assetImageRoot}clear_night.png';
        }
      case 1:
      case 2:
      case 3:
        if (currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime)) {
          return '${assetImageRoot}cloudy_day.png';
        } else {
          return '${assetImageRoot}cloudy_night.png';
        }
      case 45:
      case 48:
        if (currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime)) {
          return '${assetImageRoot}fog_day.png';
        } else {
          return '${assetImageRoot}fog_night.png';
        }
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
      case 80:
      case 81:
      case 82:
        if (currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime)) {
          return '${assetImageRoot}rain_day.png';
        } else {
          return '${assetImageRoot}rain_night.png';
        }
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        if (currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime)) {
          return '${assetImageRoot}snow_day.png';
        } else {
          return '${assetImageRoot}snow_night.png';
        }
      case 95:
      case 96:
      case 99:
        if (currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime)) {
          return '${assetImageRoot}thunder_day.png';
        } else {
          return '${assetImageRoot}thunder_night.png';
        }
      default:
        return '';
    }
  }

  String getText(int? weather) {
    switch (weather) {
      case 0:
        return 'clear_sky'.tr;
      case 1:
      case 2:
        return 'cloudy'.tr;
      case 3:
        return 'overcast'.tr;
      case 45:
      case 48:
        return 'fog'.tr;
      case 51:
      case 53:
      case 55:
        return 'drizzle'.tr;
      case 56:
      case 57:
        return 'drizzling_rain'.tr;
      case 61:
      case 63:
      case 65:
        return 'rain'.tr;
      case 66:
      case 67:
        return 'freezing_rain'.tr;
      case 80:
      case 81:
      case 82:
        return 'heavy_rains'.tr;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return 'snow'.tr;
      case 95:
      case 96:
      case 99:
        return 'thunderstorm'.tr;
      default:
        return '';
    }
  }
}
