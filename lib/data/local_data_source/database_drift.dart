import 'dart:io';
import 'package:drift/native.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:testapp/data/core/enum/degree_enum.dart';
import 'package:testapp/data/core/enum/evolution.dart';
import 'package:testapp/data/local_data_source/experience_repository/abstract_class_experience.dart';
import 'package:testapp/data/models/competence.dart';
import 'package:testapp/data/models/experience.dart';
import 'package:testapp/data/models/formation.dart';
import 'package:testapp/data/models/language.dart';
import 'package:testapp/data/models/profile.dart';
import 'package:testapp/data/models/user.dart';
part 'database_drift.g.dart';

@DriftDatabase(
  tables: [Users, Experiences, Profiles, Formations, Skills, Langages],
)
class AppDataBase extends _$AppDataBase implements IExperienceRepository {
  AppDataBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  Future<List<Experiences>> getAllExperiences() {
    return select(
            experiences as ResultSetImplementation<HasResultSet, Experiences>)
        .get();
  }

  @override
  Stream<List<Experiences>> watchAllExperience() =>
      select(experiences as ResultSetImplementation<HasResultSet, Experiences>)
          .watch();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
