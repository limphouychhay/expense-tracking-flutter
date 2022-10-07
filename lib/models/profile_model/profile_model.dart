// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    int? id,
    int? customerId,
    String? firstName,
    String? lastname,
    String? phone,
    String? lastCredentialUpdate,
    String? lastLoginDate,
    String? status,
    int? createdBy,
    int? updatedBy,
    String? token,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
