import 'dart:io';
import 'package:drift/native.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:testapp/data/core/enumerate/degree_enum.dart';
import 'package:testapp/data/core/enumerate/evolution.dart';
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
class AppDataBase extends _$AppDataBase {
  AppDataBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
