package com.appuniversitaria.demo.service;

import com.appuniversitaria.demo.model.Correlativity;
import com.appuniversitaria.demo.repository.CorrelativityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CorrelativityService {

    @Autowired
    private CorrelativityRepository correlativityRepository;

    public List<Correlativity> getAll() {
        return correlativityRepository.findAllByOrderByCareerNameAscSubjectYearAscSubjectCodeAsc();
    }

    public List<Correlativity> getByCareerKey(String careerKey) {
        return correlativityRepository.findByCareerKeyIgnoreCaseOrderBySubjectYearAscSubjectCodeAsc(careerKey);
    }

    public List<Correlativity> searchByCareerName(String careerName) {
        return correlativityRepository.findByCareerNameContainingIgnoreCaseOrderByCareerNameAscSubjectYearAscSubjectCodeAsc(careerName);
    }

    public List<String> getCareerNames() {
        return correlativityRepository.findDistinctCareerNames();
    }
}
