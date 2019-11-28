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

  Future<String> performAddFoodObject(addData) async {
    taskAdded = await _foodIndex.addObject(addData);
    // print(taskAdded.data);
    return taskAdded.data['objectID'].toString();
  }

  void performAddAgricultureObject(addData) async {
    _agricultureIndex.addObject(addData);
  }

  void performAddAnimalObject(addData) async {
    _animalIndex.addObject(addData);
  }

  void performAddGeneralsObject(addData) async {
    _generalsIndex.addObject(addData);
  }

  void performUpdateFoodObject(objectId, updateData) async {
    _foodIndex.object(objectId).updateData(updateData);
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
