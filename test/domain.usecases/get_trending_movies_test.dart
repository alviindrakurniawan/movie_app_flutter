
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app_flutter/domain/entities/Movie.dart';
import 'package:movie_app_flutter/domain/repositories/movie_repository.dart';
import 'package:movie_app_flutter/domain/usecases/get_trending_movies.dart';
import 'get_trending_movies_test.mocks.dart';


// class MockMovieRepository extends Mock implements MovieRepository{}
@GenerateNiceMocks([MockSpec<MovieRepository>()])


void main(){
  late GetTrendingMovies usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetTrendingMovies(mockMovieRepository);
  });

  final tMovieList =[
    Movie(id: 1, title: 'Test Movie 1', overview: 'Decs 1', posterPath: '/image1'),
    Movie(id: 2, title: 'Test Movie 2', overview: 'Decs 2', posterPath: '/image2')
  ];

  test('should get trending movies from repo' ,() async {
    when(mockMovieRepository.getTrendingMovies())
      .thenAnswer((_) async =>tMovieList);

    final result = await usecase();

    expect(result, tMovieList);
    verify(mockMovieRepository.getTrendingMovies());
    verifyNoMoreInteractions(mockMovieRepository);
  });
}