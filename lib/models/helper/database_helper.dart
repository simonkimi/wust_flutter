import 'package:wust_life/models/database.dart';

class DatabaseHelper {
  static final DatabaseHelper _databaseHelper = DatabaseHelper._internal();

  factory DatabaseHelper() => _databaseHelper;

  AppDatabase database;

  DatabaseHelper._internal() {
    initDataBase();
  }

  initDataBase() async {
    database =
        await $FloorAppDatabase.databaseBuilder("app_database.db").build();
  }
}
