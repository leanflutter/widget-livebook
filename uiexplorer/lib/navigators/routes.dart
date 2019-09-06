import '../includes.dart';

List<SliceExample> sliceExamples = [
  SliceAlertDialog(),
  SliceAlign(),
  SliceAnimatedAlign(),
  SliceAnimatedBuilder(),
  SliceAnimatedContainer(),
  SliceAnimatedCrossFade(),
  SliceAnimatedDefaultTextStyle(),
  SliceAnimatedList(),
  SliceAnimatedOpacity(),
  SliceAnimatedPadding(),
  SliceAnimatedPhysicalModel(),
  SliceAnimatedPositioned(),
  SliceAnimatedSize(),
  SliceAnimatedSwitcher(),
  SliceAppBar(),
  SliceAspectRatio(),
  SliceBackdropFilter(),
  SliceBanner(),
  SliceBaseline(),
  SliceBottomAppBar(),
  SliceBottomNavigationBar(),
  SliceBottomSheet(),
  SliceButtonBar(),
  SliceCard(),
  SliceCenter(),
  SliceCheckbox(),
  SliceCheckboxListTile(),
  SliceChip(),
  SliceCircleAvatar(),
  SliceCircularProgressIndicator(),
  SliceClipOval(),
  SliceClipPath(),
  SliceClipRRect(),
  SliceClipRect(),
  SliceColumn(),
  SliceConstrainedBox(),
  SliceContainer(),
  SliceCupertinoActionSheet(),
  SliceCupertinoActivityIndicator(),
  SliceCupertinoAlertDialog(),
  SliceCupertinoButton(),
  SliceCupertinoDatePicker(),
  SliceCupertinoNavigationBar(),
  SliceCupertinoPageScaffold(),
  SliceCupertinoSlider(),
  SliceCupertinoSwitch(),
  SliceCustomPaint(),
  SliceCustomScrollView(),
  SliceDataTable(),
  SliceDatePicker(),
  SliceDecoratedBox(),
  SliceDecoratedBoxTransition(),
  SliceDefaultTextStyle(),
  SliceDismissible(),
  SliceDivider(),
  SliceDraggable(),
  SliceDrawer(),
  SliceDropdownButton(),
  SliceExpanded(),
  SliceExpansionPanelList(),
  SliceFlatButton(),
  SliceFlexible(),
  SliceFloatingActionButton(),
  SliceFlow(),
  SliceFlutterLogo(),
  SliceForm(),
  SliceGestureDetector(),
  SliceGridView(),
  SliceIcon(),
  SliceIconButton(),
  SliceImage(),
  SliceIndexedStack(),
  SliceInkWell(),
  SliceLinearProgressIndicator(),
  SliceListTile(),
  SliceListView(),
  SliceNestedScrollView(),
  SliceOpacity(),
  SliceOutlineButton(),
  SliceOverflowBox(),
  SlicePadding(),
  SlicePageView(),
  SlicePhysicalModel(),
  SlicePlaceholder(),
  SlicePopupMenuButton(),
  SlicePositioned(),
  SlicePositionedTransition(),
  SliceRadio(),
  SliceRadioListTile(),
  SliceRaisedButton(),
  SliceRangeSlider(),
  SliceRefreshIndicator(),
  SliceRichText(),
  SliceRotatedBox(),
  SliceRotationTransition(),
  SliceRow(),
  SliceScaffold(),
  SliceScrollbar(),
  SliceSimpleDialog(),
  SliceSingleChildScrollView(),
  SliceSizedBox(),
  SliceSizedOverflowBox(),
  SliceSlider(),
  SliceSliverAppBar(),
  SliceStack(),
  SliceStepper(),
  SliceSwitch(),
  SliceTabBar(),
  SliceTable(),
  SliceText(),
  SliceTextField(),
  SliceTimePicker(),
  SliceTooltip(),
  SliceTransform(),
  SliceVerticalDivider(),
  SliceWrap(),
];

class _SimplePageRoute {
  String routeName;
  WidgetBuilder buildRoute;

  _SimplePageRoute(this.routeName, this.buildRoute);
}

class _PageExamplePageRoute {}

class _SliceExamplePageRoute extends _SimplePageRoute {
  SliceExample example;

  _SliceExamplePageRoute(String routeName, buildRoute)
      : super(routeName, buildRoute);

  static _SliceExamplePageRoute fromSliceExample(SliceExample example) {
    String routeName = example.name ?? example.runtimeType.toString();
    WidgetBuilder buildRoute = (_) => Preview4SliceExamplePage(example);

    _SliceExamplePageRoute pageRoute =
        _SliceExamplePageRoute(routeName, buildRoute);
    pageRoute.example = example;

    return pageRoute;
  }
}

List<_SimplePageRoute> _simplePageRoute = [
  _SimplePageRoute(
    '',
    (_) => HomeScreen(),
  )
];
List<_PageExamplePageRoute> _pageExampleRoutes = [];
List<_SliceExamplePageRoute> _sliceExampleRoutes = []
  ..addAll(sliceExamples.map((v) => _SliceExamplePageRoute.fromSliceExample(v)));

List<dynamic> routes = []
  ..addAll(_simplePageRoute)
  ..addAll(_pageExampleRoutes)
  ..addAll(_sliceExampleRoutes);
