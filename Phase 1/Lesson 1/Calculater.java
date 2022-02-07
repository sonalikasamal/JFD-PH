package com.simplilearn;
import java.util.Scanner;
public class Calculater {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		double a,num1,num2,num3;
		char b;
		while(true) {
			System.out.println("1.(+)2.(-)"+"\n3.(*)4.(/)");
			System.out.println("Choose a Operation(1/2/3/4)");
			a=sc.nextInt();
			System.out.println("Enter two numbers:");
			num1=sc.nextDouble();
			num2=sc.nextDouble();
			if(a==1) {
				System.out.println("You choose Addition");
				num3=num1+num2;
				System.out.println(num1+"+"+num2+"="+num3);
			}
			if(a==2) {
				System.out.println("You choose Substraction");
				num3=num1-num2;
				System.out.println(num1+"-"+num2+"="+num3);
			}
			else if(a==3) {
				System.out.println("You choose Multiplication");
				num3=num1*num2;
				System.out.println(num1+"*"+num2+"="+num3);
				}
			else if(a==4) {
				System.out.println("You choose Division");
				num3=num1/num2;
				System.out.println(num1+"/"+num2+"="+num3);
			}
			System.out.println("Enter'y'to Continue & 'n' to exit");
			b=sc.next().charAt(0);
			if(b=='y')continue;
			else break;
					
		}

	}

}
