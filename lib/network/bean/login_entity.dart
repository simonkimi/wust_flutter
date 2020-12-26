

class LoginEntity {
	String token;

	LoginEntity.fromJson(Map<String, dynamic> json) {
		token = json["token"];
	}
}
