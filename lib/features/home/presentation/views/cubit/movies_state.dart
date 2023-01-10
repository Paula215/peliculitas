part of 'movies_cubit.dart';

enum MoviesStatus {
  initial,
  loading,
  error,
  sucessfull,
}

class MoviesState extends Equatable {
  final MoviesStatus status;
  final List<Map<String, dynamic>> upcomingMovies;
  MoviesState.initial()
      : status = MoviesStatus.initial,
        upcomingMovies = [];

  MoviesState.loading()
      : status = MoviesStatus.loading,
        upcomingMovies = [];
  MoviesState.error()
      : status = MoviesStatus.error,
        upcomingMovies = [];
  const MoviesState.sucessfull(List<Map<String, dynamic>> data)
      : status = MoviesStatus.sucessfull,
        upcomingMovies = data;

  @override
  List<Object> get props => [status, upcomingMovies];
}
