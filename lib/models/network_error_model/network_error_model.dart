// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:expense_tracking/models/models.dart';

part 'network_error_model.freezed.dart';

@freezed
class NetworkErrorModel with _$NetworkErrorModel {
  const factory NetworkErrorModel({
    required String title,
    required String description,
    int? statusCode,
    @Default(false) bool isVisible,
    @Default(ButtonModel(text: 'button.close')) ButtonModel buttonModel,
  }) = _NetworkErrorModel;
}
