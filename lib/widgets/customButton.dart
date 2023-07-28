import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double borderRadius;
  var height;
  var width;
  final String text;
  TextStyle? textStyle;
  Color? backgroundColor;
  Function onPressed;
   CustomButton({Key? key, required this.borderRadius, required this.text,required this.backgroundColor,
   required this.height,required this.textStyle,required this.width,required this.onPressed}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: widget.backgroundColor),
          onPressed: (){
        widget.onPressed();
      }, child: Center(child: Text(widget.text,style: widget.textStyle,),)),
    );
  }
}
