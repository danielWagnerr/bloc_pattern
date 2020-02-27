import 'dart:async';
import 'dart:convert';
import 'package:bloc_pattern/src/models/movie_model.dart';
import 'package:http/http.dart';


class MovieApiProvider {
    final _apiKey = '8250b2ef282fc39f04a186a4087eeefc';

    Future<MovieModel> fetchMovieList() async {
        
        final response = await get("http://api.themoviedb.org/3/movie/popular?"
                                   "api_key=$_apiKey");

        if (response.statusCode == 200)
            return MovieModel.fromJson(jsonDecode(response.body));
        else
            throw Exception('Failed to load post.');
    }
}