package com.appuniversitaria.demo.mapper;

import com.appuniversitaria.demo.dto.NewsDTO;
import com.appuniversitaria.demo.model.News;
import org.springframework.stereotype.Component;

@Component
public class NewsMapper {
    
    public NewsDTO toDTO(News news) {
        if (news == null) return null;
        
        NewsDTO dto = new NewsDTO();
        dto.setIdnews(news.getIdnews());
        dto.setTitle(news.getTitle());
        dto.setContent(news.getContent());
        dto.setImage_path(news.getImage_path());
        dto.setCreatedAt(news.getCreatedAt());
        dto.setUpdatedAt(news.getUpdatedAt());

        return dto;
    }
    
    public News toEntity(NewsDTO dto) {
        if (dto == null) return null;
        
        News news = new News();
        news.setIdnews(dto.getIdnews());
        news.setTitle(dto.getTitle());
        news.setContent(dto.getContent());
        news.setImage_path(dto.getImage_path());
        news.setCreatedAt(dto.getCreatedAt());
        news.setUpdatedAt(dto.getUpdatedAt());

        return news;
    }
} 