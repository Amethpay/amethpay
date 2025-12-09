import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_pagebusiness_widget.dart' show HomePagebusinessWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePagebusinessModel extends FlutterFlowModel<HomePagebusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
