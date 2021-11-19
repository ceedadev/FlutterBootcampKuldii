import 'package:collection/collection.dart';
import 'package:stats/stats.dart';

void main() {
  final List<int> data = [3, 18, 45, 16, 2, 5, 7, 9, 10, 1, 16, 11, 4, 8, 11, 16, 32, 56];

  print("SORT KECIL -> BESAR");
  print(sortKecilBesar(data));
  print("\n\n===============================");
  print("SORT BESAR -> KECIL\n\n");
  print(sortBesarKecil(data));
  print("\n\n===============================");
  print("RATA RATA\n\n");
  print(findMean(data));
  print("\n\n===============================");
  print("NILAI TENGAH\n\n");
  print(findMedian(data));
  print("\n\n===============================");
  print("NILAI YANG SERING MUNCUL\n\n");
  print(findMode(data));
}

sortKecilBesar(List data) {
  // sudah bagus dengan memanfaatkan fungsi yang sudah ada..
  data.sort();
  return data;
}

sortBesarKecil(List<int> data) {
  // data.sort((b, a) => a.compareTo(b));
  // return data;

  // alternatif
  // bisa juga pakai reversed buat nuker urutan list, gaperlu ada proses compare lagi
  data.sort();
  return data.reversed.toList();
}

findMean(List<int> data) {
  // sudah benar dalam mencari rata2 & juga pemanfaatan in pada for loop
  // var sum = 0;
  // for (var i in data) {
  //   sum += i;
  // }
  // return sum / data.length;

  // alternatif
  // bisa menggunakan package stats
  return Stats.fromData(data).average;
}

findMedian(List<int> data) {
  // logic untuk mencari nilai tengah kurang tepat, bagaimana dengan jumlah data ganjil / genap ?
  // seharusnya ada kondisi untuk mengecek ganjil / genap, karena nilai tengah akan berbeda
  // data.sort();
  // var indexMedian = (data.length + 1) / 2;
  // return data[indexMedian.toInt()];

  // alternatif 1
  // bisa memanfaatkan ~ untuk mengubah ke .floor() & bentuk int, karena ada kemungkinan nilainya adalah desimal
  // data.sort();
  // if (data.length % 2 == 0) {
  //   // total data genap
  //   return (data[(data.length ~/ 2) - 1] + data[(data.length ~/ 2)]) / 2;
  // } else {
  //   // total data ganjil
  //   return data[(data.length ~/ 2) - 1];
  // }

  // alternatif 2
  // bisa menggunakan package stats
  return Stats.fromData(data).median;
}

findMode(List<int> data) {
  // solusi ini belum sempurna, apabila data array ada yg memiliki jumlah maksimal yg sama,
  // apakah dari array tersebut ada modusnya ? tentu tidak ada modus
  // karena modus adalah nilai yg paling banyak muncul
  // Map sebuahMap = {};
  // for (var element in data) {
  //   if (sebuahMap[element] == null) {
  //     sebuahMap[element] = 0;
  //   }
  //   sebuahMap[element] += 1;
  // }
  // print(sebuahMap);
  // var modusKey = 0;
  // var modusValue = 0;
  // sebuahMap.forEach((key, value) {
  //   if (value >= modusValue) {
  //     print('executed!');
  //     modusValue = value;
  //     modusKey = key;
  //   }
  // });
  // return modusKey;
  return modus(data);
}

modus(List<int> data) {
  data.sort();

  List<Map<int, int>> dataMap = [];
  List<Map<int, int>> fixDataMap = [];

  for (int i = 0; i < data.length; i++) {
    int total = 0;
    for (int j = 0; j < data.length; j++) {
      if (data[i] == data[j]) {
        total++;
      }
    }
    dataMap.add({data[i]: total});
  }

  for (int i = 0; i < dataMap.length; i++) {
    if (i > 0) {
      if (const DeepCollectionEquality().equals(dataMap[i], dataMap[i - 1])) {
        continue;
      } else {
        fixDataMap.add(dataMap[i]);
      }
    } else {
      fixDataMap.add(dataMap[i]);
    }
  }

  print("Data Map dengan banyaknya data");
  print(fixDataMap);

  List<int> keyData = [];
  List<int> valueData = [];

  for (int i = 0; i < fixDataMap.length; i++) {
    keyData.add(fixDataMap[i].keys.first);
    valueData.add(fixDataMap[i].values.first);
  }

  print("\nExtract Data Map");
  print("Nilai : $keyData");
  print("Banyak : $valueData");
  print("\n--------------------------\nKESIMPULAN\n");

  int maksimalData = valueData[0];

  for (var i = 0; i < valueData.length; i++) {
    if (valueData[i] > maksimalData) {
      maksimalData = valueData[i];
    }
  }

  // print(maksimalData);

  int totalMaksimalData = 0;
  for (var item in valueData) {
    if (item == maksimalData) {
      totalMaksimalData++;
    }
  }

  maksimalData = valueData[0];
  int indexMaksimalData = 0;

  if (totalMaksimalData != 1) {
    return "TIDAK ADA MODUS";
  } else {
    for (var i = 0; i < valueData.length; i++) {
      if (valueData[i] > maksimalData) {
        maksimalData = valueData[i];
        indexMaksimalData = i;
      }
    }

    return "Nilai yang sering muncul : ${keyData[indexMaksimalData]}\nSebanyak : ${valueData[indexMaksimalData]} x";
  }
}
