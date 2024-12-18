import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/widgets/custom_text_field.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
    required this.searchtext,
  });

  final TextEditingController searchtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: CustomTextField(
        pefixIcon: FontAwesomeIcons.search,
        controller: searchtext,
        hint: 'قم بالبحث...',
        hinttextcolor: AppConstants.balck200,
      ),
    );
  }
}
