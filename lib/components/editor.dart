import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controller;
  final String? rotulo;
  final String? hint;
  final IconData? iconData;

  const Editor(
      {Key? key, this.controller, this.iconData, this.hint, this.rotulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
            icon: iconData != null
                ? Icon(
              iconData,
              color: Colors.grey,
            )
                : null,
            labelText: rotulo,
            hintText: hint,
            labelStyle: const TextStyle(color: Colors.grey),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 3),
            )),
      ),
    );
  }
}
