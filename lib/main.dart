import 'package:flutter/material.dart';
import 'mis_paginas_tab/tabbar_page.dart';

void main() => runApp(const MiArtStoreApp());

class MiArtStoreApp extends StatelessWidget {
  const MiArtStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ArtStore',
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const TabbarPageArtStore(),
      },
    );
  }
}