package com.PracticeProject;


	import java.util.*;
	import java.util.Map.Entry;

	public class Map {

		public static void main(String[] args) {
			// map

			HashMap<Integer, String> hm = new HashMap<Integer, String>();
			hm.put(1, "Rima");
			hm.put(2, "Sona");
			hm.put(3, "Lima");

			System.out.println("\nThe elements of Hashmap are ");
			for (Entry<Integer, String> m : hm.entrySet()) {
				System.out.println(m.getKey() + " " + m.getValue());
			}

			Hashtable<Integer, String> ht = new Hashtable<Integer, String>();

			ht.put(4, "Rupa");
			ht.put(5, "Suna");
			ht.put(6, "Shalini");
			ht.put(7, "Aditi");

			System.out.println("\nThe elements of HashTable are ");
			for (Entry<Integer, String> n : ht.entrySet()) {
				System.out.println(n.getKey() + " " + n.getValue());
			}

			// TreeMap

			TreeMap<Integer, String> map = new TreeMap<Integer, String>();
			map.put(8, "Chintu");
			map.put(9, "Subha");
			map.put(10, "Anirudh");

			System.out.println("\nThe elements of TreeMap are ");
			for (Entry<Integer, String> l : map.entrySet()) {
				System.out.println(l.getKey() + " " + l.getValue());
			}

		}
	}



