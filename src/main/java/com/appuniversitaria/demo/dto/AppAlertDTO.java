package com.appuniversitaria.demo.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class AppAlertDTO {
    private Long idappAlert;
    private String title;
    private String message;
    private LocalDate alertDate;
    private LocalDate endDate;
    private String category;
    private String audience;
    private Boolean important;
    private String sourceUrl;
}
