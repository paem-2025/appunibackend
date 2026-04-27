package com.appuniversitaria.demo.dto;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class NewsDTO {
    private Integer idnews;
    private String title;
    private String content;
    private String image_path;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public NewsDTO() {
    }

    public NewsDTO(Integer idnews, String title, String content, String image_path, 
                   LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.idnews = idnews;
        this.title = title;
        this.content = content;
        this.image_path = image_path;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }
} 