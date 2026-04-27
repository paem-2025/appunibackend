package com.appuniversitaria.demo.mapper;

import com.appuniversitaria.demo.dto.FinalExamDTO;
import com.appuniversitaria.demo.model.FinalExam;
import org.springframework.stereotype.Component;

@Component
public class FinalExamMapper {

    public FinalExamDTO toDTO(FinalExam finalExam) {
        if (finalExam == null) return null;

        FinalExamDTO dto = new FinalExamDTO();
        dto.setIdfinalExam(finalExam.getIdfinalExam());
        dto.setExamYear(finalExam.getExamYear());
        dto.setTurnOrder(finalExam.getTurnOrder());
        dto.setTurnName(finalExam.getTurnName());
        dto.setPeriodLabel(finalExam.getPeriodLabel());
        dto.setEnrollmentStart(finalExam.getEnrollmentStart());
        dto.setExamStart(finalExam.getExamStart());
        dto.setExamEnd(finalExam.getExamEnd());
        dto.setNotes(finalExam.getNotes());
        dto.setSourceUrl(finalExam.getSourceUrl());
        return dto;
    }
}
