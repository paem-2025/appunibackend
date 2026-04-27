package com.appuniversitaria.demo.service;

import com.appuniversitaria.demo.model.FinalExam;
import com.appuniversitaria.demo.repository.FinalExamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class FinalExamService {

    @Autowired
    private FinalExamRepository finalExamRepository;

    public List<FinalExam> getCurrentYearExams() {
        int currentYear = LocalDate.now().getYear();
        List<FinalExam> currentYearExams =
                finalExamRepository.findByExamYearOrderByTurnOrderAscExamStartAsc(currentYear);
        if (!currentYearExams.isEmpty()) {
            return currentYearExams;
        }

        List<Integer> availableYears = finalExamRepository.findAvailableYears();
        if (availableYears.isEmpty()) {
            return currentYearExams;
        }

        Integer latestYear = availableYears.get(0);
        return finalExamRepository.findByExamYearOrderByTurnOrderAscExamStartAsc(latestYear);
    }

    public List<FinalExam> getExamsByYear(Integer year) {
        return finalExamRepository.findByExamYearOrderByTurnOrderAscExamStartAsc(year);
    }

    public List<Integer> getAvailableYears() {
        return finalExamRepository.findAvailableYears();
    }
}
