import 'package:drift/drift.dart';
import 'package:testapp/data/models/user.dart';

/// ----------- experience model ----------- ///
/// date :
///     start : year / month
///     end   : year/month
/// title       : in job occupied
/// description  : principal tasks in work.

@DataClassName("experiences")
class Experiences extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  DateTimeColumn get started => dateTime()();
  DateTimeColumn get completed => dateTime().nullable()();
  BoolColumn get current => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get userId => integer().references(Users, #id)();
}
