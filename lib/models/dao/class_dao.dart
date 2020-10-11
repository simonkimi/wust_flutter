import 'package:floor/floor.dart';
import 'package:wuster/models/entity/class_model.dart';

@dao
abstract class ClassModelDao {
  @Query("SELECT * FROM ClassModel")
  Future<List<ClassModel>> getAll();

  @insert
  Future<void> insertModel(ClassModel classModel);
}