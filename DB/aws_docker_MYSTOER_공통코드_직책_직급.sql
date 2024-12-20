-- MODIFY는  예약어 이므로 ""로 감싸야함
-- 직책 정보
INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'PS001', '서버관리자', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'PS002', '대표', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'PS003', '이사', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'PS004', '사원', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'PS005', '지점장', 1001, 1001, SYSDATE, SYSDATE
);

-- 직급 정보
INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'RK001', '서버관리자', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'RK002', '대표', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'RK003', '임원 (이사)', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'RK004', '사원', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'RK005', '과장', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'RK006', '대리', 1001, 1001, SYSDATE, SYSDATE
);

INSERT INTO TBL_COMMON_CODE (
CD, NM, CREATER, "MODIFY", CREATE_DATE, MODIFY_DATE
) VALUES (
'RK007', '주임', 1001, 1001, SYSDATE, SYSDATE
);

-- 상혀기 분류번호
INSERT INTO TBL_COMMON_CODE (CLASSIFICATION_NO, CLASSIFICATION_NAME) VALUES (1, '간편식');
INSERT INTO TBL_COMMON_CODE (CLASSIFICATION_NO, CLASSIFICATION_NAME) VALUES (2, '음료');
INSERT INTO TBL_COMMON_CODE (CLASSIFICATION_NO, CLASSIFICATION_NAME) VALUES (3, '주류');
INSERT INTO TBL_COMMON_CODE (CLASSIFICATION_NO, CLASSIFICATION_NAME) VALUES (4, '스낵');
INSERT INTO TBL_COMMON_CODE (CLASSIFICATION_NO, CLASSIFICATION_NAME) VALUES (5, '디저트');

COMMIT;