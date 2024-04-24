#!/usr/bin/env python
# coding: utf-8

# # Exception Handling
# 
# Sometimes things go wrong, when they do Python will tell us about it with an error message. 
# You have already encountered error messages.  
# **SyntaxError** is a common error that you will have seen as shown below:-  
# 

# In[1]:


print(Hello world)


# In the cell above we have tried to use the print function incorrectly. It should be **print("Hello world")**, this has triggered a **SyntaxError**.  
# Note how we are giving a lot of useful information about the error - the name of the file where it occurred, the line number and a carat ^ indicating where the interpreter tripped up. We are then told the type of error.  
# 
# In Python, all errors are a type of exception, for a full list of exceptions visit https://docs.python.org/3.8/library/exceptions.html - like everything in Python, an exception is an object and all exceptions extend from the **BaseException object**. Other exceptions that you might have encountered are **ArithmeticException** of which **ZeroDivisionError** is an example. There is also **IndexError** which is a type of **LookupError**.  
# 
# Suppose we were writing a block of code where we anticipated an exception could occur. We might want to mitigate the problems it could cause in advance. **Exception handling enables us to do this**.

# ## How is Exception Handling done in Python?  
# 
# <div class="alert alert-block alert-info">
#     <b>Tip:</b> The way Python handles exceptions is a little bit like using an <b>if - else</b> statement.  
# There are several elements used to handle exceptions in Python.  
#     They consist of a <b>try block</b>, an <b>except</b> clause, and <b>else</b> statement and a <b>finally</b> clause.
# </div>
#   
# ### Let's look at an example

# In[2]:


def division(x:float, y:float) -> float:
    return x/y

division(3.0,2.0)


# In[3]:


division(3.0,0)


# In[4]:


try:
    division(3.0,0)
except ZeroDivisionError:
    print("Cannot divide by zero")


# In[6]:


try:
    division(3.0,0)
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")


# In[7]:


try:
    division(3.0,"potato")
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")


# In[8]:


try:
    division(3.0,"potato")
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
    


# ### The block stops running as soon as the the exception is encountered

# In[9]:


def division2(x:float, y:float) -> float:
    print("Let's get started")
    output = x/y
    print("All done!")
    return output


# In[10]:


print("Entering try block")
try:
    division2(3.0,"potato")
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
print("Program finished")    


# In[11]:


print("Entering try block")
try:
    division2(3.0,2.0)
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
print("Program finished")    


# ### Optional else block  
# 
# This only executes if no errors are encountered

# In[12]:


print("Entering try block")
try:
    division2(3.0,2.0)
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
else:
    print("Program finished without error")


# In[13]:


print("Entering try block")
try:
    division2(3.0,0)
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
else:
    print("Program finished without error")


# ### Optional finally block  
# 
# This will execute whatever the outcome of the try block

# In[14]:


print("Entering try block")
try:
    division2(3.0,0) # This will cause an error
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
else:
    print("Program finished without error")
    
finally:
    print("That concludes this code block")


# In[15]:


print("Entering try block")
try:
    division2(3,2) # This will not cause an error
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
else:
    print("Program finished without error")
    
finally:
    print("That concludes this code block")


# ### Generic block for unknown errors
# 
# As a catch all you can add a generic **except** block to catch any unexpected errors
# 
# 

# In[ ]:


print("Entering try block")
try:
    division2(3,2) # This will not cause an error
except ZeroDivisionError as err:
    print(err)
    print("Cannot divide by zero")
except TypeError as t_err:
    print(t_err)
    print("Please input a number")
except:
    print("Something unforeseen happened")
else:
    print("Program finished without error")
    
finally:
    print("That concludes this code block")


# ### When to use try block  
# 
# Example below taken from __[Python Documentation](https://docs.python.org/3/tutorial/errors.html)__

# In[ ]:


while True:
    try:
        x = int(input("Please enter a number: "))
        break
    except ValueError:
        print("Oops!  That was not a valid number.  Try again...")


# In[ ]:





# ## Raising Exceptions
# 
# There are times when you might want to raise your own exception. This can be done using the **raise** keyword.  
# 
# Imagine you were asking for user input where the requirement was an integer. You can **raise** an exception if the input is the wrong type, as shown in the code example below.

# In[16]:


try:
    
    x = "My name is Giles"

    if not type(x) is int:
        raise TypeError("Only integers are allowed")
except TypeError as e:
    print(e)
else:
    print("Valid Input")


# In[ ]:




