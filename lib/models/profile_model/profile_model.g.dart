// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      id: json['id'] as int?,
      customerId: json['customerId'] as int?,
      firstName: json['firstName'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      lastCredentialUpdate: json['lastCredentialUpdate'] as String?,
      lastLoginDate: json['lastLoginDate'] as String?,
      status: json['status'] as String?,
      createdBy: json['createdBy'] as int?,
      updatedBy: json['updatedBy'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'firstName': instance.firstName,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'lastCredentialUpdate': instance.lastCredentialUpdate,
      'lastLoginDate': instance.lastLoginDate,
      'status': instance.status,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'token': instance.token,
    };
