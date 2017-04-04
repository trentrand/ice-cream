# Ice cream drawing program
###### Created by: Trent Rand
###### Language: [GNU-Prolog]

## Project Details
###### Problem created by:
ICLP 2013 Prolog Programming Competition
###### Link to original document:
 https://people.cs.kuleuven.be/~bart.demoen/PrologProgrammingContests/Contest2013.html

#### Example usage:
```
| ?- icecream(1).
|  
|          ()
|         /\/\
|         \  /
|          \/
```

```
| ?- icecream(4).
|  
|          ()
|         (())
|        ((  ))
|       ((    ))
|      /\/\/\/\/\
|      \        /
|       \      /
|        \    /
|         \  /
|          \/
```

```
| ?- top(4).
|  
|          ()
|         (())
|        ((  ))
|       ((    ))
|
| ?- fillmid(4)
|
|      /\/\/\/\/\
|
| ?- cone(4)
|      \        /
|       \      /
|        \    /
|         \  /
|          \/
```
