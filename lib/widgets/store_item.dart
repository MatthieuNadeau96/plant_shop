import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final double rating;
  final double price;

  StoreItem({
    this.name,
    this.description,
    this.image,
    this.rating,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: theme.canvasColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.23),
            spreadRadius: 7,
            blurRadius: 18,
            offset: Offset(0, 5),
          ),
        ],
      ),
      // height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.77,
      child: Row(
        children: [
          ClipRRect(
            child: Image(
              height: 120,
              width: 120,
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: theme.textTheme.bodyText1.color,
                  ),
                ),
                Text(rating.toString()),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Purchase',
                      style: TextStyle(
                        color: theme.canvasColor,
                      ),
                    ),
                    color: Colors.green,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
