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
    Size deviceSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: deviceSize.width < 600 ? deviceSize.width : 600,
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: [
            Container(
              height: 120,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.13),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
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
            ),
            Positioned(
              left: 40,
              bottom: 30,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 120,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
