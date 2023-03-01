import 'package:build_with_angga/models/guide.dart';
import 'package:build_with_angga/theme.dart';
import 'package:flutter/material.dart';

class TipsGuide extends StatelessWidget {
  final Guide guide;
  TipsGuide(this.guide);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          guide.imageUrl ?? "",
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              guide.title ?? "",
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated at ${guide.updatedAt ?? ""}',
              style: greyTextStyle,
            )
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: greyColor,
            ))
      ],
    );
  }
}
