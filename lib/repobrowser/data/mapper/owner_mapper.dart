import 'package:github_repo_browser_flutter/network/dto/owner_dto.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/owner.dart';

extension OwnerDtoMapper on OwnerDto {
  Owner toModel() {
    return Owner(
      login: login,
      avatarUrl: avatarUrl,
      type: type,
    );
  }
}