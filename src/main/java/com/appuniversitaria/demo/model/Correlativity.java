package com.appuniversitaria.demo.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "correlativity")
public class Correlativity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idcorrelativity")
    private Long idcorrelativity;

    @Column(name = "career_key", nullable = false)
    private String careerKey;

    @Column(name = "career_name", nullable = false)
    private String careerName;

    @Column(name = "plan_name")
    private String planName;

    @Column(name = "plan_year")
    private Integer planYear;

    @Column(name = "subject_code")
    private String subjectCode;

    @Column(name = "subject_name", nullable = false)
    private String subjectName;

    @Column(name = "subject_year")
    private Integer subjectYear;

    @Column(name = "subject_term")
    private String subjectTerm;

    @Column(name = "requirement_codes")
    private String requirementCodes;

    @Column(name = "requirement_subjects", columnDefinition = "TEXT")
    private String requirementSubjects;

    @Column(columnDefinition = "TEXT")
    private String notes;

    @Column(name = "source_url")
    private String sourceUrl;
}
