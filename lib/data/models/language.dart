import 'package:drift/drift.dart';
import 'package:testapp/data/core/enum/evolution.dart';
import 'package:testapp/data/models/user.dart';

/// --------- Langages ------------- ///
/// name of langage : [list _String ]
/// value between [
///   basic-intermediate -advance- expert
/// ]

@DataClassName("langages")
class Langages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get langage => text()();
  TextColumn get status => textEnum<Status>()();
  DateTimeColumn get createAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get userId => integer().references(Users, #id)();
}
