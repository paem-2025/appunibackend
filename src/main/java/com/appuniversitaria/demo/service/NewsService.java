package com.appuniversitaria.demo.service;

import com.appuniversitaria.demo.model.News;
import com.appuniversitaria.demo.repository.NewsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NewsService {
    
    @Autowired
    private NewsRepository newsRepository;

    public List<News> getAllNews() {
        return newsRepository.findAll();
    }

    public Optional<News> getNewsById(Integer id) {
        return newsRepository.findById(id);
    }

    public News saveNews(News news) {      
        News savedNews = newsRepository.save(news);       
        return savedNews;
    }

    public void deleteNews(Integer id) {
        newsRepository.deleteById(id);
    }
} 