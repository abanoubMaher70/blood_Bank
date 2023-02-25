import 'package:blood_bank/Componants/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

// ignore: must_be_immutable
class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();
  String? valueSearch;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MyFormField(
        controller: _searchController,
        hintText: "Search for blood, requests, donate",
        value: valueSearch,
        keyboardType: TextInputType.text,
        setIcon: true,
        icon: const Icon(
          IconlyLight.search,
          color: Color(0xffDE0A1E),
        ),
      ),
    );
  }
}
