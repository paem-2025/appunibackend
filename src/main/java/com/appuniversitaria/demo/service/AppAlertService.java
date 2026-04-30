package com.appuniversitaria.demo.service;

import com.appuniversitaria.demo.model.AppAlert;
import com.appuniversitaria.demo.repository.AppAlertRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class AppAlertService {

    @Autowired
    private AppAlertRepository appAlertRepository;

    public List<AppAlert> getActiveAlerts() {
        return appAlertRepository.findActiveAlerts(LocalDate.now());
    }

    public List<AppAlert> getUpcomingAlerts(int days) {
        LocalDate today = LocalDate.now();
        LocalDate until = today.plusDays(Math.max(days, 1));
        return appAlertRepository.findUpcomingAlerts(today, until);
    }
}
