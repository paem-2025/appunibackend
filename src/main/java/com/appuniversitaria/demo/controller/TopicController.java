package com.appuniversitaria.demo.controller;

import com.appuniversitaria.demo.model.Topic;
import com.appuniversitaria.demo.service.TopicService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/topics")
public class TopicController {

    @Autowired
    private TopicService topicService;

    @GetMapping
    public List<Topic> getAllTopics() {
        return topicService.getAllTopics();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Topic> getTopicById(@PathVariable Integer id) {
        return topicService.getTopicById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public Topic createTopic(@RequestBody Topic topic) {
        return topicService.saveTopic(topic);
    }

    @PatchMapping("/{id}")
    public ResponseEntity<Topic> updateTopic(@PathVariable Integer id, @RequestBody Topic topic) {
        return topicService.getTopicById(id)
                .map(existingTopic -> {
                    topic.setIdtopic(id);
                    return ResponseEntity.ok(topicService.saveTopic(topic));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTopic(@PathVariable Integer id) {
        return topicService.getTopicById(id)
                .map(topic -> {
                    topicService.deleteTopic(id);
                    return ResponseEntity.ok().<Void>build();
                })
                .orElse(ResponseEntity.notFound().build());
    }
} 