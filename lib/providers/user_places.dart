import 'dart:io';

import 'package:favorite_places_app/model/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() :super(const []);

  void addPlace(String title, File image) {
    final newPlace=Place(title: title,image: image);
    state=[newPlace,...state];
  }
}

final userplacesProvider=StateNotifierProvider<UserPlacesNotifier,List<Place>>((ref)=>UserPlacesNotifier(),);