part of 'get_all_posts_cubit.dart';

@immutable
sealed class GetAllPostsState {}

final class GetAllPostsInitial extends GetAllPostsState {}

final class GetAllPostsLoading extends GetAllPostsState {}

final class GetAllPostsSuccess extends GetAllPostsState {
  final dynamic data;
  GetAllPostsSuccess(this.data);
}

final class GetAllPostsFailure extends GetAllPostsState {
  final String errorMessage;
  GetAllPostsFailure(this.errorMessage);

}
