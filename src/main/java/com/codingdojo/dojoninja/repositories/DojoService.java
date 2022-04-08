package com.codingdojo.dojoninja.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.dojoninja.models.Dojo;
import com.codingdojo.dojoninja.services.DojoRepository;

@Service
public class DojoService {
	// Adding the dojo repository as a dependency
	private final DojoRepository dojoRepository;
	
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}
	
	// Get All Dojos
	public List<Dojo> getAllDojos() {
		return dojoRepository.findAll();
	}
	
	// Create new dojo
	public Dojo createDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	// Retrieves a dojo
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepository.findById(id);;
		
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
}

