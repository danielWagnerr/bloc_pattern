import 'dart:async';
import 'package:bloc_pattern/src/models/movie_model.dart';
import 'movie_api_provider.dart';

class Repository {
    final moviesApiProvider = MovieApiProvider();

    Future<MovieModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}