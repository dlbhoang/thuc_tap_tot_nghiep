import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  PrefUtils(){
    SharedPreferences.getInstance().then((value) =>{
      _sharedPreferences=value
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async{
    _sharedPreferences = SharedPreferences.getInstance() as SharedPreferences?;
    print("Khởi tạo thành công!!!");
  }

  void clearPreferencesData() async{
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String val){
    return _sharedPreferences!.setString('themeData', val);
  }

  String? getThemeData(){
    try{
      return _sharedPreferences!.getString('themeData');
    } catch(e){
      return 'primary';
    }
  }
}