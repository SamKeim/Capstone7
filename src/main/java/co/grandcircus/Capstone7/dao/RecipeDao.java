
package co.grandcircus.Capstone7.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.Capstone7.entities.Recipe;

public interface RecipeDao extends JpaRepository<Recipe, Long>{

	List<Recipe> findByCriteria(String label, String dietLabels, String healthLabels, Integer from, Integer to);

}
//package co.grandcircus.Capstone7.dao;
//
//import java.util.List;
//
//import javax.persistence.Entity;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//
//import co.grandcircus.Capstone7.entities.Recipe;
//
//@Entity
//public interface RecipeDao extends JpaRepository<Recipe, Long>{
//
//	List<Recipe> findByCriteria(String label, String dietLabels, String healthLabels, Integer from, Integer to);
//
//}
