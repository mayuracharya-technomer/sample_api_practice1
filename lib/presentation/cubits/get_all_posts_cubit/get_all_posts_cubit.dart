import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sample_api_practice1/domain/repositories/sample_repository.dart';

part 'get_all_posts_state.dart';

@injectable
class GetAllPostsCubit extends Cubit<GetAllPostsState> {
  final SampleRepository sampleRepository;
  GetAllPostsCubit(this.sampleRepository) : super(GetAllPostsInitial());


  getAllPosts()async{
    emit(GetAllPostsLoading());
    final res= await sampleRepository.getallPosts();

    res.fold((error){
      emit(GetAllPostsFailure(error.errormessage??''));
    }, (response){
      emit(GetAllPostsSuccess(res));
    });
  }
}
