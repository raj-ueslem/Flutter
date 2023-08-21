// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PersonStore on PersonStoreState, Store {
  Computed<List<PersonModel>>? _$getListComputed;

  @override
  List<PersonModel> get getList =>
      (_$getListComputed ??= Computed<List<PersonModel>>(() => super.getList,
              name: 'PersonStoreState.getList'))
          .value;
  Computed<bool>? _$getProgressListNameComputed;

  @override
  bool get getProgressListName => (_$getProgressListNameComputed ??=
          Computed<bool>(() => super.getProgressListName,
              name: 'PersonStoreState.getProgressListName'))
      .value;
  Computed<bool>? _$getProgressListLastNameComputed;

  @override
  bool get getProgressListLastName => (_$getProgressListLastNameComputed ??=
          Computed<bool>(() => super.getProgressListLastName,
              name: 'PersonStoreState.getProgressListLastName'))
      .value;
  Computed<String>? _$getFirstFullNameComputed;

  @override
  String get getFirstFullName => (_$getFirstFullNameComputed ??=
          Computed<String>(() => super.getFirstFullName,
              name: 'PersonStoreState.getFirstFullName'))
      .value;

  late final _$peopleAtom =
      Atom(name: 'PersonStoreState.people', context: context);

  @override
  List<PersonModel> get people {
    _$peopleAtom.reportRead();
    return super.people;
  }

  @override
  set people(List<PersonModel> value) {
    _$peopleAtom.reportWrite(value, super.people, () {
      super.people = value;
    });
  }

  late final _$listNamesAtom =
      Atom(name: 'PersonStoreState.listNames', context: context);

  @override
  List<String> get listNames {
    _$listNamesAtom.reportRead();
    return super.listNames;
  }

  @override
  set listNames(List<String> value) {
    _$listNamesAtom.reportWrite(value, super.listNames, () {
      super.listNames = value;
    });
  }

  late final _$listLastNamesAtom =
      Atom(name: 'PersonStoreState.listLastNames', context: context);

  @override
  List<String> get listLastNames {
    _$listLastNamesAtom.reportRead();
    return super.listLastNames;
  }

  @override
  set listLastNames(List<String> value) {
    _$listLastNamesAtom.reportWrite(value, super.listLastNames, () {
      super.listLastNames = value;
    });
  }

  late final _$progressListNameAtom =
      Atom(name: 'PersonStoreState.progressListName', context: context);

  @override
  bool get progressListName {
    _$progressListNameAtom.reportRead();
    return super.progressListName;
  }

  @override
  set progressListName(bool value) {
    _$progressListNameAtom.reportWrite(value, super.progressListName, () {
      super.progressListName = value;
    });
  }

  late final _$progressListLastNameAtom =
      Atom(name: 'PersonStoreState.progressListLastName', context: context);

  @override
  bool get progressListLastName {
    _$progressListLastNameAtom.reportRead();
    return super.progressListLastName;
  }

  @override
  set progressListLastName(bool value) {
    _$progressListLastNameAtom.reportWrite(value, super.progressListLastName,
        () {
      super.progressListLastName = value;
    });
  }

  late final _$shuffleFirstNameAsyncAction =
      AsyncAction('PersonStoreState.shuffleFirstName', context: context);

  @override
  Future<void> shuffleFirstName() {
    return _$shuffleFirstNameAsyncAction.run(() => super.shuffleFirstName());
  }

  late final _$shuffleLastNameAsyncAction =
      AsyncAction('PersonStoreState.shuffleLastName', context: context);

  @override
  Future<void> shuffleLastName() {
    return _$shuffleLastNameAsyncAction.run(() => super.shuffleLastName());
  }

  late final _$addPersonAsyncAction =
      AsyncAction('PersonStoreState.addPerson', context: context);

  @override
  Future<void> addPerson() {
    return _$addPersonAsyncAction.run(() => super.addPerson());
  }

  late final _$PersonStoreStateActionController =
      ActionController(name: 'PersonStoreState', context: context);

  @override
  String getFullNameAtPosition({required int index}) {
    final _$actionInfo = _$PersonStoreStateActionController.startAction(
        name: 'PersonStoreState.getFullNameAtPosition');
    try {
      return super.getFullNameAtPosition(index: index);
    } finally {
      _$PersonStoreStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
people: ${people},
listNames: ${listNames},
listLastNames: ${listLastNames},
progressListName: ${progressListName},
progressListLastName: ${progressListLastName},
getList: ${getList},
getProgressListName: ${getProgressListName},
getProgressListLastName: ${getProgressListLastName},
getFirstFullName: ${getFirstFullName}
    ''';
  }
}
