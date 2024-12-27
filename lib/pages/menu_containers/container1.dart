import 'package:flutter/material.dart';
class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: size.height
      ),
      child: Center(
        child: Text("Menu"),
      ),
    );
  }
}
