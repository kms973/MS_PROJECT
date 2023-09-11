-- 게시판 테이블
create table ms_board (
    bid number(6) primary key,      -- 게시물 식별자
    bname varchar2(20) not null,    -- 작성자 이름
    btitle varchar2(100) not null,  -- 게시물 제목
    bcontent varchar2(500),         -- 게시물 내용
    bdate date default sysdate,     -- 게시물 작성 일자
    bgroup number(4),
    bstep number(4),
    bindent number(4),
    selecter number(1) not null     -- 게시글구분 1:공지 2:qna 3:리뷰
);

desc ms_board;
select * from ms_board;
drop table ms_board;

-- 공지사항 게시판 테이블
create table ms_notice_board (
    nid number(6) primary key,      -- 게시물 식별자
    nname varchar2(20) not null,    -- 작성자 이름
    ntitle varchar2(100) not null,  -- 게시물 제목
    ncontent varchar2(500),         -- 게시물 내용
    ndate date default sysdate,     -- 게시물 작성 일자
    ngroup number(4),
    nstep number(4),
    nindent number(4)
);

desc ms_notice_board;
select * from ms_notice_board;
drop table ms_notice_board;

-- Q&A 게시판 테이블
create table ms_qna_board (
    qid number(6) primary key,        -- 게시물 식별자
    qname varchar2(20) not null,      -- 작성자 이름
    qtitle varchar2(100) not null,    -- 게시물 제목
    qcontent varchar2(500),           -- 게시물 내용
    qdate date default sysdate,       -- 게시물 작성 일자
    qgroup number(4),
    qstep number(4),
    qindent number(4)
);

desc ms_qna_board;
select * from ms_qna_board;
drop table ms_qna_board;

-- 리뷰 게시판 테이블
create table ms_review_board (
    rid number(6) primary key,        -- 게시물 식별자
    rname varchar2(20) not null,      -- 작성자 이름
    rtitle varchar2(100) not null,    -- 게시물 제목
    rcontent varchar2(500),           -- 게시물 내용
    rdate date default sysdate,       -- 게시물 작성 일자
    rgroup number(4),
    rstep number(4),
    rindent number(4)
);

desc ms_review_board;
select * from ms_review_board;
drop table ms_review_board;

-- 회원관리 테이블
CREATE TABLE ms_customer (
    cid VARCHAR2(20) PRIMARY KEY,       -- 회원 아이디
    cpw VARCHAR2(50) NOT NULL,          -- 회원 비밀번호
    cname VARCHAR2(50) NOT NULL,        -- 회원 이름
    cbirthdate DATE NOT NULL,           -- 회원 생년월일
    caddress VARCHAR2(100),             -- 회원 주소
    cgrade NUMBER(1)                    -- 회원 등급
);

desc ms_customer;
select * from ms_customer;
drop table ms_customer;

INSERT INTO ms_customer (cid, cpw, cname, cbirthdate, caddress, cgrade)
VALUES ('user123', 'password123', '홍길동', TO_DATE('1990-01-15', 'YYYY-MM-DD'), '서울시 강남구', 1);


-- 결제
create table ms_pay (
    order_number VARCHAR2(20) PRIMARY KEY,    -- 주문 번호
    quantity NUMBER,                          -- 상품 수량
    payment_method VARCHAR2(50),              -- 결제 수단
    shipping_address VARCHAR2(100),           -- 배송지 주소
    pid varchar2(20),
    product_number varchar2(20),
    foreign key (pid) references ms_customer (cid)
    --foreign key (product_number) references ms_product (product_number)
    );
    
drop table ms_pay;
Select * from ms_pay;
desc ms_pay;

-- 상품
create table ms_product (
    product_code number(5) not null,
    product_category varchar2(1) not null,
    --product_number VARCHAR2(20) PRIMARY KEY,   -- 상품 번호
    product_name VARCHAR2(100),                -- 상품명
    price NUMBER,                              -- 가격
    stock_quantity NUMBER,                     -- 재고 수량
    options VARCHAR2(200),                     -- 옵션
    product_img VARCHAR2(200)                  -- 이미지
    
    CONSTRAINT unique_constraint_name UNIQUE (column1, column2)
);

