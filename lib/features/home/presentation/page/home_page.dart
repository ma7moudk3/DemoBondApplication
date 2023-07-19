import 'package:auto_route/auto_route.dart';
import 'package:bond/features/home/data/home_cubit.dart';
import 'package:bond_core/bond_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

class HomePage extends StatelessWidget with AutoRouteWrapper {
  const HomePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(providers: [
        BlocProvider<HomeCubit>(
          create: (context) => sl<HomeCubit>()..loadAllPosts(),
        ),
      ], child: this);

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.watch<HomeCubit>();

    return Scaffold(
        body: homeCubit.state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            success: (e, loading) {
              if (loading) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }
              return SingleChildScrollView(
                 // controller: homeCubit.scrollController,
                  child: Html(data: e[0].data!.pages![4].description!));
            },
            failed: (e) => const Center(child: CircularProgressIndicator())));
  }
}
