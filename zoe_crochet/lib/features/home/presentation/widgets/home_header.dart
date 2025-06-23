import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget implements PreferredSizeWidget {
  const HomeHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  HomeHeaderState createState() => HomeHeaderState();
}

class HomeHeaderState extends State<HomeHeader> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Row(
          children: [
            // Logo o título
            Image.asset(
              'lib/features/home/presentation/assets/images/logo.png', 
              height: 40,
            ),

            const Spacer(), // Empuja el menú hacia el centro

            // Menú de navegación
            _navItem('Inicio', 0),
            _navItem('Quienes somos', 1),
            _navItem('Catalogo', 2),
            _navItem('Contáctenos', 3),

            // Línea divisoria
            Container(
              height: 30, // Altura de la línea
              width: 1, // Grosor de la línea
              color: Colors.grey, // Color de la línea
            ),

            const SizedBox(width: 5), // Espacio después de la línea

            // Botón "Ingresar"
            _navItemWithIcon(Icons.login, "Ingresar", 4),

            // Botón "Registrar"
            _navItemWithIcon(Icons.person_add, "Registrar", 5),
          ],
        ),
      ),
    );
  }

  Widget _navItem(String title, int index) {
    return MouseRegion(
      onEnter: (_) => setState(() => _selectedIndex = index),
      onExit: (_) => setState(() => _selectedIndex = -1),
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: _selectedIndex == index ? Colors.white : Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (_selectedIndex == index)
                Container(
                  margin: const EdgeInsets.only(top: 3),
                  height: 2,
                  width: 20,
                  color: Colors.purple,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItemWithIcon(IconData icon, String title, int index) {
    return MouseRegion(
      onEnter: (_) => setState(() => _selectedIndex = index),
      onExit: (_) => setState(() => _selectedIndex = -1),
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: _selectedIndex == index ? Colors.white : Colors.grey,
                size: 18,
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: TextStyle(
                  color: _selectedIndex == index ? Colors.white : Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
