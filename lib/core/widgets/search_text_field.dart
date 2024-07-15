import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});


  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.all(15),
        hintText: 'What do you search for?',
        hintStyle:const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color:  Color.fromRGBO(6, 0, 79, 0.6),
        ),
        prefixIcon: IconButton(
          icon: Icon(
            Icons.search,
            size: 32,
            color: Theme.of(context).primaryColor.withOpacity(0.75),
          ),
          onPressed: () {},
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
