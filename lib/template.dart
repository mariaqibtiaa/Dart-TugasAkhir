import 'package:flutter/material.dart';
import 'textstyle.dart';

class template extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String npm;

  template({this.imageUrl, this.name, this.npm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextstyle,
              ),
              Text(
                npm,
                style: subtitleTextstyle.copyWith(
                    color: blackcolor, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ],
      ),
    );
  }
}
