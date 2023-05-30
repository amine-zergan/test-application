// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:testapp/data/core/enum/evolution.dart';

class CompetanceEntity extends Equatable {
  final int? id;
  final String skills;
  final Status status;
  final DateTime createAt;
  final int userId;
  const CompetanceEntity({
    this.id,
    required this.skills,
    required this.status,
    required this.createAt,
    required this.userId,
  });

  @override
  List<Object?> get props => [skills, status, id];
}
