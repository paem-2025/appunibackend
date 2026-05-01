package com.appuniversitaria.demo.service;

import com.appuniversitaria.demo.dto.ModuleDTO;
import com.appuniversitaria.demo.model.Module;
import com.appuniversitaria.demo.repository.ModuleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ModuleService {

    @Autowired
    private ModuleRepository moduleRepository;

    public List<Module> getAllModules() {
        return moduleRepository.findAll();
    }

    public Optional<Module> getModuleById(Long id) {
        return moduleRepository.findById(id);
    }

    public Module saveModule(Module module) {
        return moduleRepository.save(module);
    }

    public void deleteModule(Long id) {
        moduleRepository.deleteById(id);
    }

    public List<ModuleDTO> getAllModulesWithTopics() {
        return moduleRepository.findAllWithTopics();
    }

    public List<ModuleDTO> getAllModulesByTopic(Integer topicId) {
        return moduleRepository.findAllByTopicId(topicId);
    }

    public List<ModuleDTO> getModulesByTopicName(String topicName) {
        return moduleRepository.findAllByTopicName(topicName);
    }
}
