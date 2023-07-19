import 'package:bond_network/bond_network.dart';

import 'models/home_model/home_model.dart';

class HomeApi {
  final BondFire _bondFire;

  HomeApi(this._bondFire);

  Future<HomeModel> settings() => _bondFire
      .get<HomeModel>('/settings')
      .cache()
      .header(Api.headers())
      .queryParameters({
        "device_id":
            "59560f368b401086527b980db82845e8f3a7ceb10ff9a7f904a0949db1155142"
      })
      .factory(HomeModel.fromJson)
      .errorFactory(ServerError.fromJson)
      .execute();
}
