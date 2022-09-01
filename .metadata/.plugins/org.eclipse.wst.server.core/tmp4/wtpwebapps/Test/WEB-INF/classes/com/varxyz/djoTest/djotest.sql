CREATE TABLE User(
	uid 				BIGINT   		PRIMARY KEY AUTO_INCREMENT,
	userId				VARCHAR(15)		NOT NULL,
	passwd				VARCHAR(20)		NOT NULL,
	userName			VARCHAR(20)		NOT NULL
)AUTO_INCREMENT = 1001;

SELECT * FROM User;

insert into User (userId,passwd,userName)
values ('asd123','456','이길동');

commit;

insert into Login (userId,passwd)
values ('phg0675','1234');

commit;

DROP TABLE Login;