import 'package:json_annotation/json_annotation.dart';

part 'license_dto.g.dart';

@JsonSerializable()
class LicenseDto {
  final String key;
  final String name;
  final String? url;

  const LicenseDto({
    required this.key,
    required this.name,
    required this.url,
  });

  factory LicenseDto.fromJson(Map<String, dynamic> json) => _$LicenseDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LicenseDtoToJson(this);
}