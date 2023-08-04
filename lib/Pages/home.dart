import 'package:e_commerce_app/widgets/ItemsWidget.dart';
import 'package:e_commerce_app/widgets/NavBar.dart';
import 'package:e_commerce_app/widgets/contentSlider.dart';
import 'package:e_commerce_app/widgets/sponsoredData.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/CategoryWidgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: const NavBar(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(children: [
            IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                icon:
                    const Icon(Icons.sort, size: 27, color: Color(0xFF293265))),
            const Spacer(),
            const Text(
              'India Market',
              style: TextStyle(color: Color(0xFF293265)),
            ),
            const Spacer(),
            InkWell(
              onTap: () => Fluttertoast.showToast(
                msg: "Profile",
                gravity: ToastGravity.BOTTOM,
                toastLength: Toast.LENGTH_SHORT,
                fontSize: 16,
                backgroundColor: const Color(0xFF5C6098),
                textColor: Colors.white,
              ),
              child: const Image(
                image: AssetImage("assets/icons/user.png"),
                height: 25,
                width: 25,
                color: Color(0xFF293265),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () => Fluttertoast.showToast(
                msg: "Cart",
                gravity: ToastGravity.BOTTOM,
                toastLength: Toast.LENGTH_SHORT,
                fontSize: 16,
                backgroundColor: const Color(0xFF5C6098),
                textColor: Colors.white,
              ),
              child: const Badge(
                label: Text('1'),
                child: Image(
                  image: AssetImage("assets/icons/cart.png"),
                  height: 25,
                  width: 25,
                  color: Color(0xFF293265),
                ),
              ),
            )
          ]),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFEEEDFF),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                    style: const TextStyle(color: Color(0xFF5C6098)),
                    decoration: InputDecoration(
                        hintText: 'Search Here.....',
                        hintStyle: const TextStyle(color: Color(0xFF5C6098)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xFF5c6098))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xFF5c6098)))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const contentSlider(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Category',
                    style: TextStyle(
                        color: Color(0xFF5C6098),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFF5C6098),
                      borderRadius: BorderRadius.circular(20)),
                  child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [CategoryWidgets()])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Best Selling',
                    style: TextStyle(
                        color: Color(0xFF5C6098),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF5C6098),
                        borderRadius: BorderRadius.circular(20)),
                    child: const ItemsWidget()),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Sponsored',
                    style: TextStyle(
                        color: Color(0xFF5C6098),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF5C6098),
                        borderRadius: BorderRadius.circular(20)),
                    child: const SponsoredData()),
              ],
            ),
          ),
        ));
  }
}
