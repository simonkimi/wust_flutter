import 'package:floor/floor.dart';
import 'package:wuster/models/entity/class_entity.dart';

@dao
abstract class ClassModelDao {
  @Query("SELECT * FROM ClassEntity")
  Future<List<ClassEntity>> getAll();

  @insert
  Future<void> insertModel(ClassEntity classEntity);
}