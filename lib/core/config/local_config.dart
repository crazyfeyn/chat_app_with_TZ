// // ignore_for_file: public_member_api_docs, sort_constructors_first

// class LocalConfig {
//   SharedPreferences sharedPreferences;
//   LocalConfig({
//     required this.sharedPreferences,
//   });

//   Future<void> saveToken(String token) async {
//     await sharedPreferences.setString(AppConstants.userToken, token);
//   }

//   Future<String?> getToken() async {
//     final token = sharedPreferences.getString(
//       AppConstants.userToken,
//     );
//     return token;
//   }

//   Future<bool> authenticated() async {
//     final token = sharedPreferences.getString(AppConstants.userToken);
//     return token != null && token.isNotEmpty;
//   }

//   Future<void> saveRefreshToken(String token) async {
//     await sharedPreferences.setString(AppConstants.userRefresh, token);
//   }

//   Future<void> saveUserIdToken(int token) async {
//     await sharedPreferences.setInt(AppConstants.sharedUserId, token);
//   }

//   Future<int> getUserIdToken() async {
//     return sharedPreferences.getInt(
//           AppConstants.sharedUserId,
//         ) ??
//         0;
//   }

//   Future<String> getRefreshToken() async {
//     final token = sharedPreferences.getString(
//       AppConstants.userRefresh,
//     );
//     return token ?? "";
//   }

//   Future<void> deleteTokens() async {
//     sharedPreferences.remove(AppConstants.userToken);
//     sharedPreferences.remove(AppConstants.userRefresh);
//   }
// }
