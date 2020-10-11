import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'dao/class_dao.dart';
import 'entity/class_model.dart';


part 'database.g.dart';

@Database(version: 1, entities: [ClassModel])
abstract class AppDatabase extends FloorDatabase {
  ClassModelDao get classModelDao;
}
