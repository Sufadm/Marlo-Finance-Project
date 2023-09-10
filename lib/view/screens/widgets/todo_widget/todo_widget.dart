import 'package:flutter/material.dart';
import 'package:marlo_project/view/utils/colors.dart';
import 'package:marlo_project/view/utils/fontstyle.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    super.key,
    required this.screenheight,
    required this.text,
    required this.icon,
    required this.color,
    required this.secondcolor,
  });

  final double screenheight;
  final String text;
  final Icon icon;
  final Color color;
  final Color secondcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          color,
          secondcolor,
        ]),
        borderRadius: BorderRadius.circular(10),
        color: kWhite,
      ),
      height: screenheight / 7,
      width: screenheight / 5.5,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10, top: 15),
            child: Center(
                child: CircleAvatar(
              radius: 25,
              child: icon,
            )),
          ),
          Text(
            text,
            style: notoSans,
          ),
        ],
      ),
    );
  }
}
