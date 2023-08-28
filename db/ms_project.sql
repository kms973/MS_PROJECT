-- 게시판 테이블
create table ms_board (
    bid number(6) primary key,      -- 게시물 식별자
    bname varchar2(20) not null,    -- 작성자 이름
    btitle varchar2(100) not null,  -- 게시물 제목
    bcontent varchar2(500),         -- 게시물 내용
    bdate date default sysdate,     -- 게시물 작성 일자
    bgroup number(4),
    bstep number(4),
    bindent number(4)
);

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
    foreign key (pid) references ms_customer (cid),
    foreign key (product_number) references ms_product (product_number)
    );

-- 상품
create table ms_product (
    product_number VARCHAR2(20) PRIMARY KEY,   -- 상품 번호
    product_name VARCHAR2(100),                -- 상품명
    price NUMBER,                              -- 가격
    stock_quantity NUMBER,                     -- 재고 수량
    options VARCHAR2(200),                     -- 옵션
    product_img VARCHAR2(200)                  -- 이미지
);

-- 회사정보
CREATE TABLE ms_company (
    companyName VARCHAR2(100),              -- 회사명
    companyNum VARCHAR2(20) PRIMARY KEY,    -- 사업자등록번호 
    ceoName VARCHAR2(50),                   -- 대표자명
    comTel VARCHAR2(20),                    -- 전화번호
    comAddress VARCHAR2(100),               -- 회사주소
    comCS VARCHAR2(20)                      -- 고객센터
);

INSERT INTO ms_company (companyName, companyNum, ceoName, comTel, comAddress, comCS)
VALUES ('ABC Company', '123-45-67890', 'John Doe', '123-456-7890', '123 Main St', '123-456-7890');

desc ms_company;
select * from ms_company;
