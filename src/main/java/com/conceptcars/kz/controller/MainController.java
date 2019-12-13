package com.conceptcars.kz.controller;

import com.conceptcars.kz.domain.Cars;
import com.conceptcars.kz.domain.User;
import com.conceptcars.kz.repos.CarsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class MainController {
    @Autowired
    private CarsRepo carsRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "home";
    }

    @GetMapping("/hello")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<Cars> carss = carsRepo.findAll();

        if (filter != null && !filter.isEmpty()) {
            carss = carsRepo.findByCmodel(filter);
        } else {
            carss = carsRepo.findAll();
        }

        model.addAttribute("carss", carss);
        model.addAttribute("filter", filter);

        return "hello";
    }


    @GetMapping("/login")
    public String login() {
        return "login";
    }

    /*@PostMapping("/hello/delete/{id}")
    public String delete(@AuthenticationPrincipal User user, @PathVariable Long id) {
        List<Cars> cars = carsRepo.selectAll(id);
        Cars cars2 = carsRepo.selectById(id);

        if (cars.contains(cars2)) {
            carsRepo.delete(cars2);
            carsRepo.deleteCars(id);
        }

        return "redirect:/hello";
    }*/


    @GetMapping("/home")
    public String greeting() {
        return "home";
    }

    @PostMapping("/hello")
    public String add(
            @AuthenticationPrincipal User user,
            @Valid Cars cars,
            BindingResult bindingResult,
            Model model,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        cars.setAuthor(user);

        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errorsMap);
            model.addAttribute("cars", cars);
        } else {
            if (file != null && !file.getOriginalFilename().isEmpty()) {
                File uploadDir = new File(uploadPath);

                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }

                String uuidFile = UUID.randomUUID().toString();
                String resultFilename = uuidFile + "." + file.getOriginalFilename();

                file.transferTo(new File(uploadPath + "/" + resultFilename));

                cars.setFilename(resultFilename);
            }

            model.addAttribute("cars", null);

            carsRepo.save(cars);
        }

        Iterable<Cars> carss = carsRepo.findAll();

        model.addAttribute("carss", carss);

        return "hello";
    }
}