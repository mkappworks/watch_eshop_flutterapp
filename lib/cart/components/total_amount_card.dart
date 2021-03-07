import 'package:flutter/material.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

import 'total_amount_text.dart';

class TotalAmountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 60.0,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    addHorizontalSpace(10.0),
                    Text(
                      'Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TotalAmountText(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
