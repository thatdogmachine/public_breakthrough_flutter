import 'package:flutter/material.dart';
import 'package:my_flutter_app/variables_constants.dart';

var myHomePageTitle = RichText(
  text: const TextSpan(
    children: [
      TextSpan(
        text: 'break',
        style: TextStyle(
            color: colorBrandingColor1,
            fontWeight: defaultTitleFontWeight,
            fontSize: defaultTitleFontSize),
      ),
      TextSpan(
        text: 'through ',
        style: TextStyle(
            color: colorSchemeOnSurface,
            fontWeight: defaultTitleFontWeight,
            fontSize: defaultTitleFontSize),
      ),
      TextSpan(
        text: 'CV builder',
        style: TextStyle(
            color: colorSchemeOnSurface,
            fontWeight: defaultTitleFontWeight,
            fontSize: defaultTitleFontSize),
      ),
    ],
  ),
);

var courseActivitiesPageTitle = RichText(
  text: const TextSpan(
    children: [
      TextSpan(
        text: 'break',
        style: TextStyle(
            color: colorBrandingColor1,
            fontWeight: defaultTitleFontWeight,
            fontSize: defaultTitleFontSize),
      ),
      TextSpan(
        text: 'through ',
        style: TextStyle(
            color: colorSchemeOnSurface,
            fontWeight: defaultTitleFontWeight,
            fontSize: defaultTitleFontSize),
      ),
      TextSpan(
        text: 'course activities',
        style: TextStyle(
            color: colorSchemeOnSurface,
            fontWeight: defaultTitleFontWeight,
            fontSize: defaultTitleFontSize),
      ),
    ],
  ),
);
