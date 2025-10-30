package in.sp.backend;


import com.example.dao.UserDAO;


import com.example.dao.UserDAOImpl;
import com.example.dto.UserDTO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.dao.RatingDAO;
import com.example.dao.RatingDAOImpl;
import com.example.dto.RatingDTO;


@Controller
public class MyCon {
    
    private UserDAO userDAO = new UserDAOImpl();
    private RatingDAO ratingDAO = new RatingDAOImpl();

    @GetMapping("/home")
    public String showHomePage() {
        return "home"; // JSP name
    }
    
    @GetMapping("/profile")
    public String showProfile() {
        return "profile"; // JSP name
    }
    
    @GetMapping("/upcomingMovies")
    public String showUpcomingMovies() {
        return "upcomingMovies"; // JSP name
    }

    @GetMapping("/spotlightMovies")
    public String showSpotLightMovies() {
        return "spotlightMovies"; // JSP name
    }
    

    @GetMapping("/Avengers : Endgame")
    public String showAvengersEndgame() {
        return "movie-details"; // JSP name
    }
    
    @GetMapping("/Inception")
    public String showInception() {
        return "movie-details"; // JSP name
    }
    
    @GetMapping("/KGF Chapter 2")
    public String showKGFChapter2() {
        return "movie-details"; // JSP name
    }
    
    
    @GetMapping("/Interstellar")
    public String showInterstellar() {
        return "movie-details"; // JSP name
    }
    
    
    
    
    
    @GetMapping("/register")
    public String showRegisterForm() {
        return "register"; // JSP name
    }
    
    

    @PostMapping("/register")
    public String register(@RequestParam("name") String name,
                           @RequestParam("email") String email,
                           @RequestParam("password") String password,
                           Model model) {
        UserDTO user = new UserDTO();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);

        boolean success = userDAO.registerUser(user);

        if (success) {
            model.addAttribute("msg", "Registration successful! Please login.");
            return "login";
        } else {
            model.addAttribute("msg", "Registration failed! Try again.");
            return "register";
        }
    }

   


   
    
    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        Model model) {
        UserDTO user = userDAO.loginUser(email, password);

        if (user != null) {
            model.addAttribute("name", user.getName());

           
            RatingDTO rating = ratingDAO.getRatingByUser(user.getName());
            if (rating != null) {
                model.addAttribute("userRating", rating.getRating());
            }


            return "home";
        } else {
            model.addAttribute("msg", "Invalid email or password! If not registered, kindly register.");
            return "login";
        }
    }

    

   


    


    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

   
    
}
