package com.appuniversitaria.demo.repository;

import com.appuniversitaria.demo.model.AppAlert;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface AppAlertRepository extends JpaRepository<AppAlert, Long> {

    @Query("""
            SELECT a FROM AppAlert a
            WHERE a.alertDate <= :today
              AND (a.endDate IS NULL OR a.endDate >= :today)
            ORDER BY a.important DESC, a.alertDate ASC
            """)
    List<AppAlert> findActiveAlerts(@Param("today") LocalDate today);

    @Query("""
            SELECT a FROM AppAlert a
            WHERE a.alertDate > :today
              AND a.alertDate <= :until
            ORDER BY a.important DESC, a.alertDate ASC
            """)
    List<AppAlert> findUpcomingAlerts(@Param("today") LocalDate today, @Param("until") LocalDate until);
}
