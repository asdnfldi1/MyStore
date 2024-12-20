INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D001', NULL, '본사', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D002', 'D001', '인사부', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D003', 'D001', '재정관리부', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D004', 'D001', '영업부', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D005', 'D001', 'IT부', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D006', 'D001', '지점', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D007', 'D002', '경영지원실', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D008', 'D002', 'HR실', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D009', 'D003', '회계팀', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D010', 'D003', '재무팀', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D011', 'D004', '영업지원1팀', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D012', 'D004', '영업지원2팀', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D013', 'D004', '온라인 마케팅팀', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D014', 'D005', '개발팀', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D015', 'D005', '정보보안팀', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D016', 'D006', '서울지점', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D017', 'D006', '경기지점', 1002, SYSDATE, NULL, NULL, 'Y');

INSERT INTO TBL_DEPARTMENT (DEPT_CODE, DEPT_UPSTAIR, DEPT_NAME, EMP_NO, CREATE_DATE, MODIFIER, MODIFY_DATE, USE_YN)
VALUES ('D018', 'D006', '인천지점', 1002, SYSDATE, NULL, NULL, 'Y');

COMMIT;