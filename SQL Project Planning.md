You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

<table>
  <thead>
    <tr>
      <th>Column</th>
      <th>Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Task_Id</td>
      <td>Integer</td>
    </tr>
     <tr>
      <td>Start_Date</td>
      <td>Date</td>
    </tr>
    <tr>
      <td>End_Date</td>
      <td>Date</td>
    </tr>
  </tbody>
</table>

If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.

<strong>Sample Input</strong>

<table>
  <thead>
    <tr>
      <th>Task_ID</th>
      <th>Start_Date</th>
      <th>End_Date</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>2015-10-01</td>
      <td>2015-10-02</td>
    </tr>
    <tr>
      <td>2</td>
      <td>2015-10-02</td>
      <td>2015-10-03</td>
    </tr>
    <tr>
      <td>3</td>
      <td>2015-10-03</td>
      <td>2015-10-04</td>
    </tr>
    <tr>
      <td>4</td>
      <td>2015-10-13</td>
      <td>2015-10-14</td>
    </tr>
    <tr>
      <td>5</td>
      <td>2015-10-14</td>
      <td>2015-10-15</td>
    </tr>
    <tr>
      <td>6</td>
      <td>2015-10-28</td>
      <td>2015-10-29</td>
    </tr>
    <tr>
      <td>7</td>
      <td>2015-10-30</td>
      <td>2015-10-31</td>
    </tr>
  </tbody>
</table>

<strong>Sample Output</strong>
```
2015-10-28 2015-10-29
2015-10-30 2015-10-31
2015-10-13 2015-10-15
2015-10-01 2015-10-04

```

<strong>Explanation</strong>

The example describes following four projects:
- Project 1: Tasks 1, 2 and 3 are completed on consecutive days, so these are part of the project. Thus start date of project is 2015-10-01 and end date is 2015-10-04, so it took 3 days to complete the project.
- Project 2: Tasks 4 and 5 are completed on consecutive days, so these are part of the project. Thus, the start date of project is 2015-10-13 and end date is 2015-10-15, so it took 2 days to complete the project.
- Project 3: Only task 6 is part of the project. Thus, the start date of project is 2015-10-28 and end date is 2015-10-29, so it took 1 day to complete the project.
- Project 4: Only task 7 is part of the project. Thus, the start date of project is 2015-10-30 and end date is 2015-10-31, so it took 1 day to complete the project.
