package com.appuniversitaria.demo.mapper;

import com.appuniversitaria.demo.dto.IngresanteFaqDTO;
import com.appuniversitaria.demo.model.IngresanteFaq;
import org.springframework.stereotype.Component;

@Component
public class IngresanteFaqMapper {

    public IngresanteFaqDTO toDTO(IngresanteFaq entity) {
        if (entity == null) {
            return null;
        }

        IngresanteFaqDTO dto = new IngresanteFaqDTO();
        dto.setIdfaq(entity.getIdfaq());
        dto.setQuestion(entity.getQuestion());
        dto.setAnswer(entity.getAnswer());
        dto.setCategory(entity.getCategory());
        dto.setDisplayOrder(entity.getDisplayOrder());
        dto.setSourceUrl(entity.getSourceUrl());
        return dto;
    }
}
