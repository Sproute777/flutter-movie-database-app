import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'movie_model.dart';
part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse extends Equatable {
  @JsonKey(name: 'results', fromJson: _movieFromJson)
  final List<MovieModel> movieList;

  const MovieResponse({required this.movieList});

  static List<MovieModel> _movieFromJson(Object json) {
    return List<MovieModel>.from((json as List)
        .map((x) => MovieModel.fromJson(x))
        .where((element) =>
            element.posterPath != null && element.backdropPath != null));
  }

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);

  @override
  List<Object> get props => [movieList];
}
