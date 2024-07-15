
import 'package:flutter/material.dart';
import 'package:task_route/core/widgets/search_text_field.dart';

class SearchBarWithCart extends StatelessWidget {
  const SearchBarWithCart({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchTextField()),
        const SizedBox(width: 24),
        InkWell(
          onTap: () {},
          child: ImageIcon(
            const AssetImage('assets/images/cart_icon.png'),
            size: 28,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
