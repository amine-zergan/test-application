// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:testapp/data/core/enumerate/evolution.dart';

class CompetanceEntity {
  final int? id;
  final String skills;
  final Status status;
  final DateTime createAt;
  final int userId;
  CompetanceEntity({
    this.id,
    required this.skills,
    required this.status,
    required this.createAt,
    required this.userId,
  });
}
