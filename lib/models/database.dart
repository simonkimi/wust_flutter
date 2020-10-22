import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'dao/class_dao.dart';
import 'entity/class_entity.dart';


part 'database.g.dart';

@Database(version: 1, entities: [ClassEntity])
abstract class AppDatabase extends FloorDatabase {
  ClassModelDao get classModelDao;
}
