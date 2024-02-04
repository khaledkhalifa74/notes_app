import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines=1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        } else {
          return null;
        }
      },
      textAlignVertical: TextAlignVertical.center,
      maxLines: maxLines,
      style: const TextStyle(
        color: Colors.tealAccent,
      ),
      cursorColor: Colors.tealAccent,
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: Colors.tealAccent,
          ),
        ),
      ),
    );
  }
}
