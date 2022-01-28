import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/tv_season_episode.dart';
part 'tv_season_episode_model.g.dart';

@JsonSerializable()
class TvSeasonEpisodeModel extends Equatable {
  @JsonKey(name: 'air_date')
  final String airDate;
  @JsonKey(name: 'episode_number')
  final int episodeNumber;
  final int id;
  final String name;
  final String overview;
  @JsonKey(name: 'season_number')
  final int seasonNumber;
  @JsonKey(name: 'still_path')
  final String? stillPath;
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @JsonKey(name: 'vote_count')
  final int voteCount;

  const TvSeasonEpisodeModel({
    required this.airDate,
    required this.episodeNumber,
    required this.id,
    required this.name,
    required this.overview,
    required this.seasonNumber,
    required this.stillPath,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TvSeasonEpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeasonEpisodeModelFromJson(json);

  Map<String, dynamic> toJson() => _$TvSeasonEpisodeModelToJson(this);

  // factory TvSeasonEpisodeModel.fromJson(Map<String, dynamic> json) =>
  //     TvSeasonEpisodeModel(
  //       airDate: json['air_date'],
  //       episodeNumber: json['episode_number'],
  //       id: json['id'],
  //       name: json['name'],
  //       overview: json['overview'],
  //       seasonNumber: json['season_number'],
  //       stillPath: json['still_path'],
  //       voteAverage: json['vote_average'],
  //       voteCount: json['vote_count'],
  //     );

  // Map<String, dynamic> toJson() => {
  //       'air_date': airDate,
  //       'episode_number': episodeNumber,
  //       'id': id,
  //       'name': name,
  //       'overview': overview,
  //       'season_number': seasonNumber,
  //       'still_path': stillPath,
  //       'vote_average': voteAverage,
  //       'vote_count': voteCount,
  //     };

  TvSeasonEpisode toEntity() => TvSeasonEpisode(
        airDate: airDate,
        episodeNumber: episodeNumber,
        id: id,
        name: name,
        overview: overview,
        seasonNumber: seasonNumber,
        stillPath: stillPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );

  @override
  List<Object?> get props => [
        airDate,
        episodeNumber,
        id,
        name,
        overview,
        seasonNumber,
        stillPath,
        voteAverage,
        voteCount,
      ];
}
