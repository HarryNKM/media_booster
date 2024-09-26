import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier
{
    int selectedIndex=0;

    List<String> l1=[
      "assets/img/banner1.jpg",
      "assets/img/banner2.jpg",
      "assets/img/banner3.jpeg",
      "assets/img/banner4.jpeg",
    ];

    void changeIndex(int ind)
    {
      selectedIndex=ind;
      notifyListeners();
    }
}