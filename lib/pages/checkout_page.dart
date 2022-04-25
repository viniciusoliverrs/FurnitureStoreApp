import 'package:flutter/material.dart';

import '../model/card_model.dart';
import '../theme/app_color.dart';
import '../widgets/appbar_widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int selectedCard = 0;
  final List<CardModel> _cards = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Checkout'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("shipping address"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Edit"),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("milan jack"),
                Text("64 jogonath house, sylhet"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Payment method"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Add new card"),
                ),
              ],
            ),
            Flexible(
              flex: 1,
              child: ListView.builder(
                itemCount: _cards.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Image.asset(_cards[index].image.toString()),
                      title: Text(_cards[index].name.toString()),
                      subtitle: Text(_cards[index].numero.toString()),
                      selected: selectedCard == index,
                      selectedColor: AppColor.red,
                      trailing: Checkbox(
                        shape: const CircleBorder(),
                        value: selectedCard == index,
                        onChanged: (value) {
                          setState(() {
                            selectedCard = index;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
