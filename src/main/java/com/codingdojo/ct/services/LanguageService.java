package com.codingdojo.ct.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.ct.models.Language;
import com.codingdojo.ct.repositories.LanguageReposity;

@Service
public class LanguageService {
	 private final LanguageReposity languageReposity;
	 public LanguageService(LanguageReposity languageReposity) {
	        this.languageReposity = languageReposity;
	    }
	  public List<Language> allLanguages() {
	        return languageReposity.findAll();
	    }
	  
	  public Language createLanguage(Language b) {
	        return languageReposity.save(b);
	    }
	  
	  public Language findLanguage(Long id) {
	        Optional<Language> optionalLanguage = languageReposity.findById(id);
	        if(optionalLanguage.isPresent()) {
	            return optionalLanguage.get();
	        } else {
	            return null;
	        }
	  }
	  
	  public Language save(Language b) {
	        return languageReposity.save(b);
	    }
	  
	  public void deleteLanguage(long id) {
		  languageReposity.deleteById(id);
	  }
}
