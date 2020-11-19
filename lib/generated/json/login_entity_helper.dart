import 'package:wust_life/network/bean/login_entity.dart';

loginEntityFromJson(LoginEntity data, Map<String, dynamic> json) {
	if (json['token'] != null) {
		data.token = json['token']?.toString();
	}
	return data;
}

Map<String, dynamic> loginEntityToJson(LoginEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['token'] = entity.token;
	return data;
}