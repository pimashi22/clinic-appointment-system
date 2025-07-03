package com.medisync.model;

public class Faq {
    private String question;
    private String answer;
    private String category;
    private String priority;
    private String keywords;
    private String created_by;

    public Faq(String question, String answer, String category, String priority, String keywords, String created_by) {
        this.question = question;
        this.answer = answer;
        this.category = category;
        this.priority = priority;
        this.keywords = keywords;
        this.created_by = created_by;
    }
    
    public Faq(String question, String answer) {
        this.question = question;
        this.answer = answer;
    }


    // ✅ Add Getters
    public String getQuestion() {
        return question;
    }

    public String getAnswer() {
        return answer;
    }

    public String getCategory() {
        return category;
    }

    public String getPriority() {
        return priority;
    }

    public String getKeywords() {
        return keywords;
    }

    public String getCreated_by() {
        return created_by;
    }
}
