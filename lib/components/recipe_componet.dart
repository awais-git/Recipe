import 'package:flutter/material.dart';
import '../utils/consts.dart';

class Component extends StatelessWidget {
  final IconData icon;
  final String title;
  const Component({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Const.padding,
        vertical: Const.padding,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Const.blackColor.withOpacity(0.1)),
        color: Const.whiteColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Const.redColor,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Const.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
