---
category: Big Data and Machine Learning
title: Getting Started
lab: https://www.chameleoncloud.org/login/
video: https://youtu.be/_tiEK2At438
---


## Objectives

In this tutorial, you will learn how to create a Chameleon account and use the Chameleon resource leasing process to create on-demand bare metal servers using the Chameleon user interface.

| \# | Action | Detail | Time (min) |
|----|--------|--------|------------|
| 1 | Register for a Chameleon User Account | You will learn how to register for your own Chameleon account, and how to utilize its basic features. | 10 |
| 2 | Create a Sample Project | To begin, we will walk through the Chameleon user interface capabilities, such as reservation, leasing, server provisioning, private/public IP addresses, networks, and more. | 5 |
| 3 | Add Users to the Project | To begin, we will walk through the Chameleon user interface capabilities, such as reservation, leasing, server provisioning, private/public IP addresses, networks, and more. | 5 |
| 4 | Launch a Chameleon Cloud Bare Metal Server | Lastly, you will learn how to create and log in to a new bare metal instance on Chameleon Cloud using your new Chameleon Cloud account. | 15 |

## Prerequisites

The following prerequisites are expected for successful completion of this tutorial:

-   An SSH client (Windows users: download [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)

-   A basic knowledge of Linux

## Step 1: Register for a Chameleon Cloud user account

In this step, you will create your very own Chameleon Cloud user account. However, before we begin, it will be useful to define some Chameleon Cloud terminology and the relationship between these entities. A Chameleon user account, which we will register for below, is required to create projects. A project, in turn, can have any number of other Chameleon users associated with it. As such, users added to a project are known as “project users” for that project. Projects will also have resources, such as a number of bare metal servers, associated with them. Together, these concepts form a hierarchy:

![]({{ image_path | append: "image5.png" }})

To begin, Go to the [Chameleon Cloud homepage](https://whttps://www.chameleoncloud.org/)

![]({{ image_path | append: "image6.png" }})

Find and click on the “Users” button located in the upper right-hand corner of the page. **Click on “Register” from the pop-up menu** that appears.

![]({{ image_path | append: "image7.png" }})

**Complete the “Contact Information” and “Account Information” forms.** You will be given the option called “PI Eligibility”. The PI (or Principal Investigator) of an institute has the ability to create projects. Non-PI users can be added to a project, but cannot create their own projects. **When finished, click on “Save Profile”. You will soon receive an email notification regarding account creation completion.**

![]({{ image_path | append: "image8.png" }})

You will be taken back to the Chameleon Cloud homepage with a message notifying you to check your email for account verification.

![]({{ image_path | append: "image9.png" }})

You should receive an email instructing you to click on a link in order to confirm your email address. Upon doing so, you will be taken to an email confirmation page where you are asked to provide your Chameleon username. After doing so, click on “Verify”.

![]({{ image_path | append: "image10.png" }})

If your information matches, you will receive a message indicating successful verification, and will be directed to login to Chameleon for the first time.

## Step 2: Create a Sample Project

If not already there, login to the [Chameleon website](https://chameleoncloud.org/login/)

![]({{ image_path | append: "image11.png" }})

Upon successfully logging in, you will be asked to **accept the Chameleon User Terms and Conditions**. Click “Accept” to proceed.

![]({{ image_path | append: "image12.png" }})

Each time you log in, you will be taken to your Dashboard, where you can manage your projects, help desk tickets, as well as your account settings. As we wish to create a new project, **click on the “Manage your Projects”** button.

![]({{ image_path | append: "image13.png" }})

You will be told you do not currently have any projects. **Click on the “Create Project” button** in the upper right-hand corner of the page to continue.

![]({{ image_path | append: "image14.png" }})

You should then be presented with and asked to **accept the Project Lead Terms and Conditions**. Click “Accept” to proceed.

![]({{ image_path | append: "image15.png" }})

You will then need to **complete the “Create a New Project” form** by providing a title, description, and type. A Project ID will be automatically generated and assigned – it is displayed on this page for your reference. When you are satisfied with your input, **click on “Create Project”**.

![]({{ image_path | append: "image16.png" }})

You will then be taken to view the new project’s details. It is on this page that you can add project users. **At this point, the project’s “Allocation” status will be reported as “Chameleon *Pending*”. Check in regularly to see when your project’s allocation has been approved.**

![]({{ image_path | append: "image17.png" }})

## Step 3: Add Users to the Project

If you have not done so already, as a PI user, login to the [Chameleon website](https://chameleoncloud.org/login/).

On your Dashboard, **click on the “Manage Your Projects” button**.

![]({{ image_path | append: "image13.png" }})

**Click on the desired project’s “View Project” button**.

![]({{ image_path | append: "image18.png" }})

Scroll down to view the “Project Users” area. **In the textbox labeled “Add a User to Project”, enter the username** of the user you would like to add to the project, then **click the “Add user” button**.

![]({{ image_path | append: "image19.png" }})

Repeat this process as necessary until all desired users have been added to the project.

## Step 4: Launch a Chameleon Cloud Bare Metal Server

In this section, we will show you how to launch your own bare metal servers on Chameleon. The technology preview of Chameleon gives access to bare-metal compute resources on which users can have administrative access to run cloud computing experiments with a high degree of customization and repeatability. Typically, an experiment will go through several phases:

### 4.0 Discovering resources

All physical resources available to users through the Chameleon technology preview are described in the Chameleon [resource registry](https://www.chameleoncloud.org/user/discovery/) where users may browse and learn about all the resources available in the Chameleon technology preview.
By default, the resource discovery web interface displays all nodes of the test bed. They can be filtered using the controls on the right side of the page.

![]({{ image_path | append: "image20.png" }})

For example, three nodes of the Alamo cluster have a 1 TB disk as a second drive. To list information for only these nodes, click on the corresponding checkbox:

![]({{ image_path | append: "image21.png" }})

### 4.1 Create a reservation lease

Physical resources on the Chameleon technology preview must be reserved before using them for an experiment. Once a reservation has been accepted, users are guaranteed that resources will be available at the time they chose (except in extraordinary circumstances such as hardware or platform failures), which will help to run large scale experiments.

To begin, login to the [Chameleon Resource Provisioning Dashboard](https://ironic.chameleon.tacc.utexas.edu/dashboard/auth/login/).

![]({{ image_path | append: "image22.png" }})

You should land on the Compute overview page for your default project. The pie charts on the page will show you what the current usage of things like instances and floating IPs is relative to the limit for your project. The usage summary will show historical usage of your project for a time period that can be selected. The usage box will show information about the instances currently running in your project.

![]({{ image_path | append: "image23.png" }})

**To access the reservation system, click on “Reservations”, then “Leases”.**

![]({{ image_path | append: "image24.png" }})

To discover when resources are available, you may access the lease calendar. This will display a Gantt chart of the reservations which allows you to find when resources are available. The Y axis represents the different physical nodes in the system and the X axis represents time.

![]({{ image_path | append: "image25.png" }})

Once you have chosen a time period when you want to reserve resources, go back to the Leases screen and **click on "Create Lease"**. It should bring up the window displayed below:

![]({{ image_path | append: "image26.png" }})

1.  Pick a name for the lease. This name needs to be unique across your project. This example uses the name my-first-lease.

2.  Pick a start time; if you want to create your lease soon pick a start time in the near future. Note that it must be entered in UTC! You can get the UTC time by running “date -u” in your terminal.

3.  Pick an end time. Similarly, you must use UTC.

4.  Choose the number of hosts, it is 1 by default.

5.  **After completing the “Create New Lease” form, click on the “Create” button**.

    ![]({{ image_path | append: "image27.png" }})

    Once created the lease details will be displayed. At the bottom of the page are the details about the reservation. Initially the reservation is in the Pending status, and stays in this state until we reach the start time.

    ![]({{ image_path | append: "image28.png" }})

    Once the start time of the lease is reached, the lease will be started and its reservation will change to "Active"; you may need to refresh the page to see this.

    ![]({{ image_path | append: "image29.png" }})

### 4.2) Import Public Key Pair

**Once your lease is started, you are almost ready to start an instance. But first, you need to make sure that you will be able to connect to it by setting up a key pair. This only has to be done once per user per project. **Click on the “Access & Security” section, then click the “Key Pairs” tab.**

![]({{ image_path | append: "image30.png" }})

Here you can either get Chameleon to create an SSH key pair for you via the "Create Key Pair" button. If you already have an SSH key pair on your machine and are happy to use it, **click on "Import Key Pair"**.

Enter a name for the key pair, for example “laptop”. In the "Public Key" box, copy the content of your SSH public key. Typically it will be at ~/.ssh/id_rsa.pub. To create your own key pair, execute the command:

ssh-keygen –t rsa –f cloud.key

**Copy the contents of the cloud.key.pub file, then simply paste into the "Public Key" box and click on “Import Key Pair”**.

![]({{ image_path | append: "image31.png" }})

You should now see a list of known key pairs, with the one you just added.

![]({{ image_path | append: "image32.png" }})

### 4.3) Launch an Instance using Public Key Pair

Now that we have a valid key pair published, we can proceed with creating a new server. **Click on the “Instances” tab** under “Compute”, where we can create, manage, and delete servers on demand.

![]({{ image_path | append: "image33.png" }})

Next, **click on the “Launch Instance” button.**

![]({{ image_path | append: "image34.png" }})

Create a Chameleon server with the following attributes.

1.  Instance name: **test-<your name>**

2.  Availability zone: **Any Availability Zone**

3.  Reservation: **<any reservation listed>**

4.  Flavor: **baremetal**

5.  Instance count: **1**

6.  Instance boot source: **Boot from image**

7.  Image name: **CC-CentOS7**

8.  Click on the “**Access & Security**” tab

9.  Select *your key pair* from the list.

10. Click: **Launch**

![]({{ image_path | append: "image35.png" }})

![]({{ image_path | append: "image36.png" }})

Your Chameleon Cloud server will begin building.

### 4.4) Assign Floating IP for Public Access

When the server becomes available, **click on the “Associate Floating IP” button** at the end of its row. Select an available IP address from the list and **click on “Associate”**. Make note of this new IP address, as we will need it to complete the next step.

![]({{ image_path | append: "image37.png" }})

Now SSH into your new server using the new floating IP address.

[proxyuser@proxy ~]$ ssh cc@your.floating.ip.address
The authenticity of host 'your.floating.ip.address (your.floating.ip.address)' can't be established.
ECDSA key fingerprint is 3d:4e:d1:a0:e8:d9:e6:19:a2:8a:79:48:66:c5:01:1d.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'your.floating.ip.address' (ECDSA) to the list of known hosts.
[cc@Hadoop-test ~]$

Ensure you are logging in using the cc account on any servers you create using this method.

**Appendix A: Generating and Using SSH Key Pairs on Windows Platforms**

First, we will need to download tools to generate our key pair, as well as an SSH client that can make use of them. These tools are called PuTTYGen and PuTTY, respectively.

The location to download PuTTYGen is: <http://the.earth.li/~sgtatham/putty/latest/x86/puttygen.exe>
The location to download PuTTY is: <http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe>

Download and run the PuTTYGen executable:

![]({{ image_path | append: "image38.png" }})

Click on the “Generate” button and move your mouse as indicated in order to generate enough random movement with which to help create your new key pair. When the process has completed, you may enter a password into the “Key passphrase” input box in order to protect your private key.

![]({{ image_path | append: "image39.png" }})

Click on the “Save private key” button and save this file to a location you can easily recall later.

Copy the text in the “Public key for pasting into OpenSSH authorized\_keys file:” input field. This is your public key that will be input into the Chameleon cloud web interface.

![]({{ image_path | append: "image40.png" }})

To connect to a Chameleon server, download and execute the PuTTY tool. Enter the public IP address into the “Host Name (or IP address)” input box.

![]({{ image_path | append: "image41.png" }})

Next, in order to specify a private key file, click on the Connection → SSH → Auth menu item on the left. Click on the “Browse” button and select your private key file.

![]({{ image_path | append: "image42.png" }})

Finally, click the “Open” button to connect using this key.
