// ignore_for_file: public_member_api_docs, sort_constructors_first, overridden_fields, annotate_overrides
import 'package:testapp/data/core/enum/evolution.dart';
import 'package:testapp/data/local_data_source/database_drift.dart';
import 'package:testapp/domain/entities/competance_entity.dart';

class CompetanceModel extends CompetanceEntity {
  final int? id;
  final String skill;
  final Status status;
  final DateTime createAt;
  final int userId;
  const CompetanceModel(
    this.userId, {
    this.id,
    required this.skill,
    required this.status,
    required this.createAt,
  }) : super(
            id: id,
            skills: skill,
            status: status,
            createAt: createAt,
            userId: userId);

  factory CompetanceModel.fromCompetanceTable(SkillsCompanion model) {
    return CompetanceModel(
      model.id.value,
      skill: model.skill.value,
      status: model.status.value,
      createAt: DateTime.now(),
    );
  }
}
