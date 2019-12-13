package com.conceptcars.kz.repos;


import com.conceptcars.kz.domain.Cars;
import com.conceptcars.kz.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface CarsRepo extends CrudRepository<Cars, Long> {

    List<Cars> findByCmodel(String cmodel);

}