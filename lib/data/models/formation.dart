import 'package:drift/drift.dart';
import 'package:testapp/data/core/enumerate/degree_enum.dart';
import 'package:testapp/data/models/user.dart';

@DataClassName("formations")
class Formations extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get status => textEnum<Degree>()();
  TextColumn get diplomat => text()();
  DateTimeColumn get started => dateTime()();
  DateTimeColumn get completed => dateTime().nullable()();
  DateTimeColumn get createAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get userId => integer().references(Users, #id)();
}
