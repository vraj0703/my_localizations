// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => '我的本地化';

  @override
  String animatedArrowSemanticSwipe(Object title) {
    return '探索有关 $title 的详细信息。';
  }

  @override
  String collectionLabelDiscovered(Object percentage) {
    return '$percentage% 已发现';
  }

  @override
  String get fullscreenImageViewerSemanticFull => '全屏图像，无可用描述';

  @override
  String collectionLabelCount(Object count, Object total) {
    return '$total 的 $count';
  }

  @override
  String newlyDiscoveredLabelNew(Object count, Object suffix) {
    return '$count 新项目 $suffix 待探索';
  }

  @override
  String timelineSemanticDate(Object fromDate, Object endDate) {
    return '$fromDate 至 $endDate';
  }

  @override
  String titleLabelDate(Object fromDate, Object endDate) {
    return '$fromDate 至 $endDate';
  }

  @override
  String get ok => '好的';

  @override
  String get cancel => '取消';

  @override
  String get page => '页';

  @override
  String appPageSemanticSwipe(Object pageTitle, Object current, Object total) {
    return '$pageTitle $current 或 $total。';
  }

  @override
  String semanticsPrevious(Object title) {
    return '上一个 $title';
  }

  @override
  String semanticsNext(Object title) {
    return '下一个 $title';
  }

  @override
  String get date => '日期';

  @override
  String get searchTerms => '搜索词';

  @override
  String get close => '关闭';

  @override
  String get back => '后退';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String privacyStatement(Object privacyUrl) {
    return '正如我们的 $privacyUrl 中所解释的，我们不收集任何个人信息。';
  }

  @override
  String get pageNotFoundMessage => '您正在寻找的页面不存在。';

  @override
  String get pageNotFound => '找不到页面。';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get cameraPermissionTitle => '请提供相机权限';

  @override
  String get voicePermissionTitle => '请提供麦克风权限';

  @override
  String get cameraPermissionDescription => '请提供相机权限';

  @override
  String get voicePermissionDescription => '请提供麦克风权限';

  @override
  String get testKey => '你好世界';

  @override
  String get startOver => '重新开始';

  @override
  String get continueLabel => '继续';

  @override
  String get score => '分数';

  @override
  String get enroll => '注册';

  @override
  String get somethingWentWrong => '出了点问题';

  @override
  String get tryAgain => '再试一次';

  @override
  String get next => '下一个';

  @override
  String get selectAnOption => '选择一个选项';
}
