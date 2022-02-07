package com.emailvalidation;

import java.util.Arrays;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidation {
	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);

		String[] li = new String[5];

		li[0] = "s3@gmail.com";
		li[1] = "pari12@gmail.com";
		li[2] = "don376@gmail.com";
		li[3] = "raja38@gmail.com";
		li[4] = "sonalika3@gmail.com";

		// List<String> newList = Arrays.asList(li);

		String pattern = "([a-z0-9]+)@gmail.com";
		Pattern p = Pattern.compile(pattern);

		while (true) {
			System.out.println("Enter your Email :");
			String email = scn.next();

			Matcher m = p.matcher(email);

			boolean b = m.matches();

			if (b == true) {

				boolean b1 = Arrays.asList(li).contains(email);
				if (b1 == true) {
					System.out.println("Your email id is successfully Validate\n 'Thank you'");

					break;
				} else
					System.out.println("Please provide a valid EmailId");

			}

			else {
				System.out.println("Try Again with valid one:");
				System.out.println("Repeat again?(Y/N)");
				char s = scn.next().charAt(0);
				if (s == 'y' || s == 'Y')
					continue;
				else
					System.out.println("Thank you Try again...");
				break;
			}
		}

		scn.close();
	}

}
