// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvModel _$TvModelFromJson(Map<String, dynamic> json) => TvModel(
      backdropPath: json['backdrop_path'] as String?,
      firstAirDate: json['first_air_date'] as String,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$TvModelToJson(TvModel instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
