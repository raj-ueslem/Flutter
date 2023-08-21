import 'package:mobx/mobx.dart';

import '../model/_export_person.dart';
part 'person_store.g.dart';

class PersonStore = PersonStoreState with _$PersonStore;

abstract class PersonStoreState with Store {
  @observable
  List<PersonModel> people = ObservableList();

  @observable
  List<String> listNames = [
    'paula',
    'rogério',
    'luiz',
    'larissa',
    'will',
  ];

  @observable
  List<String> listLastNames = [
    'DeLuca',
    'Carmelion',
    'Munhoz',
    'DonMerlion',
    'Suzano'
  ];

  @observable
  bool progressListName = false;

  @observable
  bool progressListLastName = false;

  @action
  Future<void> shuffleFirstName() async {
    progressListName = true;
    Future.delayed(
      const Duration(seconds: 1),
      () {
        listNames.shuffle();
        progressListName = false;
      },
    );
  }

  @action
  Future<void> shuffleLastName() async {
    progressListLastName = true;
    Future.delayed(
      const Duration(seconds: 1),
      () {
        listLastNames.shuffle();
        progressListLastName = false;
      },
    );
  }

  @action
  Future<void> addPerson() async {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        people.add(
          PersonModel(
              id: 000,
              firtName: listNames.first,
              lastName: listLastNames.first,
              active: true),
        );
      },
    );
  }

  @action
  String getFullNameAtPosition({required int index}) =>
      "${people.elementAt(index).firtName} ${people.elementAt(index).lastName}";

  @computed
  List<PersonModel> get getList => people;

  @computed
  bool get getProgressListName => progressListName;

  @computed
  bool get getProgressListLastName => progressListLastName;

  @computed
  String get getFirstFullName =>
      "${people.first.firtName} ${people.first.lastName}";
}
