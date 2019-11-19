import 'package:flutter/material.dart';
import 'package:kasetsart/Image_food1.dart';
import 'package:kasetsart/image_agriculture2.dart';
import 'package:kasetsart/image_fodd2.dart';
import 'package:kasetsart/image_food3.dart';
import 'package:kasetsart/image_food4.dart';
import 'package:kasetsart/image_food5.dart';
import 'package:kasetsart/tidings_two.dart';
import 'agriculture_search.dart';
import 'animal_search.dart';
import 'food_search.dart';
import 'agriculture_edit.dart';
import 'general_edit.dart';
import 'general_search.dart';
import 'image_agriculture1.dart';
import 'image_agriculture3.dart';
import 'image_agriculture4.dart';
import 'insertAgriculture_page.dart';
import 'insertAnimals_page.dart';
import 'insertGenerals_page.dart';
import 'parking_place.dart';
import 'history_page.dart';
import 'insertFood_page.dart';
import 'login_page.dart';
import 'second_page.dart';
import 'map_page.dart';
import 'tidings_one.dart';
import 'tram_page.dart';
import 'updateAgriculture_page.dart';
import 'updateAnimal_page.dart';
import 'updateGenerals_page.dart';
import 'work_table.dart';
import 'input_page.dart';
import 'updateFood_page.dart';
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

navigateToFoodSearch(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return FoodSearch();
  }));
}
navigateToAnimalSearch(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return AnimalSearch();
  }));
}
navigateToAgricultureSearch(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return AgricultureSearch();
  }));
}
navigateToGeneralSearch(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return GeneralSearch();
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

navigateToUpdateAnimalsPage(BuildContext context, String docID) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return UpdateAnimalsPage(docID: docID);
  }));
}

navigateToAgricultureEdit(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return AgricultureEdit();
  }));
}

navigateToUpdateAgriculturePage(BuildContext context, String docID) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return UpdateAgriculturePage(docID: docID);
  }));
}

navigateToInsertAgriculturePage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InsertAgriculturePage();
  }));
}

navigateToGeneralEdit(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return GeneralEdit();
  }));
}

navigateToUpdateGeneralsPage(BuildContext context, String docID) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return UpdateGeneralsPage(docID: docID);
  }));
}

navigateToInsertGeneralsPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InsertGeneralsPage();
  }));
}
navigateToImageFoodA(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageFoodA();
  }));
}
navigateToImageFoodB(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageFoodB();
  }));
}
navigateToImageFoodC(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageFoodC();
  }));
}
navigateToImageFoodD(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageFoodD();
  }));
}
navigateToImageFoodE(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageFoodE();
  }));
}
navigateToImageAgricultureA(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageAgricultureA();
  }));
}
navigateToImageAgricultureB(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageAgricultureB();
  }));
}
navigateToImageAgricultureC(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageAgricultureC();
  }));
}
navigateToImageAgricultureD(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ImageAgricultureD();
  }));
}




navigateToTidingsOne(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return TidingsOne();
  }));
}
navigateToTidingsTwo(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return TidingsTwo();
  }));
}








