import 'package:examen_ebr/screens/atracciones_screen_ebr.dart';
import 'package:examen_ebr/screens/espacios_screen_ebr.dart';
import 'package:flutter/material.dart';

class ListViewScreenEbr extends StatelessWidget {
  const ListViewScreenEbr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Más opciones'),
        actions: const [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
              ))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
              leading: const Icon(Icons.house),
              title: const Text('RESERVAS'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Aviso'),
                    content: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            'El sistema de reservas está deshabilitado en estos momentos.'),
                        SizedBox(height: 20),
                        FlutterLogo(
                            size: 50), // Logo de Flutter dentro del diálogo
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Cerrar el diálogo
                        },
                        child: const Text('Cancelar'),
                      ),
                    ],
                  ),
                );
              }),
          ListTile(
            leading: const Icon(Icons.directions_bus),
            title: const Text('ATRACCIONES TURISTICAS'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AtraccionesScreenEbr()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.museum),
            title: const Text('ESPACIOS CULTURALES'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EspaciosScreenEbr()));
            },
          )
        ],
      ),
    );
  }
}
