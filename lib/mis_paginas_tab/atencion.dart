import 'package:flutter/material.dart';

class AtencionPagina extends StatelessWidget {
  const AtencionPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/atencion_cliente.PNG', width: 250, height: 250),
    );
  }
}