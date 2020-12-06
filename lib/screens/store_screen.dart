import 'package:flutter/material.dart';
import 'package:plant_shop/data/data.dart';
import 'package:plant_shop/model/plant_model.dart';
import 'package:plant_shop/widgets/my_app_bar.dart';
import 'package:plant_shop/widgets/store_item.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<PlantModel> plants = List<PlantModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    plants = getPlants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Store',
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: plants.length,
            itemBuilder: (context, index) {
              final PlantModel plant = plants[index];
              return StoreItem(
                name: plant.name,
                image: plant.image,
                description: plant.description,
                rating: plant.rating,
                price: plant.price,
              );
            },
          ),
        ),
      ),
    );
  }
}
