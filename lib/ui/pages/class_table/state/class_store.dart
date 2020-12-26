import 'package:mobx/mobx.dart';
import 'package:wust_life/models/entity/class_entity.dart';

part "class_store.g.dart";


class ClassStore = ClassStoreBase with _$ClassStore;

final classStore = ClassStore();


abstract class ClassStoreBase with Store {
  @observable
  DateTime startDate = DateTime.now().add(Duration(days: -7 * 14));  // 第一周某一天

  @observable
  int thisWeek = 5;  // 这周是第几周

  @observable
  int displayWeek = 5;  // 显示在课程表上为第几周

  @observable
  int startWeekDay = 1;  // 一周星期几开始

  @observable
  ObservableList<ClassEntity> classList = ObservableList(); // 课程表


  @observable
  double classCardHeight;  // 卡片高度

  @observable
  double classCardPadding;  // 卡片距离

  @observable
  double classMainHeight;  // 主高度


  @action
  void setDisplayWeek(int week) {
    displayWeek = week;
  }

  @action
  void setClassList(List<ClassEntity> value) {
    classList.clear();
    classList.addAll(value);
  }

  @action
  void setCardDisplay(double height, double padding) {
    classCardHeight = height;
    classCardPadding = padding;
    classMainHeight = height * 6 + padding * 5;
  }

  @computed
  DateTime get displayWeekDate => startDate.add(Duration(days: displayWeek * 7));
}