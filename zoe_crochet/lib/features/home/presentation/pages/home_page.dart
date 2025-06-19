import 'package:flutter/material.dart';
import '../widgets/home_header.dart';
import '../widgets/home_body.dart';
import '../widgets/home_footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeHeader(),
      body: Column(
        children: [
          // 📌 Contenido de la pantalla (imagen y texto)
          Expanded(
            child: SingleChildScrollView(child: HomeBody()),
          ),

          // 📌 Footer fijo abajo
          const HomeFooter(),
        ],
      ),
    );
  }
}