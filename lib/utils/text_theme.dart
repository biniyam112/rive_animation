// text style definition
import 'package:flutter/material.dart';

const customTheme = TextTheme(
  titleLarge: kTitleTextStyle,
  titleMedium: kSubtitleTextStyle,
  bodyLarge: kBodyTextStyle,
  bodyMedium: kCaptionTextStyle,
  bodySmall: kSmallTextStyle,
);

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 36.0,
  fontWeight: FontWeight.bold,
  color: Colors.black87,
);

const TextStyle kSubtitleTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: Colors.black87,
);

const TextStyle kBodyTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: Colors.black87,
);

const TextStyle kCaptionTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  color: Colors.black87,
);

const TextStyle kSmallTextStyle = TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w400,
  color: Colors.black87,
);
