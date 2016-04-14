---
category: Network Functions Virtualization/ Software Defined Storage
title: Fundamentals
---

{% assign image_path = site.baseurl | append: "/images" | append: page.url %}

## Objectives

In this tutorial, you will learn how to interact with the networking options present within a project using the Chameleon web interface.

| \# | Action | Detail | Time (min) |
|----|--------|--------|------------|
| 1 | Network Topology | Beginning, users will be shown a general use of the Network Topology view to manage network layout within a project. | 5 |
| 2 | Create Network | Users will be guided through setting up a new network within the project to run alongside the default network. | 5 |
| 3 | Create Router | In addition to creating a network, this step will cover setting up a router and how to bridge separate subnets. | 5 |

## Prerequisites

The following prerequisites are expected for successful completion of this tutorial:

-   A Chameleon user account

-   An active project in the Chameleon Dashboard

-   A brief knowledge of networking and IPv4 addressing

## Step 1: Network Topology

The Network Topology subsection of the Network panel provides a visual overview and management of a project's network. This view can be used as both a reference and administrative tool akin to the other views that give additional info through table layouts.

Starting from the homepage, [**https://ironic.chameleon.tacc.utexas.edu/dashboard/project/**](https://ironic.chameleon.tacc.utexas.edu/dashboard/project/), one may navigate to the Network section of the main menu on the left-hand side of the website. From there, navigate to **Network > Network Topology**.

![]({{ image_path | append: "image5.png" }})

By default, the *Small* Network Topology view should appear first. As displayed to the right, the *Small* Network view gives a brief, succinct view of the current state of the network. Currently, the names of each network will be displayed along with their associated subnet's CIDR. In addition to the CIDR, every device (such as an instance, router, etc.) that has an interface attached to a specific subnet.

In this example, we can see that the CIDR of a subnet within the *sharednet1* network is 10.12.0.0/24. There are 7 instances that currently have a network interface attached to the same subnet and it would appear no other devices are currently within the spec of the network.

As an additional note, more information about each of the networks can be provided by clicking on their names from this view.

To garner more information about attached devices, simply hover your mouse over any of the device/instance icons.

![]({{ image_path | append: "image6.png" }})

As seen above, a brief pop-out menu will appear to give details about the device. In this case, we see a detailed view of an instance. In this case, the instance name is *joseph-mpq055-n01*, with the ID provided, the instance's current status, and quick administrative links that include seeing full instance details or even terminating the instance.

Now that we know the layout of the Network Topology's *Small* view, we are now going to see what the *Normal* view looks like. Simply go towards the top center of the page and toggle the **Small/Normal** button to **Normal**.

![]({{ image_path | append: "image7.png" }})

![]({{ image_path | append: "image8.png" }})*Normal* view, you should see a screen similar to what follows. First, the similarities are the same display for the two networks present within the project including the same colors and **CIDR**\* display for subnets as well as the attached devices.

However, the differences comes to the attached devices. For each attached device, the line will show the IP address that is currently associated with the interface on the device that is attached to the subnet being displayed. To begin with, this is a significant improvement in being able to quickly identify which IP address a device has from the subnet's point-of-view. Each device will also list the device name and the type of device. For example, as pictured, we can see that there is an *instance* attached to *sharednet1* as *10.12.0.26* with a name starting with *joseph-mp*.

To get more details and control over devices, one can mouse over each device to see the same menu that was present before

.

\****CIDR (Classless Inter-Domain Routing) – In the context of this tutorial, CIDR refers to the common CIDR notation used to specify a range of IP addresses. Given an IP address in IPv4 is 32 bits, separated into 4 1-byte segments (i.e. X.X.X.X), CIDR notation is used to define which bits belong to the prefix (the bits that may not be changed) and the suffix (the bits that may be changed). For example, in the network displayed above, the CIDR is denoted as 10.12.0.0/24. The “/24” tells you the 24 leftmost bits belong to the prefix. That lands right at the three byte mark so that it is simple to see where the prefix ends 10.12.0 and the suffix begins. It is highly recommended for those unfamiliar with networking to keep aligned to byte boundaries to more easily see the separation. In addition, please note that given IPv4's broadcast and network identification, for every network block defined by CIDR, two addresses cannot be used. Any address whose suffix is all 1s or all 0s is unavailable for assignment. For example, in the network above, the addresses 10.12.0.0 and 10.12.0.255 are unavailable.***

## Step 2: Create Network

Each project will have its own unique requirements for networks and server setup. This step will be used to guide a user through the setup of a new network with a subnet attached to it. By default, most projects will already have two networks available to it (one internal and one external) that we will leave untouched and instead will work with new networks being created.

To create a network, one can simply click on the **Create Network** button at the top of the Network Topology page.

![]({{ image_path | append: "image9.png" }})

**NOTE: An alternative to this is to use the Networks subsection.**

Once launched, a small popout dialog will be displayed that will take information about the network. The Network Name is the overall name for the network, not the subnet, and you should take care in what you name your network. In this example, the name *testnet* will be used. Additionally, you can specify the starting state of the network as either UP or DOWN should more testing or debugging be necessary before bringing up a new network within the project.

![]({{ image_path | append: "image10.png" }})

By clicking the **Next** button or the **Subnet** shortcut, you will move on to the next section of the setup. The default option is for the **Create Subnet** checkbox to be selected. If you wanted just the network, you can disable this part of the setup and continue on to completion. Here we are able to enter a subnet name, in our case, *testnet-subnet*. The **Network Address** field is used to request the CIDR range that the subnet will be associated with. It is important, to ensure proper network behavior, that the reserved address space is used appropriately in the case of IPv4. Focus on using those ranges specified for private or internal network use. In the case of *testnet-subnet*, we are selecting 192.168.1.0/24, one of the more common CIDR present. **IP Version** specifies between whether the subnet will use IPv4 or IPv6. For this tutorial's scope, we will be using IPv4. The final field, **Gateway IP**, is used to specificy what the gateway's IP address should be for this subnet. To default to the default Gateway IP, we may simply leave the field blank. There is also a **Disable Gateway** option should the network possibly only need limited or specific connectivity.

![]({{ image_path | append: "image11.png" }})

By clicking the **Next** button or the **Subnet Detail** shortcut, you will move on to the final section of the setup. The first option is **Enable DHCP**, which is the default standard for network interfaces to be dynamically assigned IP addresses. This option tends to be preferred as static IPs don't need to be configured and small network configuration changes won't require massive overhauls on an instance-by-instance basis. There is a field for **Allocation Pools** which corresponds with the range of IP addresses that DHCP will assign addresses from. This permits devices to be dynamically added and removed from subnets without issue while leaving plenty of space to use for whatever other purposes the network demands. Next is the **DNS Name Servers**. To preserve the longevity of this tutorial, the current IP addresses of the DNS Name Servers in use will be avoided and users are encouraged to view the Network Details of their default network to see where their DNS Name Servers are pointed towards. Additionally, other external DNS servers may also be used. **Host Routes** is the final field that permits users to specify exact paths for hops between devices, typically for routing issues or testing. Here, we will leave it blank.

![]({{ image_path | append: "image12.png" }})

![]({{ image_path | append: "image13.png" }})inally, after reviews all details laid out, create the network by clicking on **Create**.

## Step 3: Create Router

As with networks, each project will have its own demands for how a network may be setup. When approaching several subnets, routers will inevitably be needed. This step will guide users through how they may create and delete routers for use on the subnets within their control.

To create a router, one can simply click on the **Create Router** button at the top of the Network Topology page.

![]({{ image_path | append: "image14.png" }})

**NOTE: An alternative to this is to use the Routers subsection.**

Once clicked, a quick dialog will be prompted to the user asking for the Router Name as the only required setup detail. In our example, we will use the name *TestRouter*. Click on **Create Router** to continue.

![]({{ image_path | append: "image16.png" }})

Upon creation, you will see that a new device, our router, is now present on the Network Topology screen.

Now, navigate to the **Routers** subsection. Here, you will see all the routers you've created so far along with brief details about them listed in the table. Find the router we created, *TestRouter*, and click the **Set Gateway** option to set the default gateway for the router.

![]({{ image_path | append: "image17.png" }})

A new dialog will appear that will ask specifics about the default gateway. In this setup, the default gateway is required to connect to an external network as the expected behavior of the router is to provide external capabilities to any of its attached network interfaces. This option is not required as many users will only need the interfaces to specify contact between specific subnets and will not need external connectivity. Use the **External Network** dropdown box to choose which external network you would like to default to. In our case, we will use the project's provided default external network, *ext-net*.

Once satisfied, click on **Set Gateway**.

![]({{ image_path | append: "image18.png" }})

![]({{ image_path | append: "image19.png" }})**Routers** screen, you will see updated information about our router including the name of the connected external network. To see more information, navigate back to the **Network Topology** view and you will see that the router is now being displayed as connected to the *ext-net* network since the router now acts as a gateway to it.

Returning to the **Routers** subsection, click the drop-down menu on the far right for our router, *TestRouter*. Select the **Edit Router** option so that we may attempt to modify the network state of the router. As shown in the dialog, we see a screen with the same options as we did upon router creation. Use this to edit the **Router Name** or **Admin State** of the router.

![]({{ image_path | append: "image20.png" }})

Next, click on the name of the router in the table, **TestRouter**.

![]({{ image_path | append: "image21.png" }})

Alternatively, you may also use the **Network Topology** view by highlighting the router and clicking on **View Router Details**.

![]({{ image_path | append: "image22.png" }})

From the Router Details page, find and click **Add Interface**.

![]({{ image_path | append: "image23.png" }})

![]({{ image_path | append: "image24.png" }})

For an even faster shortcut, one may click on **Add Interface** right away from the **Network Topology** view.

![]({{ image_path | append: "image25.png" }})

Here, a dialog will be presented with several fields to specify the interface. First is the subnet with which the router's network interface will be connected to. We will be using the default network and subnet provided, *sharednet1* and *sharednet1-subnet*. Choose the appropriate network in the **Subnet** field. Next, you may also assign a specific IP address using the **IP Address** field or leave it blank for it to be automatically assigned. The **Router Name** and **Router ID** fields should be automatically populated for you.

![]({{ image_path | append: "image26.png" }})

Once satisfied, confirm the creation of the interface by clicking on **Add Interface**.

![]({{ image_path | append: "image27.png" }})

With that, the interface should now be active and available for use. The interfaces should be used in order to interconnect subnets that might exist in two separate networks such that they may freely communicate by using the router as a gateway between the networks. While the routers do not demonstrate complete hardware router capabilities, their routing tools are more than enough so that the hosts on the network can cover any additional functionality that is desired.
