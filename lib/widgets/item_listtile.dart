import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({super.key, required this.text, required this.icon, this.onTap});
  final String text ;
  final IconData icon;
  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      onTap: onTap,
      title: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(icon,
          color: Colors.white,
          size: 30
      ),
    );
  }
}
