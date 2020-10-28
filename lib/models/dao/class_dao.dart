import 'package:floor/floor.dart';
import 'package:wust_life/models/entity/class_entity.dart';

@dao
abstract class ClassModelDao {
  @Query("SELECT * FROM ClassEntity")
  Future<List<ClassEntity>> getAll();

  @insert
  Future<void> insertModel(ClassEntity classEntity);

  @delete
  Future<void> deleteModel(ClassEntity classEntity);

  @Query("DELETE * FROM ClassEntity")
  Future<void> deleteAllModel();
}