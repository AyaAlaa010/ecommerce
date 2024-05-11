import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class BorderRoundedButton extends StatefulWidget {
  final String ?title;
  final  Function() ? onPressed;
  final TextStyle  ?  textStyle;
  const BorderRoundedButton({super.key,this.onPressed,this.title,this.textStyle});

  @override
  State<BorderRoundedButton> createState() => _BorderRoundedButtonState();
}

class _BorderRoundedButtonState extends State<BorderRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return  Bounceable(
      onTap: widget.onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        decoration:const  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
        ),

        child: Text(widget.title.toString(),style: widget.textStyle,),

      ),
    );
  }
}
