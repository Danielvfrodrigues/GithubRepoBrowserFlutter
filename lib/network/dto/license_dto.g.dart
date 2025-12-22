// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LicenseDto _$LicenseDtoFromJson(Map<String, dynamic> json) => LicenseDto(
      key: json['key'] as String,
      name: json['name'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LicenseDtoToJson(LicenseDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'url': instance.url,
    };
