import 'package:flutter/material.dart';
import '../utils/consts.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int int) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: Const.margin,
            vertical: Const.margin / 2,
          ),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Const.blackColor.withOpacity(0.04),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Const.whiteColor.withOpacity(0.3),
                  ),
                ),
              ),
              Positioned(
                bottom: Const.padding,
                left: Const.padding,
                child: Container(
                  height: 30,
                  width: 100,
                  decoration:
                      BoxDecoration(color: Const.whiteColor.withOpacity(0.3)),
                ),
              ),
              Positioned(
                right: Const.padding,
                bottom: Const.padding,
                child: Container(
                  height: 30,
                  width: 100,
                  decoration:
                      BoxDecoration(color: Const.whiteColor.withOpacity(0.3)),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: Const.padding,
        );
      },
      itemCount: 5,
    );
  }
}
