package net.cantooce.dietguru.test;

import static org.junit.Assert.*;
import org.junit.*;

import net.cantooce.dietguru.*;


public class DietGuruTest {
    private DietGuruData data;

    @Before
    public void setUp() {
        data = new DietGuruData(10);
    }

	@Test
    public void testGetId() {
        assertTrue(data.getId() == 10);
	}

    @Test
    public void testSetId() {
        data.setId(20);
        assertTrue(data.getId() == 20);
    }
}
