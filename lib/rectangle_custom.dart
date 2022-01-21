import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RectangleCustom extends CustomPainter {
  final Color color;
  final String? name;
  final String? family;

  RectangleCustom({
    required final this.color,
    final this.name = '',
    final this.family = '',
  });

  @override
  void paint(final Canvas canvas, final Size size) {
    final paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas
      ..drawRect(Offset.zero & Size(size.width, size.height), paint1)
      ..drawCircle(Offset(0, size.height / 3), 100, paint1);

    final TextSpan textSpanName = TextSpan(
        style: style(),
        text: name);
    final TextSpan textSpanFamily = TextSpan(
        style: style(),
        text: family);
    final TextPainter tp = TextPainter(
        text: textSpanName,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);

    final TextPainter tp2 = TextPainter(
        text: textSpanFamily,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp2.layout();
    tp.paint(canvas, Offset(-30, size.height / 4.2));

    //tp2.paint(canvas, Offset(-50, (size.height / 4.1)+50));
  }

  TextStyle style() => GoogleFonts.poppins(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal);

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => true;
}
