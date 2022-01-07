package com.test.quiz;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class test1 {
	public static void main(String[] args) {
		LocalDate current = LocalDate.now();
		int current_month = current.getMonthValue();
		LocalDate start = LocalDate.of(current.getYear(), current.getMonthValue(), 1);
		while (start.getMonthValue() == current.getMonthValue()) {
			System.out.println(start);
			start = start.plusDays(1);

		}
	}
}
