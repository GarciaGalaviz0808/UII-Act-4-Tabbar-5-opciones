import 'package:flutter/material.dart';

class HomePagina extends StatelessWidget {
  const HomePagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/logo%20(1).png', width: 250, height: 250),
    );
  }
}