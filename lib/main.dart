import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poke App',
      theme: ThemeData(
        primaryColor: const Color(0xFF00BCD4),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> pokemonList = const [
    {'name': 'Bulbasaur', 'image': 'assets/images/chanel5.jpg'},
    {'name': 'Ivysaur', 'image': 'assets/images/chanel6.jpg'},
    {'name': 'Venusaur', 'image': 'assets/images/chanel10.jpg'},
    {'name': 'Charmander', 'image': 'assets/images/dior joy.jpg'},
    {'name': 'Charmeleon', 'image': 'assets/images/dior1.jpg'},
    {'name': 'Charizard', 'image': 'assets/images/dior2.jpg'},
    {'name': 'Squirtle', 'image': 'assets/images/gris dior.jpg'},
    {'name': 'Wartortle', 'image': 'assets/images/jador6.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00BCD4),
        title: const Text(
          'Poke App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: pokemonList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final pokemon = pokemonList[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      pokemon['image']!,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    pokemon['name']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF00BCD4),
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
    );
  }
}