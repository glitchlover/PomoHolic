// ignore_for_file: prefer_initializing_formals, overridden_fields, use_key_in_widget_constructors, must_be_immutable, file_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends AutoSizeText {
  MyText(this.data, {this.fontWeight, this.fontSize, this.color}) : super('');

  Color? color = Color.fromARGB(255, 189, 189, 190);
  double? fontSize = GFSize.SMALL;
  FontWeight? fontWeight = FontWeight.normal;

  @override
  final String data;
  Text text([double fontSize = 16]) {
    fontWeight = FontWeight.w500;
    return Text(
      data,
      style: textThemePoppins(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
  Text textt() {
    double fontSize = 18;
    fontWeight = FontWeight.w500;
    return Text(
      data,
      style: textThemePoppins(color, fontWeight, fontSize),
      maxLines: 2,
      // maxFontSize: 20,
      overflow: TextOverflow.ellipsis,
    );
  }

  AutoSizeText ttextt() {
    double fontSize = 45;
    fontWeight = FontWeight.w600;
    return AutoSizeText(
      data,
      style: textThemePoppins(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  AutoSizeText heading1() {
    fontWeight = FontWeight.bold;
    fontSize = 30;
    return AutoSizeText(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  Widget heading2() {
    fontWeight = FontWeight.w600;
    fontSize = 25;
    return AutoSizeText(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  AutoSizeText heading3() {
    fontWeight = FontWeight.w600;
    fontSize = 20;
    return AutoSizeText(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  static TextStyle textThemePoppins(
      Color? color, FontWeight? fontWeight, double? fontSize) {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            overflow: TextOverflow.ellipsis));
  }

  String sString() {
    return 'MText(data: $data, color: $color, fontWeight: $fontWeight, fontSize: $fontSize)';
  }
}
