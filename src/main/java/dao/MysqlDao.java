package dao;

import dto.UserDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MysqlDao {
    @Autowired
    @Qualifier("sqlSessionTemplate")
    SqlSessionTemplate session;

    public UserDto getUserByEmail(String email) {
        UserDto user = session.selectOne("user.userSelect", email);
        return user;
    }
}
