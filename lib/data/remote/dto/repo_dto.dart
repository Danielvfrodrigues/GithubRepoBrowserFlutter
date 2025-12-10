import 'package:json_annotation/json_annotation.dart';
import 'owner_dto.dart';
import 'license_dto.dart';

part 'repo_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class RepoDto {
  final int id;
  final String name;

  @JsonKey(name: 'full_name')
  final String fullName;

  @JsonKey(name: 'clone_url')
  final String cloneUrl;

  @JsonKey(name: 'default_branch')
  final String? defaultBranch;

  final String? description;
  final String? language;

  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;

  @JsonKey(name: 'forks_count')
  final int forksCount;

  @JsonKey(name: 'watchers_count')
  final int watchersCount;

  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;

  @JsonKey(name: 'html_url')
  final String htmlUrl;

  final List<String>? topics;

  final LicenseDto? license;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'pushed_at')
  final String pushedAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  final OwnerDto owner;
  final int size;

  const RepoDto({
    required this.id,
    required this.name,
    required this.fullName,
    required this.cloneUrl,
    required this.defaultBranch,
    required this.description,
    required this.language,
    required this.stargazersCount,
    required this.forksCount,
    required this.watchersCount,
    required this.openIssuesCount,
    required this.htmlUrl,
    required this.topics,
    required this.license,
    required this.createdAt,
    required this.pushedAt,
    required this.updatedAt,
    required this.owner,
    required this.size,
  });

  factory RepoDto.fromJson(Map<String, dynamic> json) => _$RepoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$RepoDtoToJson(this);
}
