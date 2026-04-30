package com.appuniversitaria.demo.controller;

import com.appuniversitaria.demo.dto.AppAlertDTO;
import com.appuniversitaria.demo.mapper.AppAlertMapper;
import com.appuniversitaria.demo.service.AppAlertService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/alerts")
public class AppAlertController {

    @Autowired
    private AppAlertService appAlertService;

    @Autowired
    private AppAlertMapper appAlertMapper;

    @GetMapping("/active")
    public List<AppAlertDTO> getActiveAlerts() {
        return appAlertService.getActiveAlerts().stream().map(appAlertMapper::toDTO).toList();
    }

    @GetMapping("/upcoming")
    public List<AppAlertDTO> getUpcomingAlerts(@RequestParam(defaultValue = "30") int days) {
        return appAlertService.getUpcomingAlerts(days).stream().map(appAlertMapper::toDTO).toList();
    }
}
