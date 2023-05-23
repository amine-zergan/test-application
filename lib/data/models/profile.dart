import 'package:drift/drift.dart';
import 'package:testapp/data/models/user.dart';

/// --------- Profile ------------- ///
/// email address -------
/// photo --------
/// contact ------
/// address -----
/// code postal ---------
@DataClassName("profile")
class Profiles extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get contact => text().withLength(min: 8, max: 8)();
  TextColumn get address => text()();
  BlobColumn get image => blob()();
  DateTimeColumn get createAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get userId => integer().references(Users, #id)();
}
