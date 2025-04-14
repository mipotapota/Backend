noise_dbnoise_db
-- 유저정보 저장 DB
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(50) NOT NULL,
    role ENUM('professor', 'student') NOT NULL
) DEFAULT CHARSET=UTF8MB4;

--보안코드 저장 DB
CREATE TABLE auth_codes (
    code_id INT AUTO_INCREMENT PRIMARY KEY,
    code_value VARCHAR(100) NOT NULL,
    description VARCHAR(100) DEFAULT '교수 인증 코드'
);

INSERT INTO auth_codes (code_value) VALUES ('****'); -- 보안코드 "****" 추가

GRANT ALL PRIVILEGES ON noise_db.* TO 'jbha'@'localhost'; -- 현재 계정에 권한 부여
usersFLUSH PRIVILEGES;
