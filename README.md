dr-fame
=======  
  
Cloning this repository into Eclipse  
------------------------------------  
  
The following is a guide on how to get the 'Sites' folder found in this repository put into a given user's local repository using Eclipse (Kepler) and his own downloaded distribution of Drupal 7.  
  
  
#####Downloading current version of Drupal 7  
  
In order to have a funtioning Drupal site to run on your personal machine, you must have a full distribution of Drupal 7. The latest version of Drupal 7 should be found here: https://www.drupal.org/project/drupal. Here you should click on the link for the .zip file of the latest release of Drupal 7 as found in "Recommended Releases". After you are finished downloading Drupal, you need to unzip what you have just downloaded and put the unzipped folder into your ampps/www folder. The download may have a wrapper (a folder titled 'Drupal 7.x' within another folder titled 'Drupal 7.x'). If this is the case then take the innermost folder titled 'Drupal 7.x' and and place that into your ampps/www folder.  
  
  
  
#####Getting the GitHub 'Sites' Folder into your Local Repository  
  
In Eclipse, create a new PHP Project by going into File/New/Project... and then, in the menu that comes up, expand the PHP folder and then select 'PHP Project'. Clicking 'Next' will bring you into the 'Create PHP Project' menu. Here you will need to select the radio button that reads 'Create project at existing location...' and then press 'Browse...'. From here you need to find and select your new Drupal folder that should be sitting inside your ampps/www folder. After doing this, make sure to give your project a name (ideally 'FAME') and then click 'Finish'.  
  
In order to make room for the 'Sites' folder in this repository, you now need to delete the 'Sites' folder that currently exists in your Drupal distribution. You can right-click on the folder in the 'PHP Explorer' panel of Eclipse and press delete from that menu, but any other method of deletion should be fine.  
  
Next you are going to create a local repository based on your new project. First, right-click on your root project folder and go down to 'Team' and then click on 'Share Project'. In the menu that comes up it should give you the option to select a repository. Select 'git' and click 'Next'. On this screen you should see a checkbox with the option to 'Use or create repository in parent folder of project'. Check this off. Select your project from the list and then click 'Create Repository' and then click 'Finish'. Your project in 'PHP Explorer' should now say '\<project name\) NO-HEAD'.  
  
Now you are going to fetch from this GitHub repository. To do this, right-click on your project folder and go to Team/Remote and then select 'Fetch From...'. In this menu you are going to need the URL of the GitHub repository which is https://github.com/fairfield-is320-fall2014/dr-fame.git. Paste the URL into the URI field in Eclipse and the rest of the location fields should autofill. Next you need to enter your GitHub credentials into the appropriate fields and check off 'Store in Secure Store' just to save yourself from having to log in again later. After doing this click 'Next' and now you should see a form titled 'Fetch Ref Specifications'. In the 'Source ref' dropdown menu select 'master [branch]' and then click the 'Add All Branches Spec' button. The list should populate with one item and it should say 'refs/heads/*' in the 'Source Ref' field. Make sure the radio button towards the bottom that reads 'Automatically follow tags if we fetch the thing they point at' is selected. Now click 'Finish'.  
  
Now you are going to merge your local repository with the GitHub repository. Right-click on your project folder again and go down to 'Team' and then click 'Merge...'. In this menu, expand the 'Remote Tracking' folder and select the branch inside of it. Make sure the radio button that reads 'Commit (commit the result)' is selected and then in the next groupbox select the button that reads 'If a fast forward, only update the brach pointer'. Now click 'Merge'. At this point, the 'Sites' folder may or may not have appeared in your 'PHP Explorer' view under your project folder, but if it did, then the folder icon should have a gold cylinder on it. Whether or not the folder appeared, you should still do a hard reset on your project.  
  
In order to do a hard reset, you need to right-click on your project folder yet again, and then go down to 'Team' and then click on 'Reset...'. This will bring up a form titled 'Reset \<project name\>'. Here you need to expand the 'Remote Tracking' folder and select the branch inside of it. Select the radio button that reads 'Hard...' and then click 'Reset'. Select 'Yes' in the prompt that shows up and that should be all that needs to be done.  
  
  
  
Pushing  
-------  
  
Pushing your changes that you made to anything within the 'Sites' folder to this GitHub repository (from within Eclipse) is a three-step process.  
  
1) **Add changed files to the index:** Do this by right-clicking on your project folder, mousing over 'Team' and then by clicking 'Add to Index'.  
  
2) **Commit changes:** Do this by right-clicking on your project folder, mousing over 'Team' and then by clicking 'Commit' way at the top of the menu. Clicking this will bring up a form for you to enter a commit message. Do this and now you can either 'Commit and Push', or you can just 'Commit'. For the sake of this explanation, just click 'Commit' for now.  
  
3) **Push:** Do this by right-clicking the project folder again, and then by mousing over 'Team', then 'Remote' and then by clicking 'Push'. Now you will get a form for the destination of this push. Use the URL of the GitHub repository and paste it into the URI field in Eclipse. Here it is again: https://github.com/fairfield-is320-fall2014/dr-fame.git. Now you just need to enter your GitHub credentials (and check off 'Store in Secure Store'). Click 'Next'. Here make sure to select 'master [branch]' in the 'Source ref' dropdown. Now click 'Add All Branches Spec' and the list below should populate with an 'update'. Now click 'Finish'. You have now just pushed your changes to GitHub.
