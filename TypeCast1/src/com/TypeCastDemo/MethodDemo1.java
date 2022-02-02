package com.TypeCastDemo;



public class MethodDemo1 {
	

		public int multipynumbers(int a,int b) {
			int z=a*b;
			return z;
		}

		public static void main(String[] args) {

			 MethodDemo1 b=new   MethodDemo1();
			int ans= b.multipynumbers(10,3);
			System.out.println("Multipilcation is :"+ans);
			}
	}



