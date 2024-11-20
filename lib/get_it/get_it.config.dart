// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/api_service/api_client.dart' as _i164;
import '../core/api_service/injection_module.dart' as _i92;
import '../data/data_sources/remote/sample_remote_data_source.dart' as _i963;
import '../data/repositories/sample_repository_Impl.dart' as _i13;
import '../domain/repositories/sample_repository.dart' as _i112;
import '../presentation/cubits/get_all_posts_cubit/get_all_posts_cubit.dart'
    as _i471;
import '../presentation/cubits/get_all_user_data_cubit/get_all_user_data_cubit.dart'
    as _i522;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  gh.lazySingleton<_i361.Dio>(() => dioModule.provideDio());
  gh.lazySingleton<_i164.ApiClient>(() => _i164.ApiClient(gh<_i361.Dio>()));
  gh.lazySingleton<_i963.SampleRemoteDataSource>(
      () => _i963.SampleRemoteDataSourceImpl(gh<_i164.ApiClient>()));
  gh.lazySingleton<_i112.SampleRepository>(
      () => _i13.SampleRepositoryImpl(gh<_i963.SampleRemoteDataSource>()));
  gh.factory<_i522.GetAllUserDataCubit>(
      () => _i522.GetAllUserDataCubit(gh<_i112.SampleRepository>()));
  gh.factory<_i471.GetAllPostsCubit>(
      () => _i471.GetAllPostsCubit(gh<_i112.SampleRepository>()));
  return getIt;
}

class _$DioModule extends _i92.DioModule {}
