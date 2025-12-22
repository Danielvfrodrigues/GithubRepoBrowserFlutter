// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponseDto _$SearchResponseDtoFromJson(Map<String, dynamic> json) =>
    SearchResponseDto(
      totalCount: (json['total_count'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => RepoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseDtoToJson(SearchResponseDto instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
