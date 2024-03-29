import 'dart:convert';
import 'package:consultation_app/model_view/AuthApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../constant/const_Api.dart';
import '../model/CategoryModel.dart';

class CategoriesApi extends ChangeNotifier {
  CategoryModel? categoryModel;
  Category? category;
  List<Category> allCategories = [];
  List<Category> allCategoriesWithMails = [];

  bool isLoading = true;

  Future getAllCategories(token) async {
    http.Response response = await http.get(Uri.parse(getAllcategoriesUrl),
        headers: {'Authorization': 'Bearer ${token}'});
    //  print(response.body);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      for (var cate in body['categories']) {
        category = Category.fromJson(cate);
        allCategories.add(category!);
      }
      isLoading = false;

      notifyListeners();
      return allCategories;
    } else {
      return 'error!!';
    }
  }

  Future getSingleCategores(token, categoryId) async {
    http.Response response = await http.get(
        Uri.parse(getSinglecategoriesUrl(categoryId)),
        headers: {'Authorization': 'Bearer ${token}'});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      category = Category.fromJson(body);
      allCategoriesWithMails.add(category!);

      isLoading = false;

      notifyListeners();
      return categoryModel;
    } else {
      return 'error!!';
    }
  }

  Future createCategories(token) async {
    http.Response response = await http.post(Uri.parse(createCategoriesUrl),
        headers: {'Authorization': 'Bearer ${token}'},
        body: {'name': 'غسااااان يا غسااان'});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      category = Category.fromJson(body['category']);
      return 'succes ${category!.name}';
    } else {
      return 'error!!';
    }
  }
}
