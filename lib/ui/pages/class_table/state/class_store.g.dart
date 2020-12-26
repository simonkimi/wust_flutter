// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClassStore on ClassStoreBase, Store {
  Computed<DateTime> _$displayWeekDateComputed;

  @override
  DateTime get displayWeekDate => (_$displayWeekDateComputed ??=
          Computed<DateTime>(() => super.displayWeekDate,
              name: 'ClassStoreBase.displayWeekDate'))
      .value;

  final _$startDateAtom = Atom(name: 'ClassStoreBase.startDate');

  @override
  DateTime get startDate {
    _$startDateAtom.reportRead();
    return super.startDate;
  }

  @override
  set startDate(DateTime value) {
    _$startDateAtom.reportWrite(value, super.startDate, () {
      super.startDate = value;
    });
  }

  final _$thisWeekAtom = Atom(name: 'ClassStoreBase.thisWeek');

  @override
  int get thisWeek {
    _$thisWeekAtom.reportRead();
    return super.thisWeek;
  }

  @override
  set thisWeek(int value) {
    _$thisWeekAtom.reportWrite(value, super.thisWeek, () {
      super.thisWeek = value;
    });
  }

  final _$displayWeekAtom = Atom(name: 'ClassStoreBase.displayWeek');

  @override
  int get displayWeek {
    _$displayWeekAtom.reportRead();
    return super.displayWeek;
  }

  @override
  set displayWeek(int value) {
    _$displayWeekAtom.reportWrite(value, super.displayWeek, () {
      super.displayWeek = value;
    });
  }

  final _$startWeekDayAtom = Atom(name: 'ClassStoreBase.startWeekDay');

  @override
  int get startWeekDay {
    _$startWeekDayAtom.reportRead();
    return super.startWeekDay;
  }

  @override
  set startWeekDay(int value) {
    _$startWeekDayAtom.reportWrite(value, super.startWeekDay, () {
      super.startWeekDay = value;
    });
  }

  final _$classListAtom = Atom(name: 'ClassStoreBase.classList');

  @override
  ObservableList<ClassEntity> get classList {
    _$classListAtom.reportRead();
    return super.classList;
  }

  @override
  set classList(ObservableList<ClassEntity> value) {
    _$classListAtom.reportWrite(value, super.classList, () {
      super.classList = value;
    });
  }

  final _$classCardHeightAtom = Atom(name: 'ClassStoreBase.classCardHeight');

  @override
  double get classCardHeight {
    _$classCardHeightAtom.reportRead();
    return super.classCardHeight;
  }

  @override
  set classCardHeight(double value) {
    _$classCardHeightAtom.reportWrite(value, super.classCardHeight, () {
      super.classCardHeight = value;
    });
  }

  final _$classCardPaddingAtom = Atom(name: 'ClassStoreBase.classCardPadding');

  @override
  double get classCardPadding {
    _$classCardPaddingAtom.reportRead();
    return super.classCardPadding;
  }

  @override
  set classCardPadding(double value) {
    _$classCardPaddingAtom.reportWrite(value, super.classCardPadding, () {
      super.classCardPadding = value;
    });
  }

  final _$classMainHeightAtom = Atom(name: 'ClassStoreBase.classMainHeight');

  @override
  double get classMainHeight {
    _$classMainHeightAtom.reportRead();
    return super.classMainHeight;
  }

  @override
  set classMainHeight(double value) {
    _$classMainHeightAtom.reportWrite(value, super.classMainHeight, () {
      super.classMainHeight = value;
    });
  }

  final _$ClassStoreBaseActionController =
      ActionController(name: 'ClassStoreBase');

  @override
  void setDisplayWeek(int week) {
    final _$actionInfo = _$ClassStoreBaseActionController.startAction(
        name: 'ClassStoreBase.setDisplayWeek');
    try {
      return super.setDisplayWeek(week);
    } finally {
      _$ClassStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setClassList(List<ClassEntity> value) {
    final _$actionInfo = _$ClassStoreBaseActionController.startAction(
        name: 'ClassStoreBase.setClassList');
    try {
      return super.setClassList(value);
    } finally {
      _$ClassStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCardDisplay(double height, double padding) {
    final _$actionInfo = _$ClassStoreBaseActionController.startAction(
        name: 'ClassStoreBase.setCardDisplay');
    try {
      return super.setCardDisplay(height, padding);
    } finally {
      _$ClassStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
startDate: ${startDate},
thisWeek: ${thisWeek},
displayWeek: ${displayWeek},
startWeekDay: ${startWeekDay},
classList: ${classList},
classCardHeight: ${classCardHeight},
classCardPadding: ${classCardPadding},
classMainHeight: ${classMainHeight},
displayWeekDate: ${displayWeekDate}
    ''';
  }
}
