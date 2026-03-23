import 'package:flutter/material.dart';
import 'home.dart';
import 'oleos.dart';
import 'pinceles.dart';
import 'caballetes.dart';
import 'atencion.dart';

class TabbarPageArtStore extends StatefulWidget {
  const TabbarPageArtStore({super.key});

  @override
  State<TabbarPageArtStore> createState() => _TabbarPageArtStoreState();
}

class _TabbarPageArtStoreState extends State<TabbarPageArtStore> {
  int _indexSeleccionado = 0;

  final List<Widget> _paginas = [
    const HomePagina(),
    const OleosPagina(),
    const PincelesPagina(),
    const CaballetesPagina(),
    const AtencionPagina(),
  ];

  final List<String> _titulos = [
    'BIENVENIDO A HOME',
    'SECCIÓN DE ÓLEOS',
    'CATÁLOGO DE PINCELES',
    'NUESTROS CABALLETES',
    'CENTRO DE ATENCIÓN'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 228, 222), // Café muy claro (crema)
      body: SafeArea(
        child: Column(
          children: [
            // HEADER CON NOMBRE DEL NEGOCIO
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/header.PNG'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  'ArtStore',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Serif', 
                    letterSpacing: 3,
                    shadows: [Shadow(color: Colors.black54, blurRadius: 15)],
                  ),
                ),
              ],
            ),
            
            // RECUADRO CAFÉ OSCURO CON OTRA TIPOGRAFÍA
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 15),
              color: const Color(0xFF3E2723), // Café oscuro profundo
              child: Text(
                _titulos[_indexSeleccionado],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'monospace', // Fuente tipo consola/máquina para contraste
                  letterSpacing: 2,
                ),
              ),
            ),

            // PANTALLA SELECCIONADA
            Expanded(
              child: _paginas[_indexSeleccionado],
            ),
          ],
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexSeleccionado,
        onTap: (index) => setState(() => _indexSeleccionado = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFD7CCC8), // Café claro
        selectedItemColor: const Color(0xFF3E2723),
        unselectedItemColor: Colors.brown.withOpacity(0.5),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.format_paint), label: 'Óleos'),
          BottomNavigationBarItem(icon: Icon(Icons.brush), label: 'Pinceles'),
          BottomNavigationBarItem(icon: Icon(Icons.architecture), label: 'Caballetes'),
          BottomNavigationBarItem(icon: Icon(Icons.headset_mic), label: 'Atención'),
        ],
      ),
    );
  }
}