import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module3programs/razorpay-sample/view/payment_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Razorpay Payment',
      home: PaymentView(),
    );
  }
}
