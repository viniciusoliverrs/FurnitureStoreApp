import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/core/config/app_data.dart';

import '../../../data/models/card_model.dart';
import '../../common/common_appbar.dart';
import '../../theme/app_color.dart';
class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int selectedCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Checkout'),
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
                itemCount: AppData.cards.length,
                itemBuilder: (context, index) {
                  final _cart = AppData.cards[index];
                  return Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Image.asset(_cart.image.toString()),
                      title: Text(_cart.name.toString()),
                      subtitle: Text(_cart.numero.toString()),
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
