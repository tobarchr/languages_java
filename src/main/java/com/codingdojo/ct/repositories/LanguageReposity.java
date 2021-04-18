package com.codingdojo.ct.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.ct.models.Language;

public interface LanguageReposity extends CrudRepository<Language, Long> {
    // this method retrieves all the languages from the database
    List<Language> findAll();
    // this method finds languages with creators containing the search string
    List<Language> findByCreatorContaining(String search);
    // this method counts how many titles contain a certain string
    Long countByNameContaining(String search);
    // this method deletes a book that starts with a specific title
    Long deleteByNameStartingWith(String search);
}
