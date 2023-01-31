import 'package:flutter/material.dart';
import '../config/dimensions.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;

  const SizedText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final Size textSize = _textSize(text);
    final TextStyle style = TextStyle(
      fontSize: font(10),
      color: color,
      fontWeight: FontWeight.w500,
    );

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: style,
            maxLines: 1,
            overflow: TextOverflow.clip,
            softWrap: false,
          ),
          SizedBox(height: height(10)),
          Row(
            children: [
              for (int i = 0; i < textSize.width / 10.5; i++)
                i.isEven
                    ? Container(
                        width: 10,
                        height: 2,
                        color: color,
                      )
                    : Container(
                        width: 10,
                        height: 2,
                        color: Colors.white,
                      ),
            ],
          ),
        ],
      ),
    );
  }

  Size _textSize(String text) {
    final span = TextSpan(
      text: text,
      style: TextStyle(
        fontSize: font(10),
        fontWeight: FontWeight.w500,
      ),
    );

    final TextPainter textPainter = TextPainter(
      text: span,
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
