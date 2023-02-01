import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/small_text.dart';

class RadioTileWidget extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool val;
  const RadioTileWidget(
      {super.key, required this.onTap, required this.text, required this.val});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height(10)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                  shape: BoxShape.circle,
                  color: val ? Colors.green : Colors.transparent),
              child: Padding(
                padding: EdgeInsets.all(height(2)),
                child: val
                    ? Icon(
                        Icons.check,
                        size: height(14),
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.check_box_outline_blank,
                        size: height(14),
                        color: Colors.transparent,
                      ),
              ),
            ),
            SizedBox(width: width(10)),
            Container(
              width: width(250),
              child: SmallText(text: text),
            ),
          ],
        ),
      ),
    );
  }
}
