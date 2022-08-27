import 'package:flutter/material.dart';
import 'package:signal_project/data/models/signal.dart';

Widget signalWidget(Signal signal) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(image: AssetImage(signal.image)),
      ),
      SizedBox(height: 10),
      Text(
        signal.name,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart,
            color: Colors.red,
          ),
          Text(
            signal.buy,
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(width: 30),
          Text(
            signal.sale,
            style: TextStyle(color: Colors.green),
          ),
          Icon(
            Icons.currency_bitcoin_sharp,
            color: Colors.green,
          ),
        ],
      ),
      Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    ],
  );
}
