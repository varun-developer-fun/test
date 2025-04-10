package com.project.batch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.batch.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{

}
