import 'package:flutter/material.dart';

class PincelesPagina extends StatelessWidget {
  const PincelesPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/pinceles.jpg', width: 250, height: 250),
    );
  }
}