alter table ms_product drop constraint SYS_C007112;
ALTER TABLE ms_product add constraint uq_product_number unique(product_code, product_category);


insert into ms_product(product_code, product_category, product_name, price, stock_quantity, options, product_img) 
                values(929,'B' ,'팔찌9', 15500,10,'옵션','이미지주소');


drop table ms_product;
select * from ms_product;
delete from ms_product;
desc ms_product;

update ms_product set product_category = 'E' where product_category = 'c';
---------------------------------------------------------------
/*
-- 상품 삽입
DECLARE
    v_product_code NUMBER := 22; -- 상품 코드 입력
    v_product_category VARCHAR2(1) := 'A'; -- 상품 카테고리 입력
    v_product_number VARCHAR2(20); -- 상품 번호 생성을 위한 변수
    
BEGIN
    -- 상품 번호 생성
    v_product_number := v_product_category || LPAD(v_product_code, 3, '0'); -- product_number 생성
    
    -- 상품 테이블에 데이터 삽입
    INSERT INTO ms_product (product_code, product_category, product_number, product_name, price, stock_quantity, options, product_img)
    VALUES (v_product_code, v_product_category, v_product_number, '상품 1', 10000, 50, '옵션1, 옵션2', '상품1.jpg');
    
    -- 필요한 만큼 데이터 추가할 수 있습니다.
    -- 추가 작업을 여기에 추가할 수 있습니다.
    
END;
/
*/
-------------------------------------------------


-- 회사정보
CREATE TABLE ms_company (
    companyName VARCHAR2(100),              -- 회사명
    companyNum VARCHAR2(20) PRIMARY KEY,    -- 사업자등록번호 
    ceoName VARCHAR2(50),                   -- 대표자명
    comTel VARCHAR2(20),                    -- 전화번호
    comAddress1 VARCHAR2(100),              -- 회사주소1
    comAddress2 VARCHAR2(100),              -- 회사주소2
    comAddress3 VARCHAR2(100),              -- 회사주소3
    comAddress4 VARCHAR2(100),              -- 회사주소4
    comAddress5 VARCHAR2(100),              -- 회사주소5
    comCS VARCHAR2(20)                      -- 고객센터
);

INSERT INTO ms_company (companyName, companyNum, ceoName, comTel, comAddress1, comAddress2, comAddress3, comAddress4, comAddress5, comCS)
VALUES ('ABC Company', '123-45-67890', 'John Doe', '123-456-7890', '08760', '서울 관악구 신림로65길 16-5', '서울 관악구 신림동 1432-97','402호','(신림동, 블루라군)','123-456-7890');

desc ms_company;
select * from ms_company;
drop table ms_company;
delete from ms_company;


create table ms_users(
    username varchar2(50) not null primary key,
    password varchar2(100) not null,
    enabled char(1) DEFAULT '1',
    cname VARCHAR2(50) NOT NULL,        -- 회원 이름
    cbirthdate DATE,           -- 회원 생년월일
    caddress1 VARCHAR2(100),             -- 회원 주소
    caddress2 VARCHAR2(100),
    caddress3 VARCHAR2(100),
    caddress4 VARCHAR2(100),
    caddress5 VARCHAR2(100),
    cgrade NUMBER(1)                   -- 회원 등급
);
create table ms_authorities (
    username varchar2(50) not null,
    authority varchar2(50) not null,
    constraint fk_ms_authorities_ms_users foreign key(username) references ms_users(username)
);
create unique index ix_ms_auth_ms_username on ms_authorities (username,authority);
select * from ms_users;
select * from ms_authorities;
drop table ms_users;
drop table ms_authorities;
commit;
delete from ms_users where username = 'admin';
delete from ms_authorities where username = 'admin';
select * from ms_customer;
insert into ms_AUTHORITIES (username,AUTHORITY) values('admin','ROLE_ADMIN');
insert into ms_AUTHORITIES (username,AUTHORITY) values('admin','ROLE_MANAGER');

desc ms_authorities;

select * from users;