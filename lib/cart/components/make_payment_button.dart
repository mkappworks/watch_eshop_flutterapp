import 'package:flutter/material.dart';
import 'package:watch_store_app/server/server.dart';

class MakePaymentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () async {
          final sessionId = await Server().createCheckout();
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('sessionID: $sessionId'),
            ),
          );
        },
        child: Container(
          height: 60.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(1),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Text(
                'Make Payment',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
