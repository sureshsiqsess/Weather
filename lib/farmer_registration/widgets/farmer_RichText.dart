import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArimaRichText extends StatelessWidget {
  ArimaRichText(this.data,
      {Key? key,
      this.data2,
      this.width,
      this.height,
      this.fontWeight,
      this.fontWeight2,
      this.textAlign,
      this.underline,
      this.fontSize,
      this.fontSize2,
      this.overflow,
      this.color,
      this.color2,
      this.maxLine,
      this.fontStyle})
      : super(key: key);
  final String? data;
  final String? data2;
  final double? width;
  final double? height;
  final FontWeight? fontWeight;
  final FontWeight? fontWeight2;
  final TextAlign? textAlign;
  final bool? underline;
  final double? fontSize;
  final double? fontSize2;
  final TextOverflow? overflow;
  final Color? color;
  final int? maxLine;
  final Color? color2;
  final FontStyle? fontStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 7),
        alignment: Alignment.centerLeft,
        width: this.width,
        height: this.height,
        child: RichText(
          softWrap: true,
          overflow: TextOverflow.fade,
          maxLines: this.maxLine,
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: this.data,
                style: GoogleFonts.lato(
                    fontSize: this.fontSize != null
                        ? this.fontSize
                        : MediaQuery.of(context).size.width * 0.04,
                    color: this.color != null
                        ? this.color
                        : (this.fontWeight != null
                            ? Theme.of(context).textTheme.subtitle?.color
                            : Theme.of(context).textTheme.subtitle?.color),
                    fontStyle: this.fontStyle,
                    fontWeight: this.fontWeight,
                    decoration: this.underline != null && this.underline!
                        ? TextDecoration.underline
                        : TextDecoration.none)),
            TextSpan(
                text: this.data2 != null ? this.data2 : "",
                style: TextStyle(
                    fontSize: this.fontSize2 != null ? this.fontSize2 : 15,
                    color: this.color2 != null
                        ? this.color2
                        : (this.fontWeight != null ? Colors.black : null),
                    fontStyle: this.fontStyle,
                    fontWeight: this.fontWeight2,
                    decoration: this.underline != null && this.underline!
                        ? TextDecoration.underline
                        : TextDecoration.none)),
          ]),
        ));
  }
}
