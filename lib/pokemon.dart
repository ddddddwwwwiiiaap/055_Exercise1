import 'package:flutter/material.dart';

class Pokemon1 extends StatelessWidget {
  const Pokemon1({
    super.key,
    required this.gambar,
    required this.nomor,
    required this.namapokemon,
    required this.deskripsi,
  });

  final String gambar;
  final String nomor;
  final String namapokemon;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              namapokemon,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green,
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Grass',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.purple[300],
                            ),
                            padding: const EdgeInsets.only(left: 3),
                            child: const Text(
                              'Poison',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Pokemon2 extends StatelessWidget {
  const Pokemon2({
    super.key,
    required this.gambar,
    required this.nomor,
    required this.namapokemon,
    required this.deskripsi,
  });

  final String gambar;
  final String nomor;
  final String namapokemon;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.yellow,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              namapokemon,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.yellow,
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Electric',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Pokemon3 extends StatelessWidget {
  const Pokemon3({
    super.key,
    required this.gambar,
    required this.nomor,
    required this.namapokemon,
    required this.deskripsi,
  });

  final String gambar;
  final String nomor;
  final String namapokemon;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.brown,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              namapokemon,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 240, 216, 3),
                                  Color.fromARGB(255, 162, 116, 46)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Ground',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Pokemon4 extends StatelessWidget {
  const Pokemon4({
    super.key,
    required this.gambar,
    required this.nomor,
    required this.namapokemon,
    required this.deskripsi,
  });

  final String gambar;
  final String nomor;
  final String namapokemon;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              namapokemon,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 162, 116, 46),
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Rock',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 240, 216, 3),
                                  Color.fromARGB(255, 162, 116, 46)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: const EdgeInsets.only(left: 3),
                            child: const Text(
                              'Ground',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Pokemon5 extends StatelessWidget {
  const Pokemon5({
    super.key,
    required this.gambar,
    required this.nomor,
    required this.namapokemon,
    required this.deskripsi,
  });

  final String gambar;
  final String nomor;
  final String namapokemon;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              namapokemon,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.yellow[600],
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Electric',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
