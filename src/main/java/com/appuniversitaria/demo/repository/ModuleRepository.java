package com.appuniversitaria.demo.repository;

import com.appuniversitaria.demo.model.Module;
import com.appuniversitaria.demo.dto.ModuleDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ModuleRepository extends JpaRepository<Module, Long> {
    
    @Query("SELECT new com.appuniversitaria.demo.dto.ModuleDTO(" +
           "m.idmodule, m.title, m.content, m.createdAt, m.deletedAt, m.imagePath, t.idtopic, t.name) " +
           "FROM Module m LEFT JOIN m.topic t")
    List<ModuleDTO> findAllWithTopics();

    @Query("SELECT new com.appuniversitaria.demo.dto.ModuleDTO(" +
           "m.idmodule, m.title, m.content, m.createdAt, m.deletedAt, m.imagePath, t.idtopic, t.name) " +
           "FROM Module m LEFT JOIN m.topic t WHERE t.idtopic = :topicId")
    List<ModuleDTO> findAllByTopicId(Integer topicId);
    
    @Query("SELECT new com.appuniversitaria.demo.dto.ModuleDTO(" +
           "m.idmodule, m.title, m.content, m.createdAt, m.deletedAt, m.imagePath, t.idtopic, t.name) " +
           "FROM Module m LEFT JOIN m.topic t WHERE LOWER(t.name) = LOWER(:topicName)")
    List<ModuleDTO> findAllByTopicName(@Param("topicName") String topicName);
    
    @Query("SELECT new com.appuniversitaria.demo.dto.ModuleDTO(" +
           "m.idmodule, m.title, m.content, m.createdAt, m.deletedAt, m.imagePath, t.idtopic, t.name) " +
           "FROM Module m LEFT JOIN m.topic t WHERE LOWER(t.name) LIKE LOWER(CONCAT('%', :topicName, '%'))")
    List<ModuleDTO> findAllByTopicNameContaining(@Param("topicName") String topicName);
    
    @Query("SELECT m FROM Module m LEFT JOIN FETCH m.topic t")
    List<Module> findAllWithTopicFetch();
} 