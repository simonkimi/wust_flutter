// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ClassModelDao _classModelDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ClassEntity` (`id` INTEGER, `className` TEXT, `teacher` TEXT, `classId` TEXT, `classRoom` TEXT, `startWeek` INTEGER, `endWeek` INTEGER, `week` INTEGER, `startTime` INTEGER, `lastTime` INTEGER, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ClassModelDao get classModelDao {
    return _classModelDaoInstance ??= _$ClassModelDao(database, changeListener);
  }
}

class _$ClassModelDao extends ClassModelDao {
  _$ClassModelDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _classEntityInsertionAdapter = InsertionAdapter(
            database,
            'ClassEntity',
            (ClassEntity item) => <String, dynamic>{
                  'id': item.id,
                  'className': item.className,
                  'teacher': item.teacher,
                  'classId': item.classId,
                  'classRoom': item.classRoom,
                  'startWeek': item.startWeek,
                  'endWeek': item.endWeek,
                  'week': item.week,
                  'startTime': item.startTime,
                  'lastTime': item.lastTime
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _classEntityMapper = (Map<String, dynamic> row) => ClassEntity(
      row['id'] as int,
      row['className'] as String,
      row['teacher'] as String,
      row['classId'] as String,
      row['classRoom'] as String,
      row['startWeek'] as int,
      row['endWeek'] as int,
      row['week'] as int,
      row['startTime'] as int,
      row['lastTime'] as int);

  final InsertionAdapter<ClassEntity> _classEntityInsertionAdapter;

  @override
  Future<List<ClassEntity>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM ClassEntity',
        mapper: _classEntityMapper);
  }

  @override
  Future<void> insertModel(ClassEntity classEntity) async {
    await _classEntityInsertionAdapter.insert(
        classEntity, OnConflictStrategy.abort);
  }
}
