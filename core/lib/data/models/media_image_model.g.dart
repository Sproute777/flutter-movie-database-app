// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaImageModel _$MediaImageModelFromJson(Map<String, dynamic> json) =>
    MediaImageModel(
      id: json['id'] as int,
      backdropPaths:
          MediaImageModel._backdropsFromJson(json['backdrops'] as Object),
      logoPaths: MediaImageModel._logosFromJson(json['logos'] as Object),
      posterPaths: MediaImageModel._postersFromJson(json['posters'] as Object),
    );
