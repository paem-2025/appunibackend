package com.appuniversitaria.demo.mapper;

import com.appuniversitaria.demo.dto.AppAlertDTO;
import com.appuniversitaria.demo.model.AppAlert;
import org.springframework.stereotype.Component;

@Component
public class AppAlertMapper {

    public AppAlertDTO toDTO(AppAlert entity) {
        if (entity == null) {
            return null;
        }

        AppAlertDTO dto = new AppAlertDTO();
        dto.setIdappAlert(entity.getIdappAlert());
        dto.setTitle(entity.getTitle());
        dto.setMessage(entity.getMessage());
        dto.setAlertDate(entity.getAlertDate());
        dto.setEndDate(entity.getEndDate());
        dto.setCategory(entity.getCategory());
        dto.setAudience(entity.getAudience());
        dto.setImportant(entity.getImportant());
        dto.setSourceUrl(entity.getSourceUrl());
        return dto;
    }
}
