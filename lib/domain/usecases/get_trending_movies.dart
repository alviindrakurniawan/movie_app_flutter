import 'package:movie_app_flutter/domain/entities/Movie.dart';
import 'package:movie_app_flutter/domain/repositories/movie_repository.dart';

class GetTrendingMovies{
  final MovieRepository repository;

  GetTrendingMovies(this.repository);

  Future<List<Movie>> call()async{
    return await repository.getTrendingMovies();
  }
}