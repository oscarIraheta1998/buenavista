import 'package:flutter/material.dart';

formItemsDesign(icon, item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: ListTile(leading: Icon(icon, color: Colors.white,), title: item),
    );
  }

Widget textFormField(_controller, String _labelText, _keyboardType, _maxLength, _validator, Color ColorTextFromFiel){
  return TextFormField(
    style: TextStyle(color: ColorTextFromFiel),
    controller: _controller,
    decoration: InputDecoration(
      labelText: _labelText,
      labelStyle: TextStyle(color: ColorTextFromFiel),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorTextFromFiel),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white70),
      ),
    ),
    keyboardType: _keyboardType,
    maxLength: _maxLength,
    validator: _validator,
  );
}
Widget passwordTextFormField(_controller, String _labelText, _validator){
  return TextFormField(
    controller: _controller,
    obscureText: true,
    decoration: InputDecoration(
      labelText: _labelText,
    ),
    validator: _validator,
  );
}