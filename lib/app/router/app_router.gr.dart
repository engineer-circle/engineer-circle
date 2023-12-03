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
    AdminMenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminMenuPage(),
      );
    },
    AdminRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminRootPage(),
      );
    },
    CreateSeatingChartRoute.name: (routeData) {
      final args = routeData.argsAs<CreateSeatingChartRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateSeatingChartPage(
          key: args.key,
          seatTitle: args.seatTitle,
        ),
      );
    },
    HomeTabRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeTabRouterPage(),
      );
    },
    InitialSetupSeatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InitialSetupSeatPage(),
      );
    },
    ProfileFormRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileFormRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileFormPage(
          key: args.key,
          initialProfile: args.initialProfile,
          isEdit: args.isEdit,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ProfileTabRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabRouterPage(),
      );
    },
    RootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RootPage(),
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
/// [AdminMenuPage]
class AdminMenuRoute extends PageRouteInfo<void> {
  const AdminMenuRoute({List<PageRouteInfo>? children})
      : super(
          AdminMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminMenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminRootPage]
class AdminRootRoute extends PageRouteInfo<void> {
  const AdminRootRoute({List<PageRouteInfo>? children})
      : super(
          AdminRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateSeatingChartPage]
class CreateSeatingChartRoute
    extends PageRouteInfo<CreateSeatingChartRouteArgs> {
  CreateSeatingChartRoute({
    Key? key,
    required String seatTitle,
    List<PageRouteInfo>? children,
  }) : super(
          CreateSeatingChartRoute.name,
          args: CreateSeatingChartRouteArgs(
            key: key,
            seatTitle: seatTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateSeatingChartRoute';

  static const PageInfo<CreateSeatingChartRouteArgs> page =
      PageInfo<CreateSeatingChartRouteArgs>(name);
}

class CreateSeatingChartRouteArgs {
  const CreateSeatingChartRouteArgs({
    this.key,
    required this.seatTitle,
  });

  final Key? key;

  final String seatTitle;

  @override
  String toString() {
    return 'CreateSeatingChartRouteArgs{key: $key, seatTitle: $seatTitle}';
  }
}

/// generated route for
/// [HomeTabRouterPage]
class HomeTabRouterRoute extends PageRouteInfo<void> {
  const HomeTabRouterRoute({List<PageRouteInfo>? children})
      : super(
          HomeTabRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InitialSetupSeatPage]
class InitialSetupSeatRoute extends PageRouteInfo<void> {
  const InitialSetupSeatRoute({List<PageRouteInfo>? children})
      : super(
          InitialSetupSeatRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialSetupSeatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileFormPage]
class ProfileFormRoute extends PageRouteInfo<ProfileFormRouteArgs> {
  ProfileFormRoute({
    Key? key,
    required User? initialProfile,
    required bool isEdit,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileFormRoute.name,
          args: ProfileFormRouteArgs(
            key: key,
            initialProfile: initialProfile,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileFormRoute';

  static const PageInfo<ProfileFormRouteArgs> page =
      PageInfo<ProfileFormRouteArgs>(name);
}

class ProfileFormRouteArgs {
  const ProfileFormRouteArgs({
    this.key,
    required this.initialProfile,
    required this.isEdit,
  });

  final Key? key;

  final User? initialProfile;

  final bool isEdit;

  @override
  String toString() {
    return 'ProfileFormRouteArgs{key: $key, initialProfile: $initialProfile, isEdit: $isEdit}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabRouterPage]
class ProfileTabRouterRoute extends PageRouteInfo<void> {
  const ProfileTabRouterRoute({List<PageRouteInfo>? children})
      : super(
          ProfileTabRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTabRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RootPage]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute({List<PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

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
