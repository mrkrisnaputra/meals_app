import 'package:flutter_riverpod/legacy.dart';
import 'package:meals/models/meal.dart';



class FavoritesMealsNotifier extends StateNotifier<List<Meal>>{
  
  FavoritesMealsNotifier():super([]);
  
  bool toggleMealFavoritesStatus(Meal meal){
    final mealIsFavorite= state.contains(meal);
    if(mealIsFavorite){
      state=state.where((m) => m.id!=meal.id ).toList();
      return false;
    }else{
       state=[...state,meal];
       return true;
    }
   

  }

}
final favoriteMealsProvider=StateNotifierProvider<FavoritesMealsNotifier,List<Meal>>((ref){
  return FavoritesMealsNotifier();
});