CREATE TABLE member (
account VARCHAR(100) NOT NULL COMMENT '계정',
pwd VARCHAR(300) NOT NULL COMMENT '비밀번호',
account_type VARCHAR(100) NOT NULL DEFAULT 'customer' COMMENT '계정분류',
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


--
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test01', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test02', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test03', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test04', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test05', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test06', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test07', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test08', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test09', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test10', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test11', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test12', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test13', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test14', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test15', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test16', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test17', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test18', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test19', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test20', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test21', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test22', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test23', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test24', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test25', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test26', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test27', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test28', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test29', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test30', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test31', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test32', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test33', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test34', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test35', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test36', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test37', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test38', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
INSERT INTO member (account, pwd, member_name, email, registration_date) VALUES ('test39', '1q2w3e4r', 'TESTER, Test', 'test@test.com', NOW());
--




