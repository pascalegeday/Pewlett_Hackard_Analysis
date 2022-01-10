# Employee Analysis of Company: Pewlett Hackard
The company, Pewlett Hackard, has requested that we run an analysis on the number of retiring employees in the company. By deducing the number of retirees per title, we are able to identify employees who are eligible to participate in a mentorship program. Also, by providing a list of employees who will most likely retire in the near future, Pewlett Hackard can take measures to prepare for the "silver tsunami."

# Resources
* Data source: CSV files provided by Pewlett Hackard
* Software: PostgreSQL, pgAdmin

# Results
Through our analysis we created four tables to assist in determining the number of retirees and those eligible for the mentorship program.
1. Query no.1:retirement_titles.csv, shows a list of employees that were born between 1952 and 1955. Listing their employee number, full name, and the date from which each employee held certain positions. 
   * This table shows a total of 133,776 rows of employees that fall within this age group. However, many employees held more than one position, so the exact number of employees is not relevant in this table. Employees holding more than one position shows that employees last a substantial amount of time in this company, resulting in high retention rate. However, we can begin to see that this large number may prove to be alarming for a company as it can lower employee numbers by a great deal. 
2. Query no.2:unique_titles.csv, shows the same information as the previous table, however, shows only the employees' current held position and removes any past positions held by the employee. As a result, we are able to see the exact number of employees that fall within this age group. 
   * A total of 72,458 employees fall within this age group, meaning potentially this many positions need to be filled, as well as potential employees who could be eligible for the mentorship program. 
3. Query no. 3: retiring_titles.csv, shows a clear table of how many employees are retiring from their most recent job title. 
   * 25,916 are	"Senior Engineer"
   * 9,285	are "Engineer"
   * 1,090 are	"Assistant Engineer"
   * 24,926	are "Senior Staff"
   * 7,636 are	"Staff"
   * 3,603 are	"Technique Leader"
   * 2 are	"Manager"
4. Query no. 4: mentoring_eligibility, shows current employees who were born between January 1, 1965 and December 31, 1965, making them eligible for mentorship. There are a total of 1,549 employees who would be eligible for the mentorship program. 
# Summary 
* A total of 72,458 employees fall within this age group, meaning that there are potentially that many employee positions that will need to be filled, as well as 1,549 potential employees who are eligible for the mentorship program. There are 4 titles and 6 levels that are held by retirees that P-H should focus on seeking new employees: Engineering, Staffing, Technical, Managerial. However, this query does not clearly state how many eligible employees there are per department.
* The Engineering roles are the roles with the most retirees at every level, meaning that it is vital for these roles to commence their employment process. Thankfully, due to this large wave of retirees there is higher probability that there will be more retirees eligible for the mentorship program. Hopefully, this will prove beneficial for the Engineering roles in the long run, as engineers become increasingly knowledgable with advancements in technology, a new wave of employees and retirees ready to mentor them, may help Pewlett Hackard strengthen these roles. Similarly for the Staffing roles. 
* The Technical and Managerial roles have less retirees, which may prove to be good for these positions, however, it decreases probability of having enough qualified, retirement-ready employees to mentor the next generation of Pewlett Hackard employees. 
* There are two additional queries that I made in order to provide a little more insight into the retirees. 
* The 1st Query: mentors_per_title.csv, provides the exact number of eligible mentors per title/role. 
  * 306	"Senior Engineer"
  * 377	"Engineer"
  * 65	"Assistant Engineer"
  * 428	"Senior Staff"
  * 296	"Staff"
  * 77	"Technique Leader"
  * Important to note that there are no eligible mentors for the "Manager" role. 
* The 2nd Query: mentors_per_dept.csv, provides the exact number of eligible mentors per department. 
  * 396	"Development"
  * 322	"Production"
  * 244	"Sales"
  * 120	"Customer Service"
  * 117	"Marketing"
  * 103	"Research"
  * 97	"Human Resources"
  * 86	"Quality Management"
  * 64	"Finance"
