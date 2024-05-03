import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LogInPlusWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LogInPlusWidget(),
        ),
        FFRoute(
          name: 'OnboardingOne',
          path: '/onboardingOne',
          builder: (context, params) => const OnboardingOneWidget(),
        ),
        FFRoute(
          name: 'SignUpAccount',
          path: '/signUpAccount',
          builder: (context, params) => SignUpAccountWidget(
            firstname: params.getParam(
              'firstname',
              ParamType.String,
            ),
            middlename: params.getParam(
              'middlename',
              ParamType.String,
            ),
            lastname: params.getParam(
              'lastname',
              ParamType.String,
            ),
            suffix: params.getParam(
              'suffix',
              ParamType.String,
            ),
            birthdate: params.getParam(
              'birthdate',
              ParamType.DateTime,
            ),
            civilstatus: params.getParam(
              'civilstatus',
              ParamType.String,
            ),
            sex: params.getParam(
              'sex',
              ParamType.String,
            ),
            housenumber: params.getParam(
              'housenumber',
              ParamType.String,
            ),
            street: params.getParam(
              'street',
              ParamType.String,
            ),
            barangay: params.getParam(
              'barangay',
              ParamType.String,
            ),
            municipality: params.getParam(
              'municipality',
              ParamType.String,
            ),
            province: params.getParam(
              'province',
              ParamType.String,
            ),
            zipcode: params.getParam(
              'zipcode',
              ParamType.String,
            ),
            occupation: params.getParam(
              'occupation',
              ParamType.String,
            ),
            nationality: params.getParam(
              'nationality',
              ParamType.String,
            ),
            religion: params.getParam(
              'religion',
              ParamType.String,
            ),
            bloodtype: params.getParam(
              'bloodtype',
              ParamType.String,
            ),
            contactnubmer: params.getParam(
              'contactnubmer',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ProfilePage',
          path: '/profilePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ProfilePage')
              : const ProfilePageWidget(),
        ),
        FFRoute(
          name: 'MyInformationPage',
          path: '/myInformationPage',
          builder: (context, params) => const MyInformationPageWidget(),
        ),
        FFRoute(
          name: 'EditCivilStatus',
          path: '/editCivilStatus',
          builder: (context, params) => const EditCivilStatusWidget(),
        ),
        FFRoute(
          name: 'EditAddress',
          path: '/editAddress',
          builder: (context, params) => const EditAddressWidget(),
        ),
        FFRoute(
          name: 'EditOccupation',
          path: '/editOccupation',
          builder: (context, params) => const EditOccupationWidget(),
        ),
        FFRoute(
          name: 'EditContact',
          path: '/editContact',
          builder: (context, params) => const EditContactWidget(),
        ),
        FFRoute(
          name: 'TermsCondition',
          path: '/termsCondition',
          builder: (context, params) => const TermsConditionWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => const PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'FAQs',
          path: '/fAQs',
          builder: (context, params) => const FAQsWidget(),
        ),
        FFRoute(
          name: 'Verification',
          path: '/verification',
          builder: (context, params) => const VerificationWidget(),
        ),
        FFRoute(
          name: 'LogInPlus',
          path: '/logInPlus',
          builder: (context, params) => const LogInPlusWidget(),
        ),
        FFRoute(
          name: 'SignUpPersonalAcc',
          path: '/signUpPersonalAcc',
          builder: (context, params) => const SignUpPersonalAccWidget(),
        ),
        FFRoute(
          name: 'SignUpUserAcc',
          path: '/signUpUserAcc',
          builder: (context, params) => SignUpUserAccWidget(
            firstname: params.getParam(
              'firstname',
              ParamType.String,
            ),
            middlename: params.getParam(
              'middlename',
              ParamType.String,
            ),
            lastname: params.getParam(
              'lastname',
              ParamType.String,
            ),
            suffix: params.getParam(
              'suffix',
              ParamType.String,
            ),
            birthdate: params.getParam(
              'birthdate',
              ParamType.DateTime,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            province: params.getParam(
              'province',
              ParamType.String,
            ),
            city: params.getParam(
              'city',
              ParamType.String,
            ),
            barangay: params.getParam(
              'barangay',
              ParamType.String,
            ),
            fullAddress: params.getParam(
              'fullAddress',
              ParamType.String,
            ),
            occupation: params.getParam(
              'occupation',
              ParamType.String,
            ),
            religion: params.getParam(
              'religion',
              ParamType.String,
            ),
            bloodtype: params.getParam(
              'bloodtype',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'SetUpProfile',
          path: '/setUpProfile',
          builder: (context, params) => const SetUpProfileWidget(),
        ),
        FFRoute(
          name: 'HomePagePlus',
          path: '/homePagePlus',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'HomePagePlus')
              : const HomePagePlusWidget(),
        ),
        FFRoute(
          name: 'DonationJourney',
          path: '/donationJourney',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'DonationJourney')
              : const DonationJourneyWidget(),
        ),
        FFRoute(
          name: 'DonationDrive',
          path: '/donationDrive',
          builder: (context, params) => const DonationDriveWidget(),
        ),
        FFRoute(
          name: 'StartofBDIS',
          path: '/startofBDIS',
          builder: (context, params) => const StartofBDISWidget(),
        ),
        FFRoute(
          name: 'BDISInterface',
          path: '/bDISInterface',
          builder: (context, params) => const BDISInterfaceWidget(),
        ),
        FFRoute(
          name: 'Preparation',
          path: '/preparation',
          builder: (context, params) => const PreparationWidget(),
        ),
        FFRoute(
          name: 'Benefits',
          path: '/benefits',
          builder: (context, params) => const BenefitsWidget(),
        ),
        FFRoute(
          name: 'ScheduledDonation',
          path: '/scheduledDonation',
          builder: (context, params) => ScheduledDonationWidget(
            bloodstockref: params.getParam(
              'bloodstockref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['BloodStocks'],
            ),
            bloodCenterUserRef: params.getParam(
              'bloodCenterUserRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'BDISOpening',
          path: '/bDISOpening',
          builder: (context, params) => const BDISOpeningWidget(),
        ),
        FFRoute(
          name: 'BDISAnswerSheet',
          path: '/bDISAnswerSheet',
          builder: (context, params) => const BDISAnswerSheetWidget(),
        ),
        FFRoute(
          name: 'BDISSummary',
          path: '/bDISSummary',
          builder: (context, params) => BDISSummaryWidget(
            part: params.getParam(
              'part',
              ParamType.DataStruct,
              isList: false,
              structBuilder: QandAStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'part1Recap',
          path: '/part1Recap',
          builder: (context, params) => Part1RecapWidget(
            part: params.getParam(
              'part',
              ParamType.DataStruct,
              isList: false,
              structBuilder: QandAStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'BeforeHomepage',
          path: '/beforeHomepage',
          builder: (context, params) => const BeforeHomepageWidget(),
        ),
        FFRoute(
          name: 'DonorInterview',
          path: '/donorInterview',
          builder: (context, params) => DonorInterviewWidget(
            bloodstocksrefid: params.getParam(
              'bloodstocksrefid',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['BloodStocks'],
            ),
          ),
        ),
        FFRoute(
          name: 'part1',
          path: '/part1',
          builder: (context, params) => Part1Widget(
            counter: params.getParam(
              'counter',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'part2',
          path: '/part2',
          builder: (context, params) => Part2Widget(
            bloodstockid: params.getParam(
              'bloodstockid',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['BloodStocks'],
            ),
          ),
        ),
        FFRoute(
          name: 'part3',
          path: '/part3',
          builder: (context, params) => const Part3Widget(),
        ),
        FFRoute(
          name: 'part2Recap',
          path: '/part2Recap',
          builder: (context, params) => Part2RecapWidget(
            part: params.getParam(
              'part',
              ParamType.DataStruct,
              isList: false,
              structBuilder: QandAStruct.fromSerializableMap,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/logInPlus';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Splash.png',
                      width: double.infinity,
                      height: 250.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
