import 'package:bcc_wheather_app/animal/animal_details_screen.dart';
import 'package:flutter/material.dart';

const assetImageRoot = 'assets/animals/';
const assetAudioRoot = 'assets/audios/';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListsWithCards();
  }
}

class ListsWithCards extends StatelessWidget {
  const ListsWithCards({super.key});

  @override
  Widget build(BuildContext context) {
    List<Animal> animals = getAnimals();
    return ListView.builder(
      itemCount: animals.length,
      itemBuilder: (context, index) {
        return AnimalItem(animal: animals[index]);
      },
    );
  }
}

class AnimalItem extends StatelessWidget {
  final Animal animal;

  AnimalItem({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
              animal.icon,
            )),
            isThreeLine: true,
            title: Text(animal.name,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(animal.info),
            onTap: () {
              Navigator.of(context).push(_createRoute(animal));
            },
          )
        ],
      ),
    );
  }
}

Route _createRoute(Animal animal) {
  return PageRouteBuilder(
    settings: RouteSettings(arguments: animal),
    pageBuilder: (context, animation, secondaryAnimation) =>
        const AnimalDetailsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Animal {
  final String name;
  final String info;
  final String icon;
  final String sound;

  const Animal(this.name, this.info, this.icon, this.sound);
}

List<Animal> getAnimals() {
  List<Animal> animals = [
    const Animal(
        'Tiger',
        "The tiger is the largest species among the mammal family and classified within the mammal genus. Tiger is most recognizable for its dark vertical stripes on his reddish-orange fur with a lighter and slimmer face. It's an apex predator, primarily preying on ungulates like ruminant and bovid. It's territorial and customarily a solitary however social predator, requiring giant contiguous areas of environment, that support its necessities for prey and rearing of its offspring. Tiger cubs stick with their mother for regarding 2 years before they become freelance and leave their mother's range to ascertain their own.",
        "${assetImageRoot}tiger.png",
        "${assetAudioRoot}tiger_sound.mp3"),
    const Animal(
        'Eagle',
        "Eagles have always been a symbol of power, freedom, and majesty, and they have been revered by cultures all over the world for centuries. With the advent of digital art, eagles have found a new following, as artists use eagle PNG files to create stunning works of art featuring these magnificent creatures.",
        "${assetImageRoot}eagle.png",
        "${assetAudioRoot}eagle_sound.mp3"),
    const Animal(
        'Anaconda',
        "Anaconda is a widely used open-source data science and machine learning platform. This robust platform comes with numerous libraries and tools that enable developers to work with several programming languages, including Python. Using Anaconda, developers can easily manage their code dependencies and set up a conducive work environment for their projects.",
        "${assetImageRoot}anaconda.png",
        "${assetAudioRoot}snake_sound.mp3"),
    const Animal(
        'Jaguar',
        "Jaguar also famously known as Panthera onca is a large field species and the only extant member of the genus Panthera which is native to the Americas. The present range for the existence of Jaguar today ranges from Southwestern United States and Mexico in North America, across much of Central America and south to Paraguay and Northern Argentina in South America. Since the early 20th century the species have been largely extirpated from the United States, leaving them the single cats that are now living within the Western United States.",
        "${assetImageRoot}jaguar.png",
        "${assetAudioRoot}jaguar_sound.mp3"),
  ];
  return animals;
}
