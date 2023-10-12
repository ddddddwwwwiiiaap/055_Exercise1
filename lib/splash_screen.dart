/// Nama Module: splash_screen.dart
/// Deskripsi: Module ini digunakan untuk membuat tampilan halaman splash screen
/// 
/// Kode ini berisi implementasi dari class SplashScreen

import 'package:exercise1/login.dart';
import 'package:flutter/material.dart';

/// SplashScreen class adalah class yang digunakan untuk membuat tampilan halaman splash screen
class SplashScreen extends StatelessWidget {
  /// const SplashScreen ({Key? key}) digunakan untuk membuat konstruktor dari class SplashScreen dengan parameter key
  const SplashScreen({Key? key}) : super(key: key);

  /// Method build digunakan untuk membuat tampilan halaman splash screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Pokedox.",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Welcome to Pokedox",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const Text(
                "You can find your favorite pokemon here",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset("assets/images/splashscreen.png"),
              ),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Login(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
