/// Nama Module: home_page.dart
/// Deskripsi: Module ini digunakan untuk membuat tampilan halaman utama
/// 
/// Kode ini berisi implementasi dari class HomePage

import 'package:exercise1/pokemon.dart';
import 'package:flutter/material.dart';

/// HomePage class adalah class yang digunakan untuk membuat tampilan halaman utama
class HomePage extends StatefulWidget {
  /// const HomePage ({Key? key, required this.name}) digunakan untuk membuat konstruktor dari class HomePage dengan parameter key dan name
  const HomePage({super.key, this.name});
  /// name adalah variabel yang digunakan untuk menyimpan nama user yang diinputkan pada halaman login
  final String? name;

  @override
  State<HomePage> createState() => _HomePageState();
}

/// _HomePageState class adalah class yang digunakan untuk membuat state dari halaman utama
class _HomePageState extends State<HomePage> {

  /// Method build digunakan untuk membuat tampilan halaman utama
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: RichText(
                          text: TextSpan(
                            text: 'Hallo, ',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '${widget.name.toString()}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/251.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Pokedex",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 14.0),
                      hintText: 'Search Pokemon',
                      hintStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
              const Column(
                children: [
                  Pokemon1(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png',
                      nomor: '#0001',
                      namapokemon: 'Bulbasaur',
                      deskripsi:
                          'There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.'),
                  Pokemon2(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/025.png',
                      nomor: '#0025',
                      namapokemon: 'Pikachu',
                      deskripsi:
                          'When it is angered, it immediately discharges the energy stored in the pouches in its cheeks.'),
                  Pokemon3(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/050.png',
                      nomor: '#0050',
                      namapokemon: 'Diglett',
                      deskripsi:
                          'It lives about one yard underground, where it feeds on plant roots. It sometimes appears aboveground.'),
                  Pokemon4(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/075.png',
                      nomor: '#0075',
                      namapokemon: 'Galveler',
                      deskripsi:
                          'Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid.'),
                  Pokemon5(
                    gambar:
                        'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/100.png',
                    nomor: '#0100',
                    namapokemon: 'Voltorb',
                    deskripsi:
                        'It rolls to move. If the ground is uneven, a sudden jolt from hitting a bump can cause it to explode.',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
