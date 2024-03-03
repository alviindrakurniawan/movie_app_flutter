import 'package:movie_app_flutter/domain/entities/Movie.dart';
import 'package:movie_app_flutter/domain/repositories/movie_repository.dart';

class GetPopularMovies{
  final MovieRepository repository;

  GetPopularMovies( this.repository);

  Future <List<Movie>> call ()async{
    return await repository.getPopularMovie();
  }


}