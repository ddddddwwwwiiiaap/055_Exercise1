/// Nama Module: main.dart
/// Deskripsi: Module ini digunakan untuk membuat tampilan halaman utama
/// 
/// Kode ini berisi implementasi dari class MyApp

import 'package:exercise1/splash_screen.dart';
import 'package:flutter/material.dart';

/// Fungsi main adalah titik masuk utama ke dalam aplikasi
/// Fungsi ini dijalankan pertama kali ketika aplikasi dijalankan.
void main() {
  runApp(const MyApp());
}

/// MyApp class adalah root dari aplikasi ini dan merupakan turunan dari StatelessWidget
class MyApp extends StatelessWidget {
  /// const MyApp ({Key? key}) digunakan untuk membuat konstruktor dari class MyApp dengan parameter key
  const MyApp({super.key});

  /// Method build digunakan untuk membuat tampilan aplikasi
  /// Ini adalah method yang pertama kali dipanggil ketika aplikasi dijalankan
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
