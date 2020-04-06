CREATE TABLE member (
account VARCHAR(100) NOT NULL COMMENT '계정',
pwd VARCHAR(300) NOT NULL COMMENT '비밀번호',
account_type VARCHAR(100) NOT NULL DEFAULT 'user' COMMENT '계정분류',
member_name VARCHAR(100) NOT NULL COMMENT '이름',
email VARCHAR(300) NOT NULL COMMENT '이메일',
registration_date DATETIME NOT NULL COMMENT '가입일자',
unregistration_date DATETIME DEFAULT NULL COMMENT '탈퇴일자',
use_yn CHAR(1) NOT NULL DEFAULT 'Y' COMMENT '사용여부',
PRIMARY KEY (account)
)

INSERT INTO member
(account, pwd, account_type, member_name, email, registration_date)
VALUES
('admin', '1q2w3e4r', 'admin', 'ADMIN', 'admin@admin.com', NOW())

INSERT INTO member
(account, pwd, account_type, member_name, email, registration_date)
VALUES
('bestplaykj', '1q2w3e4r', 'admin', 'LEE, Kyungjoon', 'bestpalykj@crewmate.co.kr', NOW())

INSERT INTO member
(account, pwd, member_name, email, registration_date)
VALUES
('ejfrm0802', '1q2w3e4r', 'KIM, Seongyong', 'ejfrm0802@crewmate.co.kr', NOW())

