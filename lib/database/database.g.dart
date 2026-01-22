// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $HistoryItemsTable extends HistoryItems
    with TableInfo<$HistoryItemsTable, HistoryItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HistoryItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _resultMeta = const VerificationMeta('result');
  @override
  late final GeneratedColumn<String> result = GeneratedColumn<String>(
    'result',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, result, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'history_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<HistoryItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('result')) {
      context.handle(
        _resultMeta,
        result.isAcceptableOrUnknown(data['result']!, _resultMeta),
      );
    } else if (isInserting) {
      context.missing(_resultMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HistoryItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HistoryItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      result: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}result'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      ),
    );
  }

  @override
  $HistoryItemsTable createAlias(String alias) {
    return $HistoryItemsTable(attachedDatabase, alias);
  }
}

class HistoryItem extends DataClass implements Insertable<HistoryItem> {
  final int id;
  final String result;
  final DateTime? createdAt;
  const HistoryItem({required this.id, required this.result, this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['result'] = Variable<String>(result);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  HistoryItemsCompanion toCompanion(bool nullToAbsent) {
    return HistoryItemsCompanion(
      id: Value(id),
      result: Value(result),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory HistoryItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HistoryItem(
      id: serializer.fromJson<int>(json['id']),
      result: serializer.fromJson<String>(json['result']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'result': serializer.toJson<String>(result),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  HistoryItem copyWith({
    int? id,
    String? result,
    Value<DateTime?> createdAt = const Value.absent(),
  }) => HistoryItem(
    id: id ?? this.id,
    result: result ?? this.result,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
  );
  HistoryItem copyWithCompanion(HistoryItemsCompanion data) {
    return HistoryItem(
      id: data.id.present ? data.id.value : this.id,
      result: data.result.present ? data.result.value : this.result,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HistoryItem(')
          ..write('id: $id, ')
          ..write('result: $result, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, result, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HistoryItem &&
          other.id == this.id &&
          other.result == this.result &&
          other.createdAt == this.createdAt);
}

class HistoryItemsCompanion extends UpdateCompanion<HistoryItem> {
  final Value<int> id;
  final Value<String> result;
  final Value<DateTime?> createdAt;
  const HistoryItemsCompanion({
    this.id = const Value.absent(),
    this.result = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  HistoryItemsCompanion.insert({
    this.id = const Value.absent(),
    required String result,
    this.createdAt = const Value.absent(),
  }) : result = Value(result);
  static Insertable<HistoryItem> custom({
    Expression<int>? id,
    Expression<String>? result,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (result != null) 'result': result,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  HistoryItemsCompanion copyWith({
    Value<int>? id,
    Value<String>? result,
    Value<DateTime?>? createdAt,
  }) {
    return HistoryItemsCompanion(
      id: id ?? this.id,
      result: result ?? this.result,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (result.present) {
      map['result'] = Variable<String>(result.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HistoryItemsCompanion(')
          ..write('id: $id, ')
          ..write('result: $result, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $HistoryItemsTable historyItems = $HistoryItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [historyItems];
}

typedef $$HistoryItemsTableCreateCompanionBuilder =
    HistoryItemsCompanion Function({
      Value<int> id,
      required String result,
      Value<DateTime?> createdAt,
    });
typedef $$HistoryItemsTableUpdateCompanionBuilder =
    HistoryItemsCompanion Function({
      Value<int> id,
      Value<String> result,
      Value<DateTime?> createdAt,
    });

class $$HistoryItemsTableFilterComposer
    extends Composer<_$AppDatabase, $HistoryItemsTable> {
  $$HistoryItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get result => $composableBuilder(
    column: $table.result,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HistoryItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $HistoryItemsTable> {
  $$HistoryItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get result => $composableBuilder(
    column: $table.result,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HistoryItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HistoryItemsTable> {
  $$HistoryItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get result =>
      $composableBuilder(column: $table.result, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$HistoryItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HistoryItemsTable,
          HistoryItem,
          $$HistoryItemsTableFilterComposer,
          $$HistoryItemsTableOrderingComposer,
          $$HistoryItemsTableAnnotationComposer,
          $$HistoryItemsTableCreateCompanionBuilder,
          $$HistoryItemsTableUpdateCompanionBuilder,
          (
            HistoryItem,
            BaseReferences<_$AppDatabase, $HistoryItemsTable, HistoryItem>,
          ),
          HistoryItem,
          PrefetchHooks Function()
        > {
  $$HistoryItemsTableTableManager(_$AppDatabase db, $HistoryItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HistoryItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HistoryItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HistoryItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> result = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
              }) => HistoryItemsCompanion(
                id: id,
                result: result,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String result,
                Value<DateTime?> createdAt = const Value.absent(),
              }) => HistoryItemsCompanion.insert(
                id: id,
                result: result,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HistoryItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HistoryItemsTable,
      HistoryItem,
      $$HistoryItemsTableFilterComposer,
      $$HistoryItemsTableOrderingComposer,
      $$HistoryItemsTableAnnotationComposer,
      $$HistoryItemsTableCreateCompanionBuilder,
      $$HistoryItemsTableUpdateCompanionBuilder,
      (
        HistoryItem,
        BaseReferences<_$AppDatabase, $HistoryItemsTable, HistoryItem>,
      ),
      HistoryItem,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$HistoryItemsTableTableManager get historyItems =>
      $$HistoryItemsTableTableManager(_db, _db.historyItems);
}
