package com.appuniversitaria.demo.controller;

import com.appuniversitaria.demo.model.News;
import com.appuniversitaria.demo.dto.NewsDTO;
import com.appuniversitaria.demo.mapper.NewsMapper;
import com.appuniversitaria.demo.service.NewsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @Autowired
    private NewsMapper newsMapper;

    @GetMapping
    public List<NewsDTO> getAllNews() {
        return newsService.getAllNews().stream()
                .map(newsMapper::toDTO)
                .collect(Collectors.toList());
    }

    @GetMapping("/{id}")
    public ResponseEntity<NewsDTO> getNewsById(@PathVariable Integer id) {
        return newsService.getNewsById(id)
                .map(newsMapper::toDTO)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public NewsDTO createNews(@RequestBody NewsDTO newsDTO) {     
        News news = newsMapper.toEntity(newsDTO);
        
        news.setCreatedAt(LocalDateTime.now());
        news.setUpdatedAt(LocalDateTime.now());

        News savedNews = newsService.saveNews(news);      
        NewsDTO resultDTO = newsMapper.toDTO(savedNews);     
        return resultDTO;
    }

    @PatchMapping("/{id}")
    public ResponseEntity<NewsDTO> updateNews(@PathVariable Integer id, @RequestBody NewsDTO newsDTO) {
        return newsService.getNewsById(id)
                .map(existingNews -> {

                    if (newsDTO.getTitle() != null) {
                        existingNews.setTitle(newsDTO.getTitle());
                    }
                    if (newsDTO.getContent() != null) {
                        existingNews.setContent(newsDTO.getContent());
                    }
                    if (newsDTO.getImage_path() != null) {
                        existingNews.setImage_path(newsDTO.getImage_path());
                    }

                    existingNews.setUpdatedAt(LocalDateTime.now());

                    News updatedNews = newsService.saveNews(existingNews);
                    NewsDTO resultDTO = newsMapper.toDTO(updatedNews);
                    return ResponseEntity.ok(resultDTO);
                })
                .orElse(ResponseEntity.notFound().build());
    }


    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteNews(@PathVariable Integer id) {
        return newsService.getNewsById(id)
                .map(news -> {
                    newsService.deleteNews(id);
                    return ResponseEntity.ok().<Void>build();
                })
                .orElse(ResponseEntity.notFound().build());
    }

} 