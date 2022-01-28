import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/tv.dart';
part 'tv_model.g.dart';

@JsonSerializable()
class TvModel extends Equatable {
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'first_air_date')
  final String firstAirDate;
  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;
  final int id;
  final String name;
  final String overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @JsonKey(name: 'vote_count')
  final int voteCount;

  const TvModel({
    required this.backdropPath,
    required this.firstAirDate,
    required this.genreIds,
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TvModel.fromJson(Map<String, dynamic> json) =>
      _$TvModelFromJson(json);

  Map<String, dynamic> toJson() => _$TvModelToJson(this);

  // factory TvModel.fromJson(Map<String, dynamic> json) => TvModel(
  //       backdropPath: json['backdrop_path'],
  //       firstAirDate: json['first_air_date'],
  //       genreIds: List<int>.from(json['genre_ids'].map((x) => x)),
  //       id: json['id'],
  //       name: json['name'],
  //       overview: json['overview'],
  //       posterPath: json['poster_path'],
  //       voteAverage: json['vote_average'].toDouble(),
  //       voteCount: json['vote_count'],
  //     );

  // Map<String, dynamic> toJson() => {
  //       'backdrop_path': backdropPath,
  //       'first_air_date': firstAirDate,
  //       'genre_ids': List<dynamic>.from(genreIds.map((x) => x)),
  //       'id': id,
  //       'name': name,
  //       'overview': overview,
  //       'poster_path': posterPath,
  //       'vote_average': voteAverage,
  //       'vote_count': voteCount,
  //     };

  Tv toEntity() => Tv(
        backdropPath: backdropPath,
        firstAirDate: firstAirDate,
        genreIds: genreIds,
        id: id,
        name: name,
        overview: overview,
        posterPath: posterPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );

  @override
  List<Object?> get props => [
        backdropPath,
        firstAirDate,
        genreIds,
        id,
        name,
        overview,
        posterPath,
        voteAverage,
        voteCount,
      ];
}
