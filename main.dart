import 'package:flutter/material.dart';
import 'classeja/kasvi_napit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Kasvit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200.0,
          children: <Widget>[
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imge/plant_icon1.png'),
                    scale: 0.5,
                  ),
                ),
                child: const Text(
                  'Peikonlehti',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Peikonlehti()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imge/plant_icon2.png'),
                    scale: 0.5,
                  ),
                ),
                child: const Text(
                  'Varjoviikuna',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Varjoviikuna()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imge/plant_icon3.png'),
                    scale: 0.5,
                  ),
                ),
                child: const Text(
                  'Kultaköynnös',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kulta()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imge/plant_icon4.png'),
                    scale: 0.5,
                  ),
                ),
                child: const Text(
                  'Kolibrikukka',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kolibri()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imge/plant_icon5.jpg'),
                    scale: 0.5,
                  ),
                ),
                child: const Text(
                  'Zebra Alokasia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Zebra()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imge/plant_icon6.png'),
                    scale: 0.6,
                  ),
                ),
                child: const Text(
                  'Muulinkorva',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Muuli()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imge/plant_icon6.png'),
                    scale: 0.6,
                  ),
                ),
                child: const Text(
                  'Pullopalmu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pullo()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
