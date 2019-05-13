package WebPJ.dao;

import WebPJ.dto.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


@Repository
public class UserRepository {

    private SqlSessionTemplate session;

    @Autowired
    public UserRepository(SqlSessionTemplate session){
        this.session = session;
    }

    public UserDto getUserByEmail(String email) {
        UserDto user = session.selectOne("database.userEmail", email);
        return user;
    }
}
