import 'package:drift/drift.dart';

@DataClassName("model")
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text().withLength(min: 5, max: 50)();
  TextColumn get password => text().withLength(min: 5, max: 50)();
  DateTimeColumn get createAt => dateTime().withDefault(currentDateAndTime)();
}
