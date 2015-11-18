![Alt text](imgs/one_to_one.png?raw=true)

My example is comes from filling out a survey and they ask for your user account information to send you junk mail. Not everyone will have, for an example a username for an account if they do not have an account to begin with so the value can be NULL.

![Alt text](imgs/one_to_many.png?raw=true)

What is a one-to-one database?

- A one-to-one relationship is when each row in one table is linked to only one other row in another table.

When would you use a one-to-one database? (Think generally, not in terms of the example you created).

- When your table becomes to cluttered with information you can split it up into two tables. By splitting it up you can also refine your search when pulling up the information.

What is a many-to-many database?

- A many-to-many database woul have one or more rows in a table related to as many rows in another table.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).

- You would use a many-to-many database when multiple rows within one table relate to multiple rows within another table.

What is confusing about database schemas? What makes sense?

- I think the all the definitions of the relationships and what it does makes sense, but what is confusing is when to implement them. A specific example would be when would you consider it acceptable to use a one-to-one relationship rather than putting that information in the initial table? Where do you draw the line?