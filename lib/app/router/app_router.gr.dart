// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CreateSeatingChartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateSeatingChartPage(),
      );
    },
    SeatingChartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SeatingChartPage(),
      );
    },
  };
}

/// generated route for
/// [CreateSeatingChartPage]
class CreateSeatingChartRoute extends PageRouteInfo<void> {
  const CreateSeatingChartRoute({List<PageRouteInfo>? children})
      : super(
          CreateSeatingChartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateSeatingChartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeatingChartPage]
class SeatingChartRoute extends PageRouteInfo<void> {
  const SeatingChartRoute({List<PageRouteInfo>? children})
      : super(
          SeatingChartRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeatingChartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
