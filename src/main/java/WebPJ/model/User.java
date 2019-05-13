package WebPJ.model;

import lombok.Data;

@Data
public class User {
    private int id;
    private String email;
    private String pw;
    private int category;
    private String nickname;
}
