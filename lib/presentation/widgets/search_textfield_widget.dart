import 'package:flutter/material.dart';
import 'package:shopywell/utils/theme.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppTheme.borderColor,
            blurRadius: 3,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: AppTheme.white,
          filled: true,
          hintText: "Search any product..",
          hintStyle: Theme.of(context).textTheme.displaySmall,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: AppTheme.lightColor,
          ),
          suffixIcon: Icon(Icons.mic_none, color: AppTheme.lightColor),
        ),
      ),
    );
  }
}
