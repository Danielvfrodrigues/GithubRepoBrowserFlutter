import 'package:github_repo_browser_flutter/network/dto/repo_dto.dart';
import 'package:github_repo_browser_flutter/repobrowser/data/mapper/license_mapper.dart';
import 'package:github_repo_browser_flutter/repobrowser/data/mapper/owner_mapper.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';

extension RepoDtoMapper on RepoDto {
  Repo toModel() {
    return Repo(
      id: id,
      name: name,
      fullName: fullName,
      cloneUrl: cloneUrl,
      defaultBranch: defaultBranch,
      description: description,
      language: language,
      stars: stargazersCount,
      forks: forksCount,
      watchers: watchersCount,
      openIssues: openIssuesCount,
      htmlUrl: htmlUrl,
      topics: topics ?? [],
      license: license?.toModel(),
      createdAt: DateTime.parse(createdAt),
      pushedAt: DateTime.parse(pushedAt),
      updatedAt: DateTime.parse(updatedAt),
      owner: owner.toModel(),
      size: size,
    );
  }
}
