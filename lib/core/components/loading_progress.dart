import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

import '../export.dart';

class LoadingProgress extends StatelessWidget {
  final int? itemCount;
  const LoadingProgress({
    Key? key,
    this.itemCount,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultSpacing, vertical: defaultSpacing),
        reverse: false,
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        staggeredTileBuilder: (int index) {
          if (index % 7 == 0) {
            return const StaggeredTile.count(2, 2);
          } else {}
          return const StaggeredTile.count(1, 1);
        },
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Shimmer(
            direction: ShimmerDirection.ltr,
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 233, 233, 233),
                Color.fromARGB(255, 255, 250, 250),
                Color.fromARGB(255, 231, 230, 230),
              ],
              stops: [0.4, 0.5, 0.6],
              begin: Alignment(-1, 0),
              end: Alignment(1, 0),
            ),
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 255, 253, 253),
              ),
            ),
          );
        });
  }
}
