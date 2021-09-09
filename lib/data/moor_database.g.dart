// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ReminderTableData extends DataClass
    implements Insertable<ReminderTableData> {
  final int id;
  final String time;
  final bool isReminderActive;
  ReminderTableData(
      { this.id,
      @required this.time,
      @required this.isReminderActive});
  factory ReminderTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ReminderTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      time: stringType.mapFromDatabaseResponse(data['${effectivePrefix}time']),
      isReminderActive: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}is_reminder_active']),
    );
  }
  factory ReminderTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ReminderTableData(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<String>(json['time']),
      isReminderActive: serializer.fromJson<bool>(json['isReminderActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<String>(time),
      'isReminderActive': serializer.toJson<bool>(isReminderActive),
    };
  }

  @override
  ReminderTableCompanion createCompanion(bool nullToAbsent) {
    return ReminderTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      isReminderActive: isReminderActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isReminderActive),
    );
  }

  ReminderTableData copyWith({int id, String time, bool isReminderActive}) =>
      ReminderTableData(
        id: id ?? this.id,
        time: time ?? this.time,
        isReminderActive: isReminderActive ?? this.isReminderActive,
      );
  @override
  String toString() {
    return (StringBuffer('ReminderTableData(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('isReminderActive: $isReminderActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(id.hashCode, $mrjc(time.hashCode, isReminderActive.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ReminderTableData &&
          other.id == this.id &&
          other.time == this.time &&
          other.isReminderActive == this.isReminderActive);
}

class ReminderTableCompanion extends UpdateCompanion<ReminderTableData> {
  final Value<int> id;
  final Value<String> time;
  final Value<bool> isReminderActive;
  const ReminderTableCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.isReminderActive = const Value.absent(),
  });
  ReminderTableCompanion.insert({
    this.id = const Value.absent(),
    @required String time,
    this.isReminderActive = const Value.absent(),
  }) : time = Value(time);
  ReminderTableCompanion copyWith(
      {Value<int> id, Value<String> time, Value<bool> isReminderActive}) {
    return ReminderTableCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      isReminderActive: isReminderActive ?? this.isReminderActive,
    );
  }
}

class $ReminderTableTable extends ReminderTable
    with TableInfo<$ReminderTableTable, ReminderTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ReminderTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedTextColumn _time;
  @override
  GeneratedTextColumn get time => _time ??= _constructTime();
  GeneratedTextColumn _constructTime() {
    return GeneratedTextColumn(
      'time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isReminderActiveMeta =
      const VerificationMeta('isReminderActive');
  GeneratedBoolColumn _isReminderActive;
  @override
  GeneratedBoolColumn get isReminderActive =>
      _isReminderActive ??= _constructIsReminderActive();
  GeneratedBoolColumn _constructIsReminderActive() {
    return GeneratedBoolColumn('is_reminder_active', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, time, isReminderActive];
  @override
  $ReminderTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'reminder_table';
  @override
  final String actualTableName = 'reminder_table';
  @override
  VerificationContext validateIntegrity(ReminderTableCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.time.present) {
      context.handle(
          _timeMeta, time.isAcceptableValue(d.time.value, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (d.isReminderActive.present) {
      context.handle(
          _isReminderActiveMeta,
          isReminderActive.isAcceptableValue(
              d.isReminderActive.value, _isReminderActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReminderTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ReminderTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ReminderTableCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.time.present) {
      map['time'] = Variable<String, StringType>(d.time.value);
    }
    if (d.isReminderActive.present) {
      map['is_reminder_active'] =
          Variable<bool, BoolType>(d.isReminderActive.value);
    }
    return map;
  }

  @override
  $ReminderTableTable createAlias(String alias) {
    return $ReminderTableTable(_db, alias);
  }
}

abstract class _$ReminderDatabase extends GeneratedDatabase {
  _$ReminderDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ReminderTableTable _reminderTable;
  $ReminderTableTable get reminderTable =>
      _reminderTable ??= $ReminderTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [reminderTable];
}
