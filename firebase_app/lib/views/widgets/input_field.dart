import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextStyle inputStyle;
  final TextStyle hintStyle;
  final Color cursorColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;
  final String hint;
  final bool obscure;

  const InputField(
      {Key key,
      this.inputStyle,
      this.hintStyle,
      this.cursorColor,
      @required this.focusedBorderColor,
      @required this.enabledBorderColor,
      @required this.hint,
      @required this.obscure})
      : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscure,
      style: widget.inputStyle,
      cursorColor: widget.cursorColor,
      decoration: InputDecoration(
        // border: OutlineInputBorder(borderSide: BorderSide(color: darkTheme.primaryColor, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.focusedBorderColor)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.enabledBorderColor)),
        hintText: widget.hint,
        hintStyle: widget.hintStyle,
      ),
    );
  }
}
