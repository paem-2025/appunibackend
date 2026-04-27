package com.appuniversitaria.demo.dto;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class ModuleDTO {
    private Long idmodule;
    private String title;
    private String content;
    private LocalDateTime createdAt;
    private LocalDateTime deletedAt;
    private String imagePath;
    private Integer topicId;
    private String topicName;

    public ModuleDTO() {
    }

    public ModuleDTO(Long idmodule, String title, String content, LocalDateTime createdAt, 
                    LocalDateTime deletedAt, String imagePath, Integer topicId, String topicName) {
        this.idmodule = idmodule;
        this.title = title;
        this.content = content;
        this.createdAt = createdAt;
        this.deletedAt = deletedAt;
        this.imagePath = imagePath;
        this.topicId = topicId;
        this.topicName = topicName;
    }
} 