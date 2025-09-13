import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:shopswift/Models/product_model.dart';
import 'package:shopswift/constants.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  final Product product;
  const Info({super.key, required this.product});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kprimaryColor,
            ),
            unselectedDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            tabs: const [
              Tab(
                child: Text(
                  "Descriptios",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  "Specifications",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  "Reviews",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 90,
              maxHeight: 100,
              minWidth: double.infinity,
              maxWidth: double.infinity,
            ),
            child: TabBarView(
              children: [
                Text(widget.product.description),
                const Text(""),
                const Text(""),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
