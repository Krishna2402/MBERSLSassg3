import '/components/card/card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for card component.
  late CardModel cardModel1;
  // Model for card component.
  late CardModel cardModel2;
  // Model for card component.
  late CardModel cardModel3;
  // Model for card component.
  late CardModel cardModel4;

  @override
  void initState(BuildContext context) {
    cardModel1 = createModel(context, () => CardModel());
    cardModel2 = createModel(context, () => CardModel());
    cardModel3 = createModel(context, () => CardModel());
    cardModel4 = createModel(context, () => CardModel());
  }

  @override
  void dispose() {
    cardModel1.dispose();
    cardModel2.dispose();
    cardModel3.dispose();
    cardModel4.dispose();
  }
}
