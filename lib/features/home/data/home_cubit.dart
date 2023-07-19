import 'package:bloc/bloc.dart';
import 'package:bond/features/home/data/models/home_model/home_model.dart';
import 'package:bond_network/bond_network.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/cupertino.dart';

import 'home_api.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<ListState<HomeModel>> {
  HomeCubit(this.api) : super(ListState.initial()) {
    scrollController.addListener(_scrollControllerListener);
  }

  final HomeApi api;

  final ScrollController scrollController = ScrollController();

  Future<void> loadAllPosts() async {
    emit(state.loading());
    final response = await api.settings();
    emit(
        state.success(ListResponse(data: [response], meta: null, links: null)));
  }

  @override
  Future<void> close() async {
    scrollController.dispose();
    scrollController.removeListener(_scrollControllerListener);
    super.close();
  }

  void _scrollControllerListener() {
    double maxScroll = scrollController.position.maxScrollExtent;
    double currentScroll = scrollController.position.pixels;
    double delta = 200.0;
    if (maxScroll - currentScroll <= delta &&
        state.status != ListStatus.loading) {
      loadAllPosts();
    }
  }
}
