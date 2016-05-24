/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Address;
import domain.Doctor;
import domain.Patient;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
@RequestMapping(value="/patients1")
public class PatientController {
    
    @Autowired
     DatabaseFacade service;
    
    @RequestMapping(method= RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Patient> getPatients(){
        return service.getPatients();
    }
    
    @RequestMapping(value="/new",method= RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public void save(@RequestBody Patient patient){
        if (patient.getId() > 0) {
            service.updatePatient(patient);
        } else {
            service.newPatient(patient);
        }
      
    }
    
    @RequestMapping(value="/update/{patientId}", method= RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public void update(@PathVariable("patientId") long patientId){
        Patient patient = service.getPatientOnId(patientId);
        service.updatePatient(patient);
    }
    
      @RequestMapping(value = "/delete/{patientId}", method = RequestMethod.GET)
    public void delete(@PathVariable("patientId") long patientId) {
        service.deletePatient(patientId);
    }

}
