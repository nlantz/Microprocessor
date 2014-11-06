Microprocessor
==============
Microprosessor project for EEE333 

Build all components using generic width to allow it to be run as 8 bit or 4 bit. 

How to do it
============

To start off make sure you have git installed. The next set of code is inputs for the command line. 

Next move into a directory that you want to work in, Documents for example 
   
      cd Documents

Next we need to pull the code down from out repository so we can work on it.
   
      git clone https://github.com/nlantz/Microprocessor.git

We just pulled all the code from the internet and placed it on our computer. Now move into the folder we ject created.
   
      cd Microprocessor

Every time you want to go work on the project you need to make sure the code is up to date. To do this type. 

      git checkout master
      git pull origin master

Now you can go about working on the project. If you add a file you can add it in the browser and then checkout master or you can add it through the command line. But if you jsut add it in Xilinx it will not get added to the repo. 

When you are done working or just want to save your work to the repo, "commit" your changes

      git commit -a

The -a is for "all" changes. This saves all your work to your local machine.
It will ask you for your user name and password. 
You will be prompted to enter a message. This is just notes so you can remember what you worked on. When you are finished writing notes press "ctrl x" to exit then "Y" for yes

Now we can upload our local saves to the internet. To do this write. 
 
      git push origin master


And thats it! You should be able to see your edits in the repo. 

   


  


