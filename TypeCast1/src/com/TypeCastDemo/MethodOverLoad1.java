package com.TypeCastDemo;



public class MethodOverLoad1 {
	
		//call by value
				

				int val=150;

				int operation(int val) {
					val =val*10/100;
					return(val);
				}

				public static void main(String args[]) {
					MethodOverLoad1 d = new MethodOverLoad1();
					System.out.println("Before operation value of data is "+d.val);
					d.operation(100);
					System.out.println("After operation value of data is "+d.val);
					}
				}


