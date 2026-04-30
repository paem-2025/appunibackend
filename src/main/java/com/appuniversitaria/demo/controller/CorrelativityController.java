package com.appuniversitaria.demo.controller;

import com.appuniversitaria.demo.dto.CorrelativityDTO;
import com.appuniversitaria.demo.mapper.CorrelativityMapper;
import com.appuniversitaria.demo.service.CorrelativityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/correlativities")
public class CorrelativityController {

    @Autowired
    private CorrelativityService correlativityService;

    @Autowired
    private CorrelativityMapper correlativityMapper;

    @GetMapping
    public List<CorrelativityDTO> getAll() {
        return correlativityService.getAll().stream().map(correlativityMapper::toDTO).toList();
    }

    @GetMapping("/career/{careerKey}")
    public List<CorrelativityDTO> getByCareerKey(@PathVariable String careerKey) {
        return correlativityService.getByCareerKey(careerKey).stream().map(correlativityMapper::toDTO).toList();
    }

    @GetMapping("/search")
    public List<CorrelativityDTO> searchByCareerName(@RequestParam("career") String careerName) {
        return correlativityService.searchByCareerName(careerName).stream().map(correlativityMapper::toDTO).toList();
    }

    @GetMapping("/careers")
    public List<String> getCareerNames() {
        return correlativityService.getCareerNames();
    }
}
