package com.appuniversitaria.demo.service;

import com.appuniversitaria.demo.model.IngresanteFaq;
import com.appuniversitaria.demo.repository.IngresanteFaqRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IngresanteFaqService {

    @Autowired
    private IngresanteFaqRepository ingresanteFaqRepository;

    public List<IngresanteFaq> getAll() {
        return ingresanteFaqRepository.findAllByOrderByDisplayOrderAscIdfaqAsc();
    }
}
