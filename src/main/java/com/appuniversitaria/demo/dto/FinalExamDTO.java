package com.appuniversitaria.demo.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class FinalExamDTO {
    private Long idfinalExam;
    private Integer examYear;
    private Integer turnOrder;
    private String turnName;
    private String periodLabel;
    private LocalDate enrollmentStart;
    private LocalDate examStart;
    private LocalDate examEnd;
    private String notes;
    private String sourceUrl;
}
