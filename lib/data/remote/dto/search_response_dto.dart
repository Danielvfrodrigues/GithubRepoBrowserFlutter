import 'package:json_annotation/json_annotation.dart';
import 'repo_dto.dart';

part 'search_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchResponseDto {
  @JsonKey(name: 'total_count')
  final int totalCount;

  final List<RepoDto> items;

  const SearchResponseDto({
    required this.totalCount,
    required this.items,
  });

  factory SearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseDtoToJson(this);
}