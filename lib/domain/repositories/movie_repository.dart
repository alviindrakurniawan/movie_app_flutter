import 'package:movie_app_flutter/domain/entities/Movie.dart';

abstract class MovieRepository{
  Future<List<Movie>> getTrendingMovies();
  Future<List<Movie>> searchMovie(String query);
  Future<List<Movie>> getPopularMovie();
}