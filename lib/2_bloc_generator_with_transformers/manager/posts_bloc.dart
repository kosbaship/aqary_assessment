import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'posts_bloc_event.dart';
import 'posts_states.dart';

final dio = Dio();

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(const PostState());

  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event == PostEvent.fetchPosts) {
      yield state.copyWith(status: PostStateStatus.loading);

      try {
        final numbers = await asynchronousGeneratorWithATransformer();

        yield state.copyWith(
          status: PostStateStatus.success,
          numbers: numbers,
        );
      } catch (e) {
        yield state.copyWith(
          status: PostStateStatus.error,
          errorMessage: 'Failed to load posts: $e',
        );
      }
    }
  }

  Future<List<int>> asynchronousGeneratorWithATransformer() async {
    return await Stream.periodic(
      const Duration(seconds: 3),
      (count) => count * 2,
    ).take(7).map((data) => data * 3).toList();
  }
}
