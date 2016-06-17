DROP TABLE point;

CREATE TABLE point( id varchar2(10), score number(10) DEFAULT 0,
CONSTRAINT point_pk PRIMARY KEY(id),
CONSTRAINT point_fk_id FOREIGN KEY(id) REFERENCES customer(id),
CONSTRAINT point_ck_score CHECK(score >= 0)
);