package com.PracticeProject;

public class Overloading {
	public void area(int b, int h) {
		System.out.println("Area of Triangle : " + (0.5 * b * h));
	}

	public void area(int r) {
		System.out.println("Area of Circle : " + (3.14 * r * r));
	}

	public static void main(String args[]) {

		Overloading Ob = new Overloading();
		Ob.area(8, 16);
		Ob.area(7);
	}
}



