package com.appuniversitaria.demo.dto;

import lombok.Data;

@Data
public class IngresanteFaqDTO {
    private Long idfaq;
    private String question;
    private String answer;
    private String category;
    private Integer displayOrder;
    private String sourceUrl;
}
