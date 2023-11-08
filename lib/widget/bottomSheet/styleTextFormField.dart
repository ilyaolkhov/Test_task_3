import 'package:flutter/material.dart';
import 'package:test_task/theme/theme.dart';

class CustomStyleTextField extends StatelessWidget {
  final text;
  final controller;
  const CustomStyleTextField({super.key,  required this.text, required this.controller});

  @override
  Widget build(BuildContext context,) {
    return Expanded(
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: TextFormField(controller: controller,
                      decoration: InputDecoration(
                        labelText: text,
                        labelStyle: TextStyle(color: midGrey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(width: 1, color: Color(0xFFD9E2F1)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(width: 1, color: Color(0xFFD9E2F1)),
                        ),
                      ),
                    ),
                  ),
                );
  }
}


