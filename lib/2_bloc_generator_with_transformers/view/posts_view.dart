import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/posts_bloc.dart';
import '../manager/posts_bloc_event.dart';
import '../manager/posts_states.dart';

class BlocGeneratorWithTransformersView extends StatelessWidget {
  const BlocGeneratorWithTransformersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(),
      child: const BlocGeneratorWithTransformersBody(),
    );
  }
}

class BlocGeneratorWithTransformersBody extends StatelessWidget {
  const BlocGeneratorWithTransformersBody({super.key});

  @override
  Widget build(BuildContext context) {
    final postBloc = BlocProvider.of<PostBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts from JSONPlaceholder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("List of Posts:"),
            BlocBuilder<PostBloc, PostState>(
              builder: (context, state) {
                final numbers = state.numbers;
                final status = state.status;

                if (status == PostStateStatus.loading) {
                  return const CircularProgressIndicator();
                } else if (status == PostStateStatus.success) {
                  return ListView.builder(
                    itemCount: numbers.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: const Text("Number"),
                        subtitle: Text(numbers[index].toString()),
                      );
                    },
                  );
                } else if (status == PostStateStatus.error) {
                  return Text(state.errorMessage);
                } else {
                  return const Text('Press the button to load numbers');
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => postBloc.add(PostEvent.fetchPosts),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
