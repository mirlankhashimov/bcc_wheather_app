import 'package:bcc_wheather_app/weather/status_weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

Locale locale = const Locale('en', 'US');

class WeatherNow extends StatefulWidget {
  const WeatherNow({
    super.key,
    required this.weather,
    required this.degree,
    required this.time,
    required this.timeDay,
    required this.timeNight,
  });

  final String time;
  final String timeDay;
  final String timeNight;
  final int weather;
  final double degree;

  @override
  State<WeatherNow> createState() => _WeatherNowState();
}

class _WeatherNowState extends State<WeatherNow> {
  final statusWeather = StatusWeather();

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Image.asset(
              statusWeather.getImageToday(
                widget.weather,
                widget.time,
                widget.timeDay,
                widget.timeNight,
              ),
              height: 90,
            ),
            GlowText(
              '${widget.degree.round()}',
              style: context.textTheme.displayLarge?.copyWith(
                fontSize: 72,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              statusWeather.getText(widget.weather),
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(height: 5),
            Text(
              DateFormat.MMMMEEEEd(locale.languageCode).format(
                DateTime.parse(widget.time),
              ),
              style: context.textTheme.labelLarge?.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        );
  }
}
