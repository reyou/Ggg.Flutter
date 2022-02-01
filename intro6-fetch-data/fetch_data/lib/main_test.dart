// Import the test package and Counter class
import 'package:http/http.dart' as http;
import 'package:fetch_data/album_provider.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'main_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  test('qqq', () async {
    final client = MockClient();

    // Use Mockito to return a successful response when it calls the
    // provided http.Client.
    when(client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
        .thenAnswer((_) async =>
        http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200));

    AlbumProvider provider = AlbumProvider();
    var album = await provider.fetchAlbum(client);
    print(album.id);
    print(album.title);
    print(album.userId);
  });
}