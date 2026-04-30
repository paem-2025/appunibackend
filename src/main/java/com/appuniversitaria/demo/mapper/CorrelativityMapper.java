package com.appuniversitaria.demo.mapper;

import com.appuniversitaria.demo.dto.CorrelativityDTO;
import com.appuniversitaria.demo.model.Correlativity;
import org.springframework.stereotype.Component;

@Component
public class CorrelativityMapper {

    public CorrelativityDTO toDTO(Correlativity entity) {
        if (entity == null) {
            return null;
        }

        CorrelativityDTO dto = new CorrelativityDTO();
        dto.setIdcorrelativity(entity.getIdcorrelativity());
        dto.setCareerKey(entity.getCareerKey());
        dto.setCareerName(entity.getCareerName());
        dto.setPlanName(entity.getPlanName());
        dto.setPlanYear(entity.getPlanYear());
        dto.setSubjectCode(entity.getSubjectCode());
        dto.setSubjectName(entity.getSubjectName());
        dto.setSubjectYear(entity.getSubjectYear());
        dto.setSubjectTerm(entity.getSubjectTerm());
        dto.setRequirementCodes(entity.getRequirementCodes());
        dto.setRequirementSubjects(entity.getRequirementSubjects());
        dto.setNotes(entity.getNotes());
        dto.setSourceUrl(entity.getSourceUrl());
        return dto;
    }
}
