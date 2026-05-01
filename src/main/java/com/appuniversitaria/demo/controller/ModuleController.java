package com.appuniversitaria.demo.controller;

import com.appuniversitaria.demo.model.Module;
import com.appuniversitaria.demo.dto.ModuleDTO;
import com.appuniversitaria.demo.service.ModuleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/modules")
public class ModuleController {

    @Autowired
    private ModuleService moduleService;

    @GetMapping
    public List<Module> getAllModules() {
        return moduleService.getAllModules();
    }

    @GetMapping("/with-topics")
    public List<ModuleDTO> getAllModulesWithTopics() {
        return moduleService.getAllModulesWithTopics();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Module> getModuleById(@PathVariable Long id) {
        return moduleService.getModuleById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public Module createModule(@RequestBody Module module) {
        return moduleService.saveModule(module);
    }

    @PatchMapping("/{id}")
    public ResponseEntity<Module> updateModule(@PathVariable Long id, @RequestBody Module module) {
        return moduleService.getModuleById(id)
                .map(existingModule -> {
                    if (module.getTitle() != null) existingModule.setTitle(module.getTitle());
                    if (module.getContent() != null) existingModule.setContent(module.getContent());
                    if (module.getCreatedAt() != null) existingModule.setCreatedAt(module.getCreatedAt());
                    if (module.getDeletedAt() != null) existingModule.setDeletedAt(module.getDeletedAt());
                    if (module.getImagePath() != null) existingModule.setImagePath(module.getImagePath());
                    return ResponseEntity.ok(moduleService.saveModule(existingModule));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteModule(@PathVariable Long id) {
        return moduleService.getModuleById(id)
                .map(module -> {
                    moduleService.deleteModule(id);
                    return ResponseEntity.ok().<Void>build();
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/topic/{topicId}")
    public ResponseEntity<List<ModuleDTO>> getAllModulesByTopic(@PathVariable Integer topicId) {
        List<ModuleDTO> modules = moduleService.getAllModulesByTopic(topicId);
        return ResponseEntity.ok(modules);
    }
    
    @GetMapping("/topic-name/{topicName}")
    public ResponseEntity<List<ModuleDTO>> getModulesByTopicName(@PathVariable String topicName) {     
        return ResponseEntity.ok(moduleService.getModulesByTopicName(topicName));
    }
} 
