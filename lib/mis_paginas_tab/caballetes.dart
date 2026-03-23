import 'package:flutter/material.dart';

class CaballetesPagina extends StatelessWidget {
  const CaballetesPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/%C3%B3leo2.png', width: 250, height: 250),
    );
  }
}