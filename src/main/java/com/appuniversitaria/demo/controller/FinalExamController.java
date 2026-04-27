package com.appuniversitaria.demo.controller;

import com.appuniversitaria.demo.dto.FinalExamDTO;
import com.appuniversitaria.demo.mapper.FinalExamMapper;
import com.appuniversitaria.demo.service.FinalExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/final-exams")
public class FinalExamController {

    @Autowired
    private FinalExamService finalExamService;

    @Autowired
    private FinalExamMapper finalExamMapper;

    @GetMapping
    public List<FinalExamDTO> getCurrentYearExams() {
        return finalExamService.getCurrentYearExams()
                .stream()
                .map(finalExamMapper::toDTO)
                .toList();
    }

    @GetMapping("/year/{year}")
    public List<FinalExamDTO> getExamsByYear(@PathVariable Integer year) {
        return finalExamService.getExamsByYear(year)
                .stream()
                .map(finalExamMapper::toDTO)
                .toList();
    }

    @GetMapping("/years")
    public List<Integer> getAvailableYears() {
        return finalExamService.getAvailableYears();
    }
}
