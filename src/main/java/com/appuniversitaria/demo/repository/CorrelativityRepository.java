package com.appuniversitaria.demo.repository;

import com.appuniversitaria.demo.model.Correlativity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CorrelativityRepository extends JpaRepository<Correlativity, Long> {
    List<Correlativity> findAllByOrderByCareerNameAscSubjectYearAscSubjectCodeAsc();

    List<Correlativity> findByCareerKeyIgnoreCaseOrderBySubjectYearAscSubjectCodeAsc(String careerKey);

    List<Correlativity> findByCareerNameContainingIgnoreCaseOrderByCareerNameAscSubjectYearAscSubjectCodeAsc(String careerName);

    @Query("SELECT DISTINCT c.careerName FROM Correlativity c ORDER BY c.careerName ASC")
    List<String> findDistinctCareerNames();
}
