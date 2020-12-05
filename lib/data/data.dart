import 'package:plant_shop/model/plant_model.dart';

List<PlantModel> getPlants() {
  List<PlantModel> plants = [
    PlantModel(
      image: 'assets/images/banana-tree.jpg',
      name: 'Banana Tree',
      description: '',
      rating: 4.0,
      price: 50.00,
    ),
    PlantModel(
      image: 'assets/images/cactus-pink.jpg',
      name: 'Small Cactus',
      description: '',
      rating: 5.0,
      price: 24.99,
    ),
    PlantModel(
      image: 'assets/images/monstera-lo-res.jpg',
      name: 'Monstera',
      description: '',
      rating: 4.5,
      price: 69.99,
    ),
    PlantModel(
      image: 'assets/images/tiny-plant.jpg',
      name: 'Tiny Guy',
      description: '',
      rating: 3.25,
      price: 9.99,
    ),
    PlantModel(
      image: 'assets/images/pothos-type-plant.jpg',
      name: 'Pothos',
      description: '',
      rating: 4.00,
      price: 19.99,
    ),
  ];
  return plants;
}
