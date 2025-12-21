import 'package:github_repo_browser_flutter/network/dto/license_dto.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/license.dart';

extension LicenseDtoMapper on LicenseDto {
  License toModel() {
    return License(
      key: key,
      name: name,
      url: url,
    );
  }
}