package com.codingdojo.dojoninja.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.dojoninja.models.Dojo;
import com.codingdojo.dojoninja.models.Ninja;
import com.codingdojo.dojoninja.services.NinjaRepository;

@Service
public class NinjaService {
	// Adding the ninja repository as a dependency
	private final NinjaRepository ninjaRepository;
	
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
	// Get All ninjas
	public List<Ninja> getAllNinjas() {
		return ninjaRepository.findAll();
	}
	
	// Create new ninja
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
	
	// Retrieves a ninja
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepository.findById(id);
		
		if(optionalNinja.isPresent()) {
			return optionalNinja.get();
		} else {
			return null;
		}
	}
	
	// Dojo details
	public List<Ninja> byDojo(Dojo dojo) {
    	return ninjaRepository.findAllByDojo(dojo);
    }
}
