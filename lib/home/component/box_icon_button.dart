import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoxIconButton extends StatelessWidget {
  final String icon;
  final int numOfitem;
  final GestureTapCallback press;

  BoxIconButton({
    this.icon,
    this.press,
    this.numOfitem = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: 45.0,
            height: 45.0,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
            child: SvgPicture.asset(
              icon,
              color: Colors.grey,
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 16.0,
                width: 16.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
