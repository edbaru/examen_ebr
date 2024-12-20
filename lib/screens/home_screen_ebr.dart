import 'package:examen_ebr/screens/register_screen_ebr.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.network(
                'https://wallet.vueling.com/assets/logos/withName/logo_ATRP.jpg'),
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterScreenEbr())),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'REGISTRARME',
                  style: TextStyle(fontSize: 20),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'ACCEDER',
                  style: TextStyle(fontSize: 20),
                ),
              )),
        ],
      )),
    );
  }
}
