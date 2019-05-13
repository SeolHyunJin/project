package WebPJ.service;

import WebPJ.dao.UserRepository;
import WebPJ.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    UserRepository dao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserDto user = dao.getUserByEmail(username);

        if (null == user) {
            throw new UsernameNotFoundException("User Not Found");
        }

        return user;
    }
}
