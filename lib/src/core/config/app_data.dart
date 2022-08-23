import '../../data/models/card_model.dart';
import '../../data/models/product_model.dart';

class AppData {
  static final List<CardModel> cards = [
    CardModel(
      numero: '**** **** **** 3456',
      cvv: 123,
      name: 'Juan Perez',
      expiry: '12/20',
      type: 'Visa',
      image: 'assets/images/flags/paypal.png',
    ),
    CardModel(
      numero: '**** **** **** 3456',
      cvv: 123,
      name: 'Juan Perez',
      expiry: '12/20',
      type: 'Visa',
      image: 'assets/images/flags/mastercard.png',
    ),
  ];

  static final List<ProductModel> products = [
    ProductModel(
      title: 'Cadeira 1',
      imagePath: 'assets/images/chair1.jpg',
      price: 200.0,
    ),
    ProductModel(
      title: 'Cadeira 2',
      imagePath: 'assets/images/chair2.jpg',
      price: 300.0,
    ),
  ];
}
