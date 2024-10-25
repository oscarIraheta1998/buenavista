import 'package:buenavista/system/global_var.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

Widget scroll(
    ScrollController _scrollController, _ScrollDirection, Widget conten) {
  return RawScrollbar(
    controller: _scrollController,
    thickness: 8.0, // Set thickness of the scrollbar
    radius: const Radius.circular(20.0),
    thumbVisibility: true,
    trackVisibility: true,
    thumbColor: MyColor.primariColor,
    trackColor: MyColor.segunColor,
    child: SingleChildScrollView(
      scrollDirection: _ScrollDirection,
      controller: _scrollController,
      child: conten,
    ),
  );
}
