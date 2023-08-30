package edu.global.ex.modules;

import java.io.FileWriter;
import java.io.IOException;

public class MemberRegistrationMemory {
	private static final String FILE_PATH = "members.txt";

	public static void saveMemberInfo(String userId, String name, String birthday, String address, String password) {
		String memberInfo = String.format("User ID: %s, Name: %s, Birthday: %s, Address: %s, Password: %s",
				userId, name, birthday, address, password);

		try (FileWriter writer = new FileWriter(FILE_PATH, true)) {
			writer.write(memberInfo + System.lineSeparator());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
