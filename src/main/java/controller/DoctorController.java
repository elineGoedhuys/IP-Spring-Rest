/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Doctor;
import domain.Patient;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import service.DatabaseFacade;

/**
 *
 * @author Eline
 */
@RestController
@EnableWebMvc
@RequestMapping(value="/doctors1")
public class DoctorController {
    
     @Autowired
    DatabaseFacade service;
    
    @RequestMapping(method= RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Doctor> getDoctors(){
        return service.getDoctors();
    }
    
    /**@RequestMapping(value="/new", method= RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Doctor getNewDoctor(){
        return service.getDoctors();
    }**/
    
     @RequestMapping(method= RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public void save(@RequestBody Doctor doctor){
        service.newDoctor(doctor);
        /*return "redirect:/doctors.htm";*/
    }
    
    @RequestMapping(value="/{doctorId}", method= RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Doctor getEditForm(@PathVariable int doctorId){
        return service.getDoctorOnId(doctorId);
    }
}
