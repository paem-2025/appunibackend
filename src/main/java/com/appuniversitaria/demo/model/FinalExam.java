package com.appuniversitaria.demo.model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Data
@Entity
@Table(name = "final_exam")
public class FinalExam {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idfinal_exam")
    private Long idfinalExam;

    @Column(name = "exam_year", nullable = false)
    private Integer examYear;

    @Column(name = "turn_order", nullable = false)
    private Integer turnOrder;

    @Column(name = "turn_name", nullable = false)
    private String turnName;

    @Column(name = "period_label")
    private String periodLabel;

    @Column(name = "enrollment_start", nullable = false)
    private LocalDate enrollmentStart;

    @Column(name = "exam_start", nullable = false)
    private LocalDate examStart;

    @Column(name = "exam_end", nullable = false)
    private LocalDate examEnd;

    @Column(name = "notes")
    private String notes;

    @Column(name = "source_url")
    private String sourceUrl;
}
