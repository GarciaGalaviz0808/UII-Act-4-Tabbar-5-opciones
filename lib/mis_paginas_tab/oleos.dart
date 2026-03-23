import 'package:flutter/material.dart';

class OleosPagina extends StatelessWidget {
  const OleosPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/oleo6.PNG', width: 250, height: 250),
    );
  }
}