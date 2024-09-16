import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed
  });
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: TextButton(onPressed:onPressed
    , child: Text('add'),),);
  }
}
