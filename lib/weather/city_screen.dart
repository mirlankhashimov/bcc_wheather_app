import 'package:bcc_wheather_app/weather/weather_screen.dart';
import 'package:flutter/material.dart';

class CityPage extends StatefulWidget {
  const CityPage({super.key});

  @override
  State<CityPage> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityPage> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _myController = TextEditingController();

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                    controller: _myController,
                    maxLines: 1,
                    decoration: const InputDecoration(
                        hintText: "Enter the city",
                        contentPadding: EdgeInsets.all(8)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    })),
            ElevatedButton(
              onPressed: () {
                final todo = City(_myController.text);
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).push(_createRoute(todo));
                }
              },
              child: const Text('Search city weather'),
            ),
          ],
        ),
      ),
    );
  }

  Route _createRoute(City todo) {
    return PageRouteBuilder(
      settings: RouteSettings(arguments: todo),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const WeatherPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
