class AppConstants {
  AppConstants._();

  // ── API ─────────────────────────────────────
  static const apiBaseUrl  = 'https://open.er-api.com/v6/latest';
  static const apiTimeout  = Duration(seconds: 10);

  // ── Cache ────────────────────────────────────
  static const cacheKey       = 'cached_rates';
  static const cacheTimeKey   = 'cache_time';
  static const cacheDuration  = Duration(hours: 1);

  // ── Storage keys ────────────────────────────
  static const themeKey        = 'is_dark_theme';
  static const favoritesKey    = 'favorites';
  static const fromCurrencyKey = 'from_currency';
  static const toCurrencyKey   = 'to_currency';

  // ── Default currencies ───────────────────────
  static const defaultFrom = 'USD';
  static const defaultTo   = 'UZS';

  // ── App info ────────────────────────────────
  static const appName    = 'CurSync';
  static const appVersion = '1.0.0';
}