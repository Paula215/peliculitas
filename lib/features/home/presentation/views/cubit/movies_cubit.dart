import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'movies_state.dart';

String _apiKey = '964085f4fd433d1a9da9fa8dea8e4e4c';
String _baseUrl = 'https://api.themoviedb.org/3/';
String _language = 'es-ES';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(MoviesState.initial()) {
    getTrendingMovies();
  }

  Future<void> getTrendingMovies() async {
    try {
      emit(MoviesState.loading());
      // final url = Uri.https(_baseUrl, "trending/movie/week", {
      //   'api_key': _apiKey,
      //   'language': _language,
      // });
      // final url = Uri.http('https://pokeapi.co/api/v2/pokemon/ditto');
      // final response = await http.get(url);
      var dio = Dio();
      final response = await dio.get('https://pokeapi.co/api/v2/pokemon/ditto');
      print(response.data);
      emit(const MoviesState.sucessfull([]));
    } catch (e) {
      print('ERROR');
      emit(MoviesState.error());
    }
  }
}
