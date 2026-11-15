import "package:android_dev/screens/home_screen/models/post_model.dart";
import "package:android_dev/screens/home_screen/services/dio_service.dart";
import "package:android_dev/screens/home_screen/services/post_services.dart";
import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

// ---------- Dependency injection ----------

/// Single Dio instance shared across the app.
final dioProvider = Provider<Dio>((ref) => Dio());

/// DioService gets its Dio injected from [dioProvider].
final dioServiceProvider = Provider<DioService>(
  (ref) => DioService(ref.watch(dioProvider)),
);

/// One PostServices instance for the whole app.
final postServicesProvider = Provider<PostServices>((ref) => PostServices());

// ---------- Data ----------

/// Products for the Search tab, loaded through DioService.
final productsProvider = FutureProvider<List<dynamic>>((ref) async {
  final response = await ref
      .watch(dioServiceProvider)
      .get('https://dummyjson.com/products', 10);
  return response['products'] as List<dynamic>;
});

/// Posts for the Home tab. All changes go through PostServices.
final postsProvider = NotifierProvider<PostsNotifier, List<PostModel>>(
  PostsNotifier.new,
);

class PostsNotifier extends Notifier<List<PostModel>> {
  PostServices get _service => ref.read(postServicesProvider);

  @override
  List<PostModel> build() {
    _service.batchAddPosts(List.generate(
      10,
      (index) => PostModel(
        imageUrl: 'https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-01.jpg',
        description: 'This is a sample post description. It can be quite long and will wrap to the next line if necessary.',
        likeCount: 0,
      ),
    ));
    return List.of(_service.posts);
  }

  void likePost(PostModel post) {
    _service.likePost(post);
    state = List.of(_service.posts);
  }

  void unlikePost(PostModel post) {
    _service.unlikePost(post);
    state = List.of(_service.posts);
  }
}
