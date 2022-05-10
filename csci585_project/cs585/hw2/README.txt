Q1 (2 points). Write SQL commands to create the above tables (create your own column names), and populate them with data (as many/few rows as you see fit, eg. 25 employees, 15 meetings... you can start small, and add more rows later, to help write queries for Q2..Q5).
It create the table that able to test all the query and has resonable dates and time.

Q2 (1 point). Write a query to output the most-self-reported symptom.
It count the frequency for each symptom and report the largest one.  

Q3 (1 point). Write a query to output the 'sickest' floor.
It used a nested query that count the floor number in each employee that was tested positive in the TEST table. 

Q4 (1 point). The management would like stats, for a given period (between start, end dates), on the following: number of scans, number of tests, number of employees who self-reported symptoms, number of positive cases. Write queries to output these.
It solve the problem that count the number in a given DATE range.

Q5 (1 point). Create your own query! What else would you like to learn, from the data? Describe/list the question, and come up with the query to answer it. You'll get 1 extra point if your query involves table division [be sure to indicate this in your README].

In this problem. I tried to find which meeting was attended by the entire company. Which means that the meeting has occur at MEETING table that has each employee as a row.
This question will be perfect for a table division. I can use the MEETING table divide the employee table. The result indicate the meeting has every employee envolved. In my
case. The meeting 7 meet the requirements. It also can modifi into other version. For example, the meeting attend by sepcific employee or couple employees group. 