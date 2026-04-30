package com.appuniversitaria.demo.controller;

import com.appuniversitaria.demo.dto.IngresanteFaqDTO;
import com.appuniversitaria.demo.mapper.IngresanteFaqMapper;
import com.appuniversitaria.demo.service.IngresanteFaqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/ingresante-faq")
public class IngresanteFaqController {

    @Autowired
    private IngresanteFaqService ingresanteFaqService;

    @Autowired
    private IngresanteFaqMapper ingresanteFaqMapper;

    @GetMapping
    public List<IngresanteFaqDTO> getAll() {
        return ingresanteFaqService.getAll().stream().map(ingresanteFaqMapper::toDTO).toList();
    }
}
