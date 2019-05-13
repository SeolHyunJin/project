package WebPJ.Controller;

import WebPJ.dao.UserRepository;
import WebPJ.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberController {
    private UserRepository userRepository;

    @Autowired
    public MemberController(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    /*@RequestMapping(value = "/MemberController", method = RequestMethod.GET)
    public User restAPITest(@RequestParam("email") String email){
        return userRepository.getUserByEmail(email);
    }*/
}
