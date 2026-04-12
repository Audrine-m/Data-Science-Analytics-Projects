# Understanding DDL, DML, and SQL Operations

## DDL vs. DML
In SQL, commands are broadly divided into two categories: **Data Definition Language (DDL)** and **Data Manipulation Language (DML).**

- **DDL** defines and manages the structure of the database. Examples include `CREATE`, `ALTER`, and `DROP`. These commands change how the database is organized, such as creating new tables or modifying existing ones.
- **DML** deals with the actual data inside those structures. Examples include `INSERT`, `UPDATE`, `DELETE`, and `SELECT`. These commands allow us to add, modify, remove, or query records.

The key difference is that **DDL changes the schema**, while **DML changes the data**.

---

## Using CREATE, INSERT, UPDATE, and DELETE
In practice, I applied these commands as follows:

- **CREATE**: Defined tables such as `students`, `subjects`, and `exam_result`. For example:
  ```sql
  CREATE TABLE students (
      student_id INT PRIMARY KEY,
      first_name VARCHAR(50),
      last_name VARCHAR(50),
      class VARCHAR(10),
      city VARCHAR(50)
  );
  ```

- **INSERT**: Added new records into tables:
  ```sql
  INSERT INTO students (student_id, first_name, last_name, class, city)
  VALUES (5, 'Esther', 'Njeri', 'Form 3', 'Nairobi');
  ```

- **UPDATE**: Corrected or changed existing data, such as fixing marks or updating a student’s city:
  ```sql
  UPDATE exam_result
  SET marks = 59
  WHERE result_id = 5;
  ```

- **DELETE**: Removed records when they were no longer valid, such as cancelling an exam result:
  ```sql
  DELETE FROM exam_result
  WHERE result_id = 9;
  ```

---

## Filtering with WHERE
The `WHERE` clause is essential for narrowing down results. It works with different operators:

- `=` → exact match (e.g., `WHERE city = 'Nairobi'`)
- `>` or `<` → comparisons (e.g., `WHERE marks > 70`)
- `BETWEEN` → ranges (e.g., `WHERE marks BETWEEN 50 AND 80`)
- `IN` → multiple values (e.g., `WHERE class IN ('Form 2', 'Form 4')`)
- `LIKE` → pattern matching (e.g., `WHERE first_name LIKE 'A%'`)

These operators make queries precise and powerful.

---

## Transforming Data with CASE WHEN
The `CASE WHEN` statement allows conditional logic inside queries. For example, labeling exam results:

```sql
SELECT marks,
       CASE
           WHEN marks >= 80 THEN 'Distinction'
           WHEN marks >= 60 THEN 'Merit'
           WHEN marks >= 40 THEN 'Pass'
           ELSE 'Fail'
       END AS performance
FROM exam_result;
```

This transforms raw numeric data into meaningful categories, making reports more insightful.

---

## Reflection
This week, I found working with **conditional logic (`CASE WHEN`)** particularly interesting because it felt like programming inside SQL—it allowed me to reshape data dynamically. The most challenging part was remembering to use the correct syntax for `UPDATE` and `DELETE` statements, since forgetting a `WHERE` clause could affect the entire table. Overall, practicing these commands gave me a clearer understanding of how databases are managed both structurally and at the data level.
