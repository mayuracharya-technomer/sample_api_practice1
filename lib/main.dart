import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_api_practice1/get_it/get_it.dart';
import 'package:sample_api_practice1/presentation/cubits/get_all_posts_cubit/get_all_posts_cubit.dart';
import 'package:sample_api_practice1/presentation/cubits/get_all_user_data_cubit/get_all_user_data_cubit.dart';
import 'package:sample_api_practice1/presentation/cubits/get_all_user_data_cubit/get_all_user_data_state.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetAllUserDataCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetAllPostsCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("api test"),),
      body: BlocBuilder<GetAllPostsCubit, GetAllPostsState>(
        builder: (context, state) {
          if (state is GetAllPostsSuccess) {
            return Center(
              child: Text("${state.data}"),
            );
          }

          return const SizedBox();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<GetAllPostsCubit>().getAllPosts();
        },
        tooltip: 'get data',
        child: const Icon(Icons.get_app_rounded),
      ),
    );
  }
}
