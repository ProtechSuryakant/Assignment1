import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF293265),
                  Color(0xFF5C6098),
                ],
              ),
            ),
            accountName: const Text(
              'Suryakant Ajay',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text("Surya@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/surya.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_bag,
              color: Color(0xFF5C6098),
            ),
            title: const Text(
              'My Order',
              style: TextStyle(color: Color(0xFF5C6098)),
            ),
            onTap: () => Fluttertoast.showToast(
              msg: "My Order",
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16,
              backgroundColor: const Color(0xFF5C6098),
              textColor: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Color(0xFF5C6098)),
            title: const Text(
              'Favorite',
              style: TextStyle(color: Color(0xFF5C6098)),
            ),
            onTap: () => Fluttertoast.showToast(
              msg: "Favorite",
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16,
              backgroundColor: const Color(0xFF5C6098),
              textColor: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Color(0xFF5C6098)),
            title: const Text(
              'Share',
              style: TextStyle(color: Color(0xFF5C6098)),
            ),
            onTap: () => Fluttertoast.showToast(
              msg: "Share",
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16,
              backgroundColor: const Color(0xFF5C6098),
              textColor: Colors.white,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings, color: Color(0xFF5C6098)),
            title: const Text(
              'Settings',
              style: TextStyle(color: Color(0xFF5C6098)),
            ),
            onTap: () => Fluttertoast.showToast(
              msg: "Setting",
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16,
              backgroundColor: const Color(0xFF5C6098),
              textColor: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.description, color: Color(0xFF5C6098)),
            title: const Text(
              'Policies',
              style: TextStyle(color: Color(0xFF5C6098)),
            ),
            onTap: () => Fluttertoast.showToast(
              msg: "Policies",
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16,
              backgroundColor: const Color(0xFF5C6098),
              textColor: Colors.white,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Color(0xFF5C6098)),
            title: const Text(
              'Exit',
              style: TextStyle(color: Color(0xFF5C6098)),
            ),
            onTap: () => Fluttertoast.showToast(
              msg: "Exit",
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16,
              backgroundColor: const Color(0xFF5C6098),
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
