import 'package:flutter/material.dart';

Widget buildField({
  required String hint,
  required IconData icon,
  required TextEditingController controller,
  bool obscure = false,
  Widget? suffix,
  String? Function(String?)? validate,
}){
  return Padding(
    padding:  const EdgeInsets.all(8.0),
    child: TextFormField(
      obscureText: obscure,
      controller: controller,
      validator: validate,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, color: Colors.grey,),
        suffixIcon: suffix,
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        )
      ),
    ),
  );
}