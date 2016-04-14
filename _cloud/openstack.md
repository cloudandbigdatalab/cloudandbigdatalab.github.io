---
description: A detailed guide on how to join opentsatck
title: Joining Open Stack
layout: posts
---

**JOIN THE COMMUNITY:**

UBUNTU ACCOUNT:

1.  Create Ubuntu Account
    > [*https://one.ubuntu.com*](https://one.ubuntu.com) by giving the
    > req![](media/image1.png)uired details and following the
    > agreement.![](media/image2.png)

2\. Account creation for New User.![](media/image3.png)

3\. Complete your Account creation by verifying the link sent to the
registered email.

**OPENSTACK COMMUNITY:**

1.  Join the Openstack community
    > [*https://www.openstack.org/join/*](https://www.openstack.org/join/)
    > and click foundation member button (at the bottom of the
    > page).![](media/image4.png)

2.  You will be redirect to the following page, Read the terms, Complete
    > the application by filling the required details and submit
    > it.![](media/image5.png)

**GERRIT ACCOUNT**

Step 1:**Setup Gerrit account by creating SSH key pair.**

\$ssh-keygen -t rsa -b 4096 -C "email@example.com" -f \~/.ssh/gerrit

**Setup the SSH config**

\$cat &gt; \~/.ssh/config &lt;&lt;EOF

host [*review.openstack.org*](http://review.openstack.org)

HostName
[*review*![](media/image6.png)*.openstack.org*](http://review.openstack.org)

IdentityFile \~/.ssh/gerrit

EOF

Step 2:**Login to Gerrit**
[***review.openstack.org***](http://review.openstack.org) **by giving
ubuntu account details (by clicking **

**sign in at the top right).**

Step 3**: Goto Settings, Click on Profile and select unique
Username.**![](media/image7.png)

Step 4: **Copy SSH key(generated from Step 3) and add to Gerrit by
clicking SSH public **

**keys link (left side of settings).**

![](media/image8.png)

Step 5: **Select the ICLA OpenStack agreement, fill your details at
bottom of the page and**

![](media/image9.png)

**Step 6: Agree and Submit Agreement.**

![](media/image10.png)

**GIT:**

**Step 1:Installing required Packages.**

Update Package List**: \$sudo apt-get update**

Installing Packages:**\$sudo apt-get install -y git python-pip vim**

**Step 2:Install git -review via pip and verify for version either 1.25
or higher.**

Install Git: **\$sudo pip install --upgrade git-review**

Check version: **\$git-review --version**

**Step 3:Set Git Existence**

Before using git, we should set our username and email(make sure to keep
same as

OpenStack foundation).

**\$git config --global user.name "Firstname Lastname”**

**\$git config --global user.email**
[*youremail@example.com*](mailto:youremail@example.com)

**Step 4: Set Gir-review username(make sure to keep same as
Openstack.org/settings).**

**\$git config --global gitreview.username yourgerritusername**

**Step 5: To commit messages, specify your editor(vi or nano)**

**\$git config --global core.editor yourfavoriteeditor**

**Step 6:Clone the sandbox repo**

It makes the a local copy of Repo

**\$git clone**
[*https://github.com/openstack-dev/sandbox*](https://github.com/openstack-dev/sandbox)

**Step 7: Now, test authentication to Gerrit, **

**\$git review -s -v**

**Working with BUGS:**

1.  Goto
    > [*https://bugs.qastaging.launchpad.net*](https://bugs.qastaging.launchpad.net).
    > Login, Choose One Project and Type the project name, click choose.
    > Finally search Bug Reports.![](media/image11.png)

2.  Click cog icon and Age, Date Updated column and Update. Click Age
    > and Date last updated.

    -   Age — All the bugs appear from Newest to Oldest.

    <!-- -->

    -   Date last updated — list of bugs from latest updated to oldest
        > updated.![](media/image12.png)

3.  Click on Advance search, to see all bugs which needs to be fixed and
    > Select all bug status except Invalid, Fix Released and Committed
    > and make sure Under Assignee select Nobody.![](media/image13.png)

4.  Click on Date last updated and observe Assigned to, Status and
    > importance sections of the bug.![](media/image14.png)

5.  Click on the bug and click on pencil icon next to status and
    > select confirm.

6\. Assign a bug — Select the pencil icon at Assigned to And Click Assign
me(Assign bug to yourself).

7\. Add comments to Bugs at the bottom of the page, enter your comment in
comment box and click on post comment.

**Committing a Bug Fix:**

**Step 1:** Within the sandbox repo, run a git pull

**\$cd sanbox**

**\$git pull**

**Step 2:** Set up the Local Repo for Git Review

**\$cd sandbox/training**

**\$git review -s**

**Step 3:** you need to create a new branch for the proposed change

**\$git checkout -b bug/123456**

**Step 4:** Create a .py file by giving unique name and keep some
information with the

misspelling in your file.

**\$touch ./yourfile.py**

**\$echo -e "Hello OpenStack Community,\\nThis is My Frst Bug Fix.\\nI
hope really **

**hope it gets merged to master." &gt; yourfile.py**

**Step 5:** Now, check Status of Git and stage all modified files for
commit.

**\$git status.**

**\$git add . **

**Step 6:** Check the Git status again and commit the file.

**\$git status**

**\$git commit**

**Step 7:** The first line should be limited to 50 characters and should
not end with a period (commit messages over 72 characters will be
rejected by the gate). Subsequent lines should be wrapped at 72
characters.

**Step 8:** Finally, Git Review to send the change.

\$**git review**
