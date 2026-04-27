package com.appuniversitaria.demo.mapper;

import com.appuniversitaria.demo.dto.ModuleDTO;
import com.appuniversitaria.demo.model.Module;
import org.springframework.stereotype.Component;

@Component
public class ModuleMapper {
    
    public ModuleDTO toDTO(Module module) {
        if (module == null) return null;
        
        ModuleDTO dto = new ModuleDTO();
        dto.setIdmodule(module.getIdmodule());
        dto.setTitle(module.getTitle());
        dto.setContent(module.getContent());
        dto.setCreatedAt(module.getCreatedAt());
        dto.setDeletedAt(module.getDeletedAt());
        dto.setImagePath(module.getImagePath());
        dto.setTopicId(module.getTopic() != null ? module.getTopic().getIdtopic() : null);
        dto.setTopicName(module.getTopic() != null ? module.getTopic().getName() : null);
        
        return dto;
    }
    
    public Module toEntity(ModuleDTO dto) {
        if (dto == null) return null;
        
        Module module = new Module();
        module.setIdmodule(dto.getIdmodule());
        module.setTitle(dto.getTitle());
        module.setContent(dto.getContent());
        module.setCreatedAt(dto.getCreatedAt());
        module.setDeletedAt(dto.getDeletedAt());
        module.setImagePath(dto.getImagePath());
        
        return module;
    }
} 