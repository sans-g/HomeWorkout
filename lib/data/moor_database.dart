import 'package:moor_flutter/moor_flutter.dart';
part 'moor_database.g.dart';

class ReminderTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get time => text()();
  BoolColumn get isReminderActive => boolean().withDefault(Constant(false))();
}

@UseMoor(tables: [ReminderTable])
class ReminderDatabase extends _$ReminderDatabase {
  ReminderDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
          path: "db.sqlite",
          logStatements: true,
        ));
  int get schemaVersion => 1;
  Future<List<ReminderTableData>> getAllReminder() =>
      select(reminderTable).get();
  Stream<List<ReminderTableData>> watchAllOrder() =>
      select(reminderTable).watch();
  Future insertNewReminder(ReminderTableData reminder) =>
      into(reminderTable).insert(reminder);
  Future deleteReminder(ReminderTableData reminder) =>
      delete(reminderTable).delete(reminder);
  Future updateReminder(ReminderTableData reminder) =>
      update(reminderTable).replace(reminder);
}
