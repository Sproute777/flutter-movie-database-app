import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core.dart';
import '../../domain/entities/movie.dart';
import '../../domain/entities/tv.dart';
import 'minimal_detail.dart';

class HorizontalItemList extends StatelessWidget {
  final MdbContentType type;
  final List<Movie>? movies;
  final List<Tv>? tvs;

  const HorizontalItemList({
    Key? key,
    required this.type,
    this.movies,
    this.tvs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case MdbContentType.movie:
        return SizedBox(
          height: 170.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: movies!.length,
            itemBuilder: (context, index) {
              final movie = movies![index];
              return Container(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return MinimalDetail(
                          type: type,
                          movie: movie,
                        );
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    child: CachedNetworkImage(
                      width: 120.0,
                      fit: BoxFit.cover,
                      imageUrl: Urls.imageUrl(movie.posterPath!),
                      placeholder: (context, url) => Shimmer.fromColors(
                        child: Container(
                          height: 170.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        baseColor: Colors.grey[850]!,
                        highlightColor: Colors.grey[800]!,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      case MdbContentType.tv:
        return SizedBox(
          height: 170.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: tvs!.length,
            itemBuilder: (context, index) {
              final tv = tvs![index];
              return Container(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return MinimalDetail(
                          type: type,
                          tv: tv,
                        );
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: CachedNetworkImage(
                      width: 120.0,
                      fit: BoxFit.cover,
                      imageUrl: Urls.imageUrl(tv.posterPath!),
                      placeholder: (context, url) => Shimmer.fromColors(
                        child: Container(
                          height: 170.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        baseColor: Colors.grey[850]!,
                        highlightColor: Colors.grey[800]!,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              );
            },
          ),
        );
    }
  }
}
