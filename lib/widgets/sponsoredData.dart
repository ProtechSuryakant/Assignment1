import 'package:e_commerce_app/model/sponsored.dart';
import 'package:flutter/material.dart';

class SponsoredData extends StatelessWidget {
  const SponsoredData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      shrinkWrap: true,
      children: sponsored.map((item) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      item.image,
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  child: Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF293265),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
