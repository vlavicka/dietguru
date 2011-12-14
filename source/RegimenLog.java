package net.cantooce.dietguru;

public class RegimenLog {
    private String title;
    private String description;
    private String startDate;
    private String endDate;
    private int startWeight;
    private int endWeight;
    private String notes;

    public RegimenLog(String title) {
        this.title = title;
    }

    public void setTitle(String title) { this.title = title; }
    public String getTitle() { return this.title; }

    public void setDescription(String desc) { this.description = desc; }
    public String getDescription() { return this.description; }

    public void setStartDate(int day, int month, int year) { 
        // TODO: use better formatting or separate Date class
        startDate = formatDate(day, month, year);
    }

    public String getStartDate() { 
        return startDate;
    }

    public void setEndDate(int day, int month, int year) { 
        endDate = formatDate(day, month, year);
    }

    public String getEndDate() {
        return endDate;
    }

    public void setStartWeight(int weight) {
        this.startWeight = weight;
    }

    public int getStartWeight() {
        return this.startWeight;
    }

    public void setEndWeight(int weight) {
        this.endWeight = weight;
    }

    public int getEndWeight() {
        return this.endWeight;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getNotes() {
        return notes;
    }

    // private methods
    private String formatDate(int day, int month, int year) {
        return "" + day + "." + month + "." + year; 
    }
    
}

