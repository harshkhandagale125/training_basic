SELECT * FROM e_learning.course_info;

SELECT COUNT(add_to_cart.user_id) AS user_count
FROM add_to_cart
WHERE add_to_cart.course_id = '01H4N8KPTS7H97CRZY634TRSM7';

-- show all the users/ courses
SELECT add_to_cart.course_id, COUNT(DISTINCT add_to_cart.user_id) AS user_count
FROM add_to_cart
GROUP BY add_to_cart.course_id;



SELECT course_info.course_title
FROM 
course_info JOIN add_to_cart
ON course_info.course_id = add_to_cart.course_id
JOIN 
sign_up
ON add_to_cart.user_id = sign_up.user_id	
WHERE sign_up.first_name = 'Rodney';


-- on a all days how many uers joint
select count(add_to_cart.date) as people_enrolled, add_to_cart.date from add_to_cart group by date;

-- on particular day
select sign_up.user_id, sign_up.first_name, sign_up.last_name from sign_up where sign_up.date='10/29/2022';

-- particular course how many people purchase
select add_to_cart.course_id,  payment.amount,  sign_up.first_name from 
payment  join add_to_cart on add_to_cart.user_id=payment.user_id
JOIN
sign_up on sign_up.user_id = add_to_cart.user_id;



select add_to_cart.course_id, course_info.course_title, payment.amount,  sign_up.first_name from add_to_cart
join payment join sign_up on  user_id;

