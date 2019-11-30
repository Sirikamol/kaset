import 'package:algolia/algolia.dart';
import 'agriculture.dart';
import 'animals.dart';
import 'food.dart';
import 'general.dart';

class AlgoliaService {
  AlgoliaService._privateConstructor();

  static final AlgoliaService instance = AlgoliaService._privateConstructor();
  AlgoliaTask taskAdded,
      taskUpdated,
      taskDeleted,
      taskBatch,
      taskClearIndex,
      taskDeleteIndex;
  AlgoliaObjectSnapshot addedObject;
  static final algoliaService = AlgoliaService.instance;

  // AlgoliaTask taskdelete;

  final Algolia _algolia = Algolia.init(
    applicationId: 'T374A0CYK0',
    apiKey: 'c028fff8b21e3233d5fa2fd412dcad41',
  );

  AlgoliaIndexReference get _foodIndex => _algolia.instance.index('food');
  AlgoliaIndexReference get _animalIndex => _algolia.instance.index('animals');
  AlgoliaIndexReference get _agricultureIndex =>
      _algolia.instance.index('agriculture');
  AlgoliaIndexReference get _generalsIndex =>
      _algolia.instance.index('generals');

  Future<Null> performUpdateFoodObject(updateData) {
    _foodIndex.addObject(updateData);
  }

  Future<Null> performUpdateAgricultureObject(updateData) {
    _agricultureIndex.addObject(updateData);
  }

  Future<Null> performUpdateAnimalObject(updateData) {
    _animalIndex.addObject(updateData);
  }

  Future<Null> performUpdateGeneralsObject(updateData) {
    _generalsIndex.addObject(updateData);
  }

  // Future<Null> performDeleteGeneralsObject(deleteObject){
  //   _generalsIndex.deleteIndex(deleteObject);
  // }
  Future<String> performDeleteFoodObject(deleteData) async {
    taskAdded = await _foodIndex.deleteIndex();
    // print(taskAdded.data);
    return taskAdded.data['objectID'].toString();
  }

  Future<String> performAddFoodObject(addData) async {
    taskAdded = await _foodIndex.addObject(addData);
    // print(taskAdded.data);
    return taskAdded.data['objectID'].toString();
  }

  Future<String> performAddAgricultureObject(addData) async {
    taskAdded = await _agricultureIndex.addObject(addData);
    // print(taskAdded.data);
    return taskAdded.data['objectID'].toString();
  }

  Future<String> performAddAnimalObject(addData) async {
    taskAdded = await _animalIndex.addObject(addData);
    // print(taskAdded.data);
    return taskAdded.data['objectID'].toString();
  }

  Future<String> performAddGeneralsObject(addData) async {
    taskAdded = await _generalsIndex.addObject(addData);
    // print(taskAdded.data);
    return taskAdded.data['objectID'].toString();
  }

  Future<List<Food>> performSearchQuery({text: String}) async {
    final query = _foodIndex.search(text);
    final snap = await query.getObjects();
    final foods = snap.hits.map((food) => Food.fromJSON(food.data)).toList();
    return foods;
  }

  Future<List<Animals>> performAnimalQuery({text: String}) async {
    final query = _animalIndex.search(text);
    final snap = await query.getObjects();
    final animals =
        snap.hits.map((animals) => Animals.fromJSON(animals.data)).toList();
    return animals;
  }

  Future<List<Agriculture>> performAgricultureQuery({text: String}) async {
    final query = _agricultureIndex.search(text);
    final snap = await query.getObjects();
    final agricultures = snap.hits
        .map((agriculture) => Agriculture.fromJSON(agriculture.data))
        .toList();
    return agricultures;
  }

  Future<List<Generals>> performGeneralsQuery({text: String}) async {
    final query = _generalsIndex.search(text);
    final snap = await query.getObjects();
    final generals =
        snap.hits.map((generals) => Generals.fromJSON(generals.data)).toList();
    return generals;
  }
}

// Future<Null> performAddFoodObject(addData){
//   _foodIndex.addObject(addData);
// }
// void performAddAgricultureObject(objectId, updateData){
//   _agricultureIndex.object(objectId).updateData(updateData);
// }
// Future<Null> performDeleteFoodObject(objectID){
//   _foodIndex.object(objectID).deleteObject();
//   // _foodIndex.object(objectId).deleteData(daleteData);
// }
