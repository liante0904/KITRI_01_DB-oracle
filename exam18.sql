/*급여가 높은 사원순으로 정렬하여 2페이지의 사원정보만 출력

하는 프로시저를 저장하시오. 단 한페이지별 보여줄 사원수는 10

명이다.출력할 정보는 사번, 급여, 부서명이다. 
인라인뷰, 시작행 계산..

실행예) EXECUTE emp_list(2, 10);
실행결과) 
사번  급여  부서명
-------------------------
*/


  v_r number;
  v_empno employees.employee_id%TYPE;
  v_salary employees.salary%TYPE;
  v_dname departments.department_name%TYPE;

  CURSOR c1 IS 
  SELECT * 
  FROM (SELECT ROWNUM r, a.*
        FROM (SELECT employee_id, salary, department_name
              FROM employees e JOIN departments d 
              ON e.department_id = d.department_id
              ORDER BY salary DESC) a
        ) 
  WHERE r 
      BETWEEN get_start_row(current_page, cnt_per_page) 
      AND get_start_row(current_page, cnt_per_page) + 
          cnt_per_page-1;    
  
BEGIN
  OPEN c1;
  LOOP
   FETCH c1 INTO  v_r, v_empno, v_salary, v_dname;
   EXIT WHEN c1%NOTFOUND;
   DBMS_OUTPUT.PUT_LINE(v_r||'-'||v_empno||'-'||v_salary||'-'||

v_dname);
  END LOOP;
  CLOSE c1; 
END;
/