package com.example.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Component;
import org.springframework.web.client.HttpClientErrorException.NotFound;

import com.example.demo.repository.BaseRepository;

import jakarta.transaction.Transactional;

@Component
@Primary
public abstract class BaseService<T> {
    @Autowired
    public BaseRepository<T> repository;

    public Page<T> findAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @SuppressWarnings("null")
    public T findOne(Integer id) {
        return repository.findById(id).orElseThrow(
                () -> NotFound.create(HttpStatusCode.valueOf(404), "Entidade não encontrada!", null, null, null));
    }

    @Transactional
    public T save(T entity) {
        return repository.save(entity);
    }

    @Transactional
    public void delete(Integer id) {
        repository.deleteById(id);
    }
}