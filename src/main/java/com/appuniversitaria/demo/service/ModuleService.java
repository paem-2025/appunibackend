package com.appuniversitaria.demo.service;

import com.appuniversitaria.demo.model.Module;
import com.appuniversitaria.demo.repository.ModuleRepository;
import com.appuniversitaria.demo.dto.ModuleDTO;
import com.appuniversitaria.demo.mapper.ModuleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ModuleService {
    
    @Autowired
    private ModuleRepository moduleRepository;
    
    @Autowired
    private ModuleMapper moduleMapper;

    public List<Module> getAllModules() {
        return moduleRepository.findAll();
    }

    public Optional<Module> getModuleById(Long id) {
        return moduleRepository.findById(id);
    }

    public Module saveModule(Module module) {    
        Module savedModule = moduleRepository.save(module);
        
        return savedModule;
    }

    public void deleteModule(Long id) {
        moduleRepository.deleteById(id);
    }

    public List<ModuleDTO> getAllModulesWithTopics() {
        List<ModuleDTO> result = moduleRepository.findAllWithTopics();
        
        for (ModuleDTO dto : result) {
            System.out.println("Módulo: " + dto.getTitle() + " - TopicId: " + dto.getTopicId() + " - TopicName: " + dto.getTopicName());
        }
        
        return result;
    }

    public List<ModuleDTO> getAllModulesByTopic(Integer topicId) {
        return moduleRepository.findAllByTopicId(topicId);
    }
    
    public List<ModuleDTO> getModulesByTopicName(String topicName) {
        
        List<ModuleDTO> result = moduleRepository.findAllByTopicName(topicName);
        
        for (ModuleDTO dto : result) {
            System.out.println("Módulo: " + dto.getTitle() + " - TopicName: " + dto.getTopicName());
        }
        
        return result;
    }
} 