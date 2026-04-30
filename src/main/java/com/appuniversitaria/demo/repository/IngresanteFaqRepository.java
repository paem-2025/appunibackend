package com.appuniversitaria.demo.repository;

import com.appuniversitaria.demo.model.IngresanteFaq;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IngresanteFaqRepository extends JpaRepository<IngresanteFaq, Long> {
    List<IngresanteFaq> findAllByOrderByDisplayOrderAscIdfaqAsc();
}
