import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/tv_detail.dart';
import 'genre_model.dart';
part 'tv_detail_response.g.dart';

@JsonSerializable()
class TvDetailResponse extends Equatable {
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'episode_run_time')
  final List<int> episodeRunTime;
  @JsonKey(name: 'first_air_date')
  final String firstAirDate;
  final List<GenreModel> genres;
  final int id;
  final String name;
  @JsonKey(name: 'number_of_seasons')
  final int numberOfSeasons;
  final String overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @JsonKey(name: 'vote_count')
  final int voteCount;

  const TvDetailResponse({
    required this.backdropPath,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.genres,
    required this.id,
    required this.name,
    required this.numberOfSeasons,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TvDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TvDetailResponseToJson(this);

  // factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
  //     TvDetailResponse(
  //       backdropPath: json['backdrop_path'],
  //       episodeRunTime: List<int>.from(json['episode_run_time'].map((x) => x)),
  //       firstAirDate: json['first_air_date'],
  //       genres: List<GenreModel>.from(
  //           json['genres'].map((x) => GenreModel.fromJson(x))),
  //       id: json['id'],
  //       name: json['name'],
  //       numberOfSeasons: json['number_of_seasons'],
  //       overview: json['overview'],
  //       posterPath: json['poster_path'],
  //       voteAverage: json['vote_average'],
  //       voteCount: json['vote_count'],
  //     );

  // Map<String, dynamic> toJson() => {
  //       'backdrop_path': backdropPath,
  //       'episode_run_time': List<dynamic>.from(episodeRunTime.map((x) => x)),
  //       'first_air_date': firstAirDate,
  //       'genres': List<dynamic>.from(genres.map((x) => x.toJson())),
  //       'id': id,
  //       'name': name,
  //       'number_of_seasons': numberOfSeasons,
  //       'overview': overview,
  //       'poster_path': posterPath,
  //       'vote_average': voteAverage,
  //       'vote_count': voteCount,
  //     };

  TvDetail toEntity() => TvDetail(
        backdropPath: backdropPath,
        episodeRunTime: episodeRunTime,
        firstAirDate: firstAirDate,
        genres: genres.map((genre) => genre.toEntity()).toList(),
        id: id,
        name: name,
        numberOfSeasons: numberOfSeasons,
        overview: overview,
        posterPath: posterPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );

  @override
  List<Object?> get props => [
        backdropPath,
        episodeRunTime,
        firstAirDate,
        genres,
        id,
        name,
        numberOfSeasons,
        overview,
        posterPath,
        voteAverage,
        voteCount,
      ];
}
