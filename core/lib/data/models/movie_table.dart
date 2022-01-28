import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/movie.dart';
import '../../domain/entities/movie_detail.dart';
part 'movie_table.g.dart';

@JsonSerializable()
class MovieTable extends Equatable {
  final String? releaseDate;
  final int id;
  final String? title;
  final String? posterPath;
  final String? overview;
  final double? voteAverage;

  const MovieTable({
    required this.releaseDate,
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
    required this.voteAverage,
  });

  factory MovieTable.fromMap(Map<String, dynamic> json) =>
      _$MovieTableFromJson(json);

  Map<String, dynamic> toMap() => _$MovieTableToJson(this);

  factory MovieTable.fromEntity(MovieDetail movie) => MovieTable(
        releaseDate: movie.releaseDate,
        id: movie.id,
        title: movie.title,
        posterPath: movie.posterPath,
        overview: movie.overview,
        voteAverage: movie.voteAverage,
      );

  Movie toEntity() => Movie.watchlist(
        releaseDate: releaseDate,
        id: id,
        overview: overview,
        posterPath: posterPath,
        title: title,
        voteAverage: voteAverage,
      );

  @override
  List<Object?> get props => [
        releaseDate,
        id,
        title,
        posterPath,
        overview,
        voteAverage,
      ];
}
