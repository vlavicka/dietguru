=====================
DietGuru requirements
=====================

Diet Guru is a system that allows user to make notes about its diet program.


--------------------
General user stories
--------------------

+----+---------+------------------------------+-----------------------------------------------+-----+
| No | As a/an | I want to                    | so that                                       |     |
+====+=========+==============================+===============================================+=====+
| 1  | user    | create regimen log           | I can follow diet program                     | |i| |
+----+---------+------------------------------+-----------------------------------------------+-----+
| 2  | user    | create meal                  | I can use it in regime log                    | |n| |
+----+---------+------------------------------+-----------------------------------------------+-----+
| 3  | user    | insert foodstuff into meal   | I can get meal structure and nutrition values | |n| |
+----+---------+------------------------------+-----------------------------------------------+-----+
| 4  | user    | delete meal                  | I can no longer use it                        | |n| |
+----+---------+------------------------------+-----------------------------------------------+-----+
| 5  | user    | insert meal into regimen log | I can remove it from diet program             | |n| |
+----+---------+------------------------------+-----------------------------------------------+-----+
| 6  | user    | check meal if it is consumed | I can see diet summary and progress           | |n| |
+----+---------+------------------------------+-----------------------------------------------+-----+


Roles
-----

+------+-----------------------------+
| Role | Description                 |
+======+=============================+
| user | person who uses application |
+------+-----------------------------+



------------
User stories
------------

Story 1
-------
   
**As a/an user I want to create regimen log so I can follow diet program**

+----+---------+--------------------------------------------+-----------------------------------------------------+-----+
| No | As a/an | I want to                                  | so that                                             |     |
+====+=========+============================================+=====================================================+=====+
| a  | user    | specify time period for keeping log        | I can divide diet program into smaller pieces       | |i| |
+----+---------+--------------------------------------------+-----------------------------------------------------+-----+
| b  | user    | write down notes about diet program course | I can use it as reference in future                 | |i| |
+----+---------+--------------------------------------------+-----------------------------------------------------+-----+
| c  | user    | specify name and description               | I can differentiate between different regiment logs | |i| |
+----+---------+--------------------------------------------+-----------------------------------------------------+-----+
| d  | user    | write down weight                          | I can follow success in loosing weight              | |i| |
+----+---------+--------------------------------------------+-----------------------------------------------------+-----+
| e  | user    | display regimen log                        | I can see its result                                | |n| |
+----+---------+--------------------------------------------+-----------------------------------------------------+-----+
| f  | user    | input regimen log data via GUI             | I can have comfort while creating regimen log       | |n| |
+----+---------+--------------------------------------------+-----------------------------------------------------+-----+





Regimen log contains information about diet program. It is time limited so the 
user can specify start and end date. User can decide that he/she wants to 
create new log on weekly bases.

Regimen log must contain following information:

+--------------------+--------------------------------------------------------+--------+
| Attribute          | Description                                            | Repr.  |
+====================+========================================================+========+
| *title*            | identification of regimen log                          | text   |
+--------------------+--------------------------------------------------------+--------+
| *description*      | description of regimen log                             | text   |
+--------------------+--------------------------------------------------------+--------+
| *start/end date*   | period when user wants to follow his/hers diet program | date   |
+--------------------+--------------------------------------------------------+--------+
| *start/end weight* | part of every diet program is tracing his/hers weight  | number |
+--------------------+--------------------------------------------------------+--------+
| *notes*            | notes taken during the regimen log time period         | text   |
+--------------------+--------------------------------------------------------+--------+

New created regimen log has mandatory and optional values::

    title         = <mandatory>
    description   = <empty>
    start_date    = current date
    end_date      = week from start date
    start_weigth  = <mandatory>
    end_weigth    = <empty>
    notes         = <empty>

.. rubric:: Notes

Notes are implemented as text but in future they can be implemented as an 
object with support for inserting and deleting notes. Date when note was 
inserted can be also updated.




Story 2
-------
   
**As a/an user I want to create meal so that I can use it in regime log**

<< TODO >>


Story 3
-------
   
**As a/an user I want to insert foodstuff into meal so that I can get meal 
structure and nutrition values**

<< TODO >>


Story 4
-------
   
**As a/an user I want to delete meal so that I can no longer use it**

<< TODO >>


Story 5
-------
   
**As a/an user I want to insert meal into regimen log so that I can remove it 
from diet program**

<< TODO >>


Story 6
-------
   
**As a/an user I want to check meal if it is consumed so that I can see diet 
summary and progress**

<< TODO >>


----
TODO
----

:TODO: visualize diet program progress
:TODO: save regimen log
:TODO: when a user story is implemented than it should be checked that it is 
       done. Use special character - checked.

.. |d| image:: done.png
.. |n| image:: new.png
.. |i| image:: inprogr.png
