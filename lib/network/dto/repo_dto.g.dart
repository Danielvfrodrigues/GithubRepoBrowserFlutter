// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepoDto _$RepoDtoFromJson(Map<String, dynamic> json) => RepoDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      cloneUrl: json['clone_url'] as String,
      defaultBranch: json['default_branch'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      forksCount: (json['forks_count'] as num).toInt(),
      watchersCount: (json['watchers_count'] as num).toInt(),
      openIssuesCount: (json['open_issues_count'] as num).toInt(),
      htmlUrl: json['html_url'] as String,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      license: json['license'] == null
          ? null
          : LicenseDto.fromJson(json['license'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
      pushedAt: json['pushed_at'] as String,
      updatedAt: json['updated_at'] as String,
      owner: OwnerDto.fromJson(json['owner'] as Map<String, dynamic>),
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$RepoDtoToJson(RepoDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'clone_url': instance.cloneUrl,
      'default_branch': instance.defaultBranch,
      'description': instance.description,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'forks_count': instance.forksCount,
      'watchers_count': instance.watchersCount,
      'open_issues_count': instance.openIssuesCount,
      'html_url': instance.htmlUrl,
      'topics': instance.topics,
      'license': instance.license?.toJson(),
      'created_at': instance.createdAt,
      'pushed_at': instance.pushedAt,
      'updated_at': instance.updatedAt,
      'owner': instance.owner.toJson(),
      'size': instance.size,
    };
