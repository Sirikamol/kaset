import 'package:algolia/algolia.dart';
import 'package:kasetsart/animals.dart';
import 'package:kasetsart/food.dart';

class AlgoliaService {
  AlgoliaService._privateConstructor();

  static final AlgoliaService instance = AlgoliaService._privateConstructor();

  final Algolia _algolia = Algolia.init(
    applicationId: 'DBB13CQ6MX',
    apiKey: '75c1bb1bb53efffc5711ba3df99d18a6',
  );

  AlgoliaIndexReference get _foodIndex => _algolia.instance.index('food');
  AlgoliaIndexReference get _animalIndex => _algolia.instance.index('animals');

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
        snap.hits.map((food) => Animals.fromJSON(food.data)).toList();
    return animals;
  }
}
