import '../export.dart';
import '../fonts/app_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: AppColor.secondaryWhite,
    cardColor: AppColor.secondaryWhite,
    cardTheme: const CardTheme(elevation: 1),
    dividerColor: AppColor.secondaryWhite,
    fontFamily: AppFonts.dmSans,

    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD1E4FF),
      onPrimaryContainer: Color(0xFF001D36),
      secondary: Color(0xFF535F70),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFD7E3F7),
      onSecondaryContainer: Color(0xFF101C2B),
      surface: Color(0xFF1976D2),
      onSurface: Color(0xFF1A1C1E),
      surfaceTint: Color(0xFFFFFFFF),
      surfaceVariant: Color(0xFF646870),
      onSurfaceVariant: Color(0xFF001D36),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF001D36),
      brightness: Brightness.light,
      tertiary: Color(0xFF6B5778),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFF2DAFF),
      onTertiaryContainer: Color(0xFF251431),
      outline: Color(0xFF1976D2),
      shadow: Color(0xFF1976D2),
    ),
    brightness: Brightness.light,
  );
}
