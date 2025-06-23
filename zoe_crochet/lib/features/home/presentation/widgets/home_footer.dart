import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.black, // Fondo negro
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), // Bordes curvos arriba
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 📌 Enlaces del footer
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          // 📌 Derechos reservados
          const Text(
            "© 2025 Zoe's Crochet. Todos los derechos reservados.",
            style: TextStyle(color: Colors.white70, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
