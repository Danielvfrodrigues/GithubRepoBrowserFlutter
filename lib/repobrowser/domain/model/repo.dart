
import 'license.dart';
import 'owner.dart';

class Repo {
  final int id;
  final String name;
  final String fullName;
  final String cloneUrl;
  final String? defaultBranch;
  final String? description;
  final String? language;
  final int stars;
  final int forks;
  final int watchers;
  final int openIssues;
  final String htmlUrl;
  final List<String> topics;
  final License? license;
  final DateTime createdAt;
  final DateTime pushedAt;
  final DateTime updatedAt;
  final Owner owner;
  final int size;

  const Repo({
    required this.id,
    required this.name,
    required this.fullName,
    required this.cloneUrl,
    required this.defaultBranch,
    required this.description,
    required this.language,
    required this.stars,
    required this.forks,
    required this.watchers,
    required this.openIssues,
    required this.htmlUrl,
    required this.topics,
    required this.license,
    required this.createdAt,
    required this.pushedAt,
    required this.updatedAt,
    required this.owner,
    required this.size,
  });
}