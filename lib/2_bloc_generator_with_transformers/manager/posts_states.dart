import 'package:equatable/equatable.dart';

enum PostStateStatus { initial, loading, success, error }

class PostState extends Equatable {
  const PostState({
    this.status = PostStateStatus.initial,
    this.numbers = const <int>[],
    this.errorMessage = "حدث خطأ",
  });

  final PostStateStatus status;
  final List<int> numbers;
  final String errorMessage;

  PostState copyWith({
    PostStateStatus? status,
    List<int>? numbers,
    String? errorMessage,
  }) {
    return PostState(
      status: status ?? this.status,
      numbers: numbers ?? this.numbers,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [status, numbers, errorMessage];
}
