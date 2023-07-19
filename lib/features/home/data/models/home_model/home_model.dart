// ignore_for_file: must_be_immutable


import 'package:bond_network/bond_network.dart';

import 'data.dart';

class HomeModel extends Model {
  Data? data;
  String? signature;

  HomeModel({this.data, this.signature, required super.id});

  @override
  String toString() => 'HomeModel(data: $data, signature: $signature)';

  factory HomeModel.fromMap(Map<String, dynamic> data) => HomeModel(
        data: data['data'] == null
            ? null
            : Data.fromMap(data['data'] as Map<String, dynamic>),
        signature: data['signature'] as String?,
        id: 1,
      );

  Map<String, dynamic> toMap() => {
        'data': data?.toMap(),
        'signature': signature,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HomeModel].
  factory HomeModel.fromJson(Map<String, dynamic> data) {
    return HomeModel.fromMap(data);
  }
  
  @override
  Map<String, dynamic> toJson() {
    return toMap();
  }

  
}
