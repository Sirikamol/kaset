import 'package:flutter/material.dart';
// import 'package:kasetsart/animals_edit.dart';
import 'insertAnimals_page.dart';
import 'parking_place.dart';
import 'history_page.dart';
import 'insertFood_page.dart';
import 'login_page.dart';
import 'second_page.dart';
import 'food_page.dart';
import 'map_page.dart';
import 'tram_page.dart';
import 'updateAnimal_page.dart';
import 'work_table.dart';
import 'input_page.dart';
import 'updateFood_page.dart';
import 'food_search.dart';
import 'food_edit.dart';
import 'animals_edit.dart';



navigateToSecondPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return MySecondPage();
  }));
}

navigateToInputPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InputPage();
  }));
}

navigateToFoodPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return FoodPage();
  }));
}

navigateToMapPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return MapPage();
  }));
}

navigateToArkingPlace(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ParkingPlace();
  }));
}

navigateToHistoryPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return HistoryPage();
  }));
}

navigateToTramPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return TramPage();
  }));
}

navigateToWorkTable(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return WorkTable();
  }));
}

navigateToLoginPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return LoginPage();
  }));
}

navigateToInsertPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InsertPage();
  }));
}

navigateToUpdatePage(BuildContext context, String docID) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return UpdatePage(docID: docID);
  }));
}

navigateToFoodSearch(BuildContext context, String category) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return FoodSearch(category: category);
  }));
}

navigateToFoodEdit(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return FoodEdit();
  }));
}
navigateToAnimalsEdit(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return AnimalsEdit();
  }));
}
navigateToInsertAnimalsPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InsertAnimalsPage();
  }));
}
navigateToUpdateAnimalPage(BuildContext context ,String docID) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return UpdateAnimalPage(docID: docID);
  }));
}

