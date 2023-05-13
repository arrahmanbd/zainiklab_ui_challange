import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../core/components/loading_progress.dart';
import '../../core/components/search.dart';
import '../../core/export.dart';
import '../../data/response/status.dart';
import '../../view_models/explorer/explorer_viewmodel.dart';

class ExplorerView extends StatefulWidget {
  const ExplorerView({Key? key}) : super(key: key);

  @override
  State<ExplorerView> createState() => _ExplorerViewState();
}

class _ExplorerViewState extends State<ExplorerView> {
  final explorerController = Get.put(ExplorerController());

  @override
  void initState() {
    super.initState();
    explorerController.explorerList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const ExploreSearchForm(),
            Expanded(
              child: Obx(() {
                switch (explorerController.rxRequestStatus.value) {
                  case Status.loading:
                    return const LoadingProgress(
                      itemCount: 13,
                    );
                  case Status.error:
                    if (explorerController.error.value == 'No internet') {
                      return InterNetExceptionWidget(
                        onPress: () {
                          explorerController.refreshApi();
                        },
                      );
                    } else {
                      return GeneralExceptionWidget(onPress: () {
                        explorerController.refreshApi();
                      });
                    }
                  case Status.success:
                    return RefreshIndicator(
                      onRefresh: () async {
                        explorerController.refreshApi();
                      },
                      child: StaggeredGridView.countBuilder(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultSpacing,
                            vertical: defaultSpacing),
                        reverse: false,
                        crossAxisCount: 3,
                        itemCount: explorerController
                            .explorerListModel.value.products!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: FadeInImage(
                                placeholder:
                                    const AssetImage(ImageName.placeHolder),
                                image: NetworkImage(explorerController
                                    .explorerListModel
                                    .value
                                    .products![index]
                                    .thumbnail
                                    .toString()),
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        staggeredTileBuilder: (int index) {
                          if (index == 0 || index == 1 || index == 2) {
                            // First 3 items should be 1x1 tiles
                            return const StaggeredTile.count(1, 0.85);
                          } else if (index % 7 == 0) {
                            // Every 7th item should be a 2x2 tile
                            return const StaggeredTile.count(2, 1.7);
                          } else {
                            // Every other item should be a 1x2 tile
                            return const StaggeredTile.count(1, 0.85);
                          }
                        },
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                      ),
                    );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
