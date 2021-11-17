// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bootcamp/main.dart';

void main() {
  final List<int> data = [3, 18, 45, 16, 2, 5, 7, 9, 10, 1, 16, 11, 4, 8, 11, 16, 32, 56];

  print(sortKecilBesar(data));
  print(sortBesarKecil(data));
  print(findMean(data));
  print(findMedian(data));
  print(findMode(data));
}

sortKecilBesar(List data) {
  data.sort();
  return data;
}

sortBesarKecil(List<int> data) {
  data.sort((b, a) => a.compareTo(b));
  return data;
}

findMean(List<int> data) {
  var sum = 0;
  for (var i in data) {
    sum += i;
  }
  // print(sum);
  // print(data.length);
  return sum / data.length;
}

findMedian(List<int> data) {
  data.sort();
  var indexMedian = (data.length + 1) / 2;
  return data[indexMedian.toInt()];
}

findMode(List<int> data) {
  Map sebuahMap = {};
  for (var element in data) {
    if (sebuahMap[element] == null) {
      sebuahMap[element] = 0;
    }
    sebuahMap[element] += 1;
  }
  print(sebuahMap);
  var modusKey = 0;
  var modusValue = 0;
  sebuahMap.forEach((key, value) {
    if (value >= modusValue) {
      print('executed!');
      modusValue = value;
      modusKey = key;
    }
  });
  return modusKey;
}
