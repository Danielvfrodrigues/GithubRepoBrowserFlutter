// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerDto _$OwnerDtoFromJson(Map<String, dynamic> json) => OwnerDto(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$OwnerDtoToJson(OwnerDto instance) => <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'type': instance.type,
    };
