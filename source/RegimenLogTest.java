package net.cantooce.dietguru.test;

import static org.junit.Assert.*;
import org.junit.*;

import net.cantooce.dietguru.*;


public class RegimenLogTest {
    @Before
    public void setUp() { ; }

	@Test
    public void testCreateRegimenLog() {
        // create log with default settings
        String expected = "First log";
        RegimenLog log = new RegimenLog(expected);
        assertTrue(expected == log.title);
    }

    @Test
    public void testAccessorsTitle() {
        // set/get title
        RegimenLog log = new RegimenLog("First log");
        String expected = "Changed log";
        log.setTitle(expected);
        assertTrue(expected.equals(log.getTitle()));
    }

    // set/get description
    // set/get start date
    // set/get end date
    // set/get start weigth
    // set/get end weigth
    // set/get notes
}
