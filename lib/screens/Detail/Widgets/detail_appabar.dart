import 'package:shopswift/Models/product_model.dart';
import 'package:shopswift/provider/favorite_provider.dart';
import 'package:flutter/material.dart';

class DetailScreenAppabar extends StatelessWidget {
  final Product product;
  const DetailScreenAppabar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            icon: const Icon(
              Icons.share_outlined,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              provider.toggleFavorite(product);
            },
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_outline,
            ),
          ),
        ],
      ),
    );
  }
}
