import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          // 📌 Imagen principal
          Image.asset(
            'lib/features/home/presentation/assets/images/banner.png', 
            width: 1000,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
