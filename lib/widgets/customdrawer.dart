import 'package:flutter/material.dart';
import 'package:project_graduation/Views/blog_view.dart';
import 'package:project_graduation/Views/home.dart';
import 'package:project_graduation/Views/our_courses.dart';
import 'package:project_graduation/widgets/item_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      backgroundColor: const Color(0xFF0D0908).withOpacity(.90),
      child: ListView(
        children: [
          const DrawerHeader(
              child: Row(
            children: [
              Icon(Icons.ac_unit, color: Colors.white, size: 30),
              SizedBox(
                width: 25,
              ),
              Text(
                'Think \nTank',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
          ItemListTile(
            text: 'Home',
            icon: Icons.home,
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
          ),
          ItemListTile(
            text: 'Our Courses',
            icon: Icons.category_sharp,
            onTap: () {
              Navigator.pushReplacementNamed(context, OurCourses.id);
            },
          ),
          const ItemListTile(text: 'About Us', icon: Icons.person),
          ItemListTile(
            text: 'Blog',
            icon: Icons.home,
            onTap: () {
              Navigator.pushReplacementNamed(context, BlogView.id);
            },
          ),
          const ItemListTile(text: 'Get In Touch', icon: Icons.home),
          const ItemListTile(text: 'Sing Out', icon: Icons.logout),
          const ItemListTile(text: 'Language', icon: Icons.language),
        ],
      ),
    );
  }
}
