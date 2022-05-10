Homework 1
Author: Tianhao Yang

The first is to design employee information entities, which is the most obvious.
The second design is the program login settings. Because not all employees will
register on this platform. Therefore, the original employee information database
cannot be disrupted. Therefore, the login entity and password are designed. 
After that are three possible conditions that a employee might get tested by COVID-19.
There are three types. First one is report by the person himself. The second are Randomly 
scan entities and the last one is close contacts entities. These three are more clear in 
different entities. In these three entities, those who need to be tested for 
COVID-19 are placed in the new entity called covid_test_queue with a time limit, 
such as testing within three days. This is more reasonable and humane. 
The entity after that is the test result, with address, time, and whether it is negative 
or positive in the end. People who are currently positive will end up being two different situations
in two new entity. Self-isolation or hospital visits have different records. Patients 
who are positive may have close contacts. By examining the entities of meeting 
and employee to find close contacts, this group of people in a queue entity will 
use a boolean value to indicate whether HR has notified. After the notification, 
people will be placed on the waiting list for covid. Finally, it is recommended 
that the list of covid is produced by the positive entity, and the floor of the 
positive employee is used to find it, and the result is finally generated.