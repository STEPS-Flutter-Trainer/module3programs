import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/payment_controller.dart';

class PaymentView extends StatelessWidget {
  final PaymentController controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Razorpay Payment'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: controller.openCheckout,
          child: Text('Pay Now'),
        ),
      ),
    );
  }
}
