package com.TypeCast1;

public class MethodOverLoadDemo {
	//call by value
			

			int val=150;

			int operation(int val) {
				val =val*10/100;
				return(val);
			}

			public static void main(String args[]) {
				 MethodOverLoadDemo d = new  MethodOverLoadDemo();
				System.out.println("Before operation value of data is "+d.val);
				d.operation(100);
				System.out.println("After operation value of data is "+d.val);
				}
			}
			


