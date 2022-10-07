// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_model.freezed.dart';

@freezed
class ButtonModel with _$ButtonModel {
  const factory ButtonModel({
    @Default('button.close') String text,
    @Default(false) bool isTransparent,
    Widget? icon,
    Function? onPress,
    FontWeight? fontWeight,
    Color? color,
  }) = _ButtonModel;
}
