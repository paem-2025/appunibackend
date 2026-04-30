package com.appuniversitaria.demo.model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "app_alert")
public class AppAlert {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idapp_alert")
    private Long idappAlert;

    @Column(nullable = false)
    private String title;

    @Column(columnDefinition = "TEXT", nullable = false)
    private String message;

    @Column(name = "alert_date", nullable = false)
    private LocalDate alertDate;

    @Column(name = "end_date")
    private LocalDate endDate;

    @Column(nullable = false)
    private String category;

    @Column(nullable = false)
    private String audience;

    @Column(nullable = false)
    private Boolean important = false;

    @Column(name = "source_url")
    private String sourceUrl;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;
}
