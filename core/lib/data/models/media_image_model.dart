import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/media_image.dart';
part 'media_image_model.g.dart';

@JsonSerializable(createToJson: false)
class MediaImageModel extends Equatable {
  final int id;
  @JsonKey(fromJson: _backdropsFromJson, name: 'backdrops')
  final List<String> backdropPaths;
  @JsonKey(fromJson: _logosFromJson, name: 'logos')
  final List<String> logoPaths;
  @JsonKey(fromJson: _postersFromJson, name: 'posters')
  final List<String> posterPaths;

  const MediaImageModel({
    required this.id,
    required this.backdropPaths,
    required this.logoPaths,
    required this.posterPaths,
  });

  static List<String> _backdropsFromJson(Object json) {
    return (json as Iterable).map((x) => x['file_path']).toList().cast();
  }

  static List<String> _logosFromJson(Object json) {
    return (json as Iterable).map((x) => x['file_path']).toList().cast();
  }

  static List<String> _postersFromJson(Object json) {
    return (json as Iterable).map((x) => x['file_path']).toList().cast();
  }

  factory MediaImageModel.fromJson(Map<String, dynamic> json) =>
      _$MediaImageModelFromJson(json);

  MediaImage toEntity() => MediaImage(
        id: id,
        backdropPaths: backdropPaths,
        logoPaths: logoPaths,
        posterPaths: posterPaths,
      );

  @override
  List<Object?> get props => [
        id,
        backdropPaths,
        logoPaths,
        posterPaths,
      ];
}
