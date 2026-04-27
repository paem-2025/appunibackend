package com.appuniversitaria.demo.repository;

import com.appuniversitaria.demo.model.FinalExam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FinalExamRepository extends JpaRepository<FinalExam, Long> {
    List<FinalExam> findByExamYearOrderByTurnOrderAscExamStartAsc(Integer examYear);

    @Query("SELECT DISTINCT f.examYear FROM FinalExam f ORDER BY f.examYear DESC")
    List<Integer> findAvailableYears();
}
