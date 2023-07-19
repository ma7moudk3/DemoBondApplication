import 'package:bond/features/home/data/models/home_model/home_model.dart';
import 'package:bond_core/bond_core.dart';
import 'package:get_it/get_it.dart';

import 'data/home_api.dart';
import 'data/home_cubit.dart';

class HomeServiceProvider extends ServiceProvider {
  @override
  Future<void> register(GetIt it) async {
    it.registerFactory(() => HomeApi(it()));
    it.registerFactory(() => HomeCubit(it()));
  }

  @override
  T? responseConvert<T>(Map<String, dynamic> json) {
    switch (T) {
      case HomeModel:
        return HomeModel.fromJson(json) as T;
      default:
        return null;
    }
  }
}
