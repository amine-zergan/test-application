import 'package:drift/drift.dart';
import 'package:testapp/data/core/enumerate/evolution.dart';
import 'package:testapp/data/models/user.dart';

/// ---------  ------------- ///
/// name of skills : [list _String ]
/// value between [
///   basic-intermediate -advance- expert
/// ]

@DataClassName("skills")
class Skills extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get skill => text()();
  TextColumn get status => textEnum<Status>()();
  DateTimeColumn get createAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get userId => integer().references(Users, #id)();
}
