package com.appuniversitaria.demo.dto;

import lombok.Data;
import java.util.List;

@Data
public class TopicDTO {
    private Integer idtopic;
    private String name;
    private String description;
    private List<Long> moduleIds;  // Solo enviamos los IDs de los módulos
} 