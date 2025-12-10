import 'package:json_annotation/json_annotation.dart';

part 'owner_dto.g.dart';

@JsonSerializable()
class OwnerDto {
  final String login;

  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  final String type;

  const OwnerDto({
    required this.login,
    required this.avatarUrl,
    required this.type,
  });

  factory OwnerDto.fromJson(Map<String, dynamic> json) => _$OwnerDtoFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerDtoToJson(this);
}