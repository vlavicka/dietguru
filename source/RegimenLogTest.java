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
        assertTrue(expected.equals(log.getTitle()));
    }

    @Test
    public void testAccessors() {
        // set/get title
        RegimenLog log = new RegimenLog("First log");
        String expected = "Changed log";
        log.setTitle(expected);
        assertTrue(expected.equals(log.getTitle()));
        // set/get description
        expected = "Description";
        log.setDescription(expected);
        assertTrue(expected.equals(log.getDescription()));
        // set/get start date
        String date = "1.1.2011";
        log.setStartDate(1, 1, 2011);
        assertTrue(date.equals(log.getStartDate()));
        // set/get end date
        date = "2.1.2011";
        log.setEndDate(2, 1, 2011);
        assertTrue(date.equals(log.getEndDate()));
        // set/get start weight
        int weight = 100;
        log.setStartWeight(weight);
        assertTrue(weight == log.getStartWeight());
        // set/get end weigth
        weight = 90;
        log.setEndWeight(weight);
        assertTrue(weight == log.getEndWeight());
        // set/get notes
        String notes = "Some notes";
        log.setNotes(notes);
        assertTrue(notes.equals(log.getNotes()));
    }

}
