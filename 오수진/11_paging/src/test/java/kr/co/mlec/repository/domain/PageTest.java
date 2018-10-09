package kr.co.mlec.repository.domain;

import org.junit.Test;

public class PageTest {
	@Test
	public void test() {
		Page p = new Page();
		p.setPageNo(1);
		System.out.println(p.getBegin() + "-" + p.getEnd());
		p.setPageNo(2);
		System.out.println(p.getBegin() + "-" + p.getEnd());
	}
}
