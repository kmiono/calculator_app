import 'package:flutter/material.dart';

class AppConstants {
  // カラーテーマ
  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Colors.orange;
  static const Color backgroundColor = Colors.white;
  static const Color displayBackgroundColor = Colors.black87;
  static const Color displayTextColor = Colors.white;

  // ボタンカラー
  static final Color numberButtonColor = Colors.grey[300]!;
  static final Color operatorButtonColor = Colors.blue[300]!;
  static final Color clearButtonColor = Colors.red[300]!;
  static final Color backspaceButtonColor = Colors.orange[300]!;
  static final Color equalsButtonColor = Colors.green[400]!;

  // フォントサイズ
  static const double buttonFontSize = 24.0;
  static const double displayFontSize = 36.0;

  // パディング・マージン
  static const double buttonMargin = 4.0;
  static const double displayPadding = 20.0;
  static const double screenPadding = 10.0;

  // ボタンサイズ
  static const double buttonMinHeight = 60.0;
  static const double buttonMinWidth = 60.0;

  // ボーダー半径
  static const double borderRadius = 8.0;
  static const double displayBorderRadius = 10.0;

  // アニメーション
  static const Duration buttonAnimationDuration = Duration(milliseconds: 100);
}
