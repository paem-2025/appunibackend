package com.appuniversitaria.demo.dto;

import lombok.Data;

@Data
public class CorrelativityDTO {
    private Long idcorrelativity;
    private String careerKey;
    private String careerName;
    private String planName;
    private Integer planYear;
    private String subjectCode;
    private String subjectName;
    private Integer subjectYear;
    private String subjectTerm;
    private String requirementCodes;
    private String requirementSubjects;
    private String notes;
    private String sourceUrl;
}
