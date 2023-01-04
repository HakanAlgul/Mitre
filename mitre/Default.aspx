<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mitre._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8" />
        <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
        <link href="css/MidtermProject.css" rel="stylesheet" />
        <title></title>
    </head>
    <body>
        <div>
            <ul class="navbar">
                <li><a class="active" href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#tests">Security Tests</a></li>
                <li><a href="#details">Test Details</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="/HardwareTest" id="navHardware" runat="server" visible="false">Test Hardware</a></li>
                <li><a href="/CredentialsTest" id="navCredentials" runat="server" visible="false">Test Credentials</a></li>
                <li><a href="/History" id="navHistory" runat="server" visible="false">Test Histories</a></li>
                <li style="float: right;">
                    <asp:Button runat="server" ID="btnLogout" OnClick="btnLogout_Click" Text="Logout" BorderColor="#0099CC" BackColor="#00FFCC" Font-Size="X-Large" /></li>
                <li style="float: right; margin-right: 10px">
                    <asp:Button runat="server" ID="btnUser" OnClick="btnUser_Click" Text="Login" BackColor="#00FFCC" BorderColor="#0099CC" Font-Size="X-Large" /></li>
            </ul>
        </div>
        <section id="home">
            <div class="home image" style="background-image: url('https://i.picsum.photos/id/769/1600/600.jpg?hmac=iQHo83JtEsOswZ-3NCIDBZZmcjODII0OFBj3vAHokGc'); color: azure; border-radius: 15px; padding: 50px;">
                <h2>Cyber Securty</h2>
                <p>
                    Cyber ​​security; It is the practice of protecting computers, networks, software applications, critical systems, and data from potential digital threats. Organizations have a
                responsibility to secure data to maintain customer trust and meet regulatory compliance. They use cybersecurity measures and tools to protect sensitive data from unauthorized
                access as well as prevent disruption to business operations due to unwanted network activity. Organizations; They implement cybersecurity by streamlining the digital defense process between employees, processes and technologies.
                </p>
                <h2>Why is cyber security important?</h2>
                <p>
                    Businesses in industries as diverse as energy, transportation, retail and manufacturing use digital systems and high-speed connectivity to deliver effective customer
                service and run cost-effective business operations. Just as they protect their physical assets, they must secure their digital assets and protect their systems from unwanted access.
                A deliberate activity to breach and gain unauthorized access to a computer system, network, or connected facilities is called a cyberattack. A successful cyberattack results in the 
                disclosure, theft, deletion or alteration of confidential information. Cybersecurity measures defend against cyber attacks and offer the following benefits.
                </p>
            </div>

        </section>
        <section id="about">
            <div>
                <h1>About Us</h1>
                <p style="padding-top: 10px; font-size: 20px;">
                    Cyber Security Web TR ;
                It is an information portal created to contribute Turkish content to the Cyber Security World.
                It started broadcasting on July 20, 2019.
                It aims to present the most up-to-date and broadest content to its readers with news from the world of Cyber Security, interviews with the leading cybersecurity professionals of the world and our country, and how-to corners.
                “Today, the number and variety of devices connected to the network is increasing rapidly. Instead of networks consisting of only a few computers, printers and servers until yesterday, we started to encounter network structures
                where everything from the combi boiler to the coffee machine, from the car to the shoes is connected to the network, with the concept of the Internet of Things (IoT).
                With the increase in the number and variety of devices connected to the network, ensuring the security of these devices has become the most important issue. Everyone, from individuals to institutions, has to ensure the security 
                of their computing devices. When this is not done, many losses are experienced, from money to time, from reputation to various resources. Mobile phones in our hands can turn into a tool of victimization if not used consciously.
                When institutions fail to protect their data, they may face large fines according to current laws.
                We call cyber security the process of taking the necessary precautions, from protecting our computing devices to protecting our data. Cyber security is one of the most important issues that should be given importance by everyone, 
                from individuals to institutions and from states to governments. “
                Cyber Security for All Book Foreword 
                </p>
            </div>
        </section>
        <section id="tests">

            <div class="firstTest">
                <img src="img/wire.PNG" style="width: 100%">
                <h1>Hardware Additions</h1>
                <p style="padding: 20px">
                    Adversaries may introduce computer accessories, networking hardware, or other computing devices into a system or network that can be used as a
                vector to gain access. Rather than just connecting and distributing payloads via removable storage (i.e. Replication Through Removable Media),
                more robust hardware additions can be used to introduce new functionalities and/or features into a system that can then be abused..
                </p>
                <p style="padding: 30px;"><a href="#details">For more information...</a></p>
            </div>
            <div class="firstTest">
                <img src="img/keys.PNG" style="width: 100%">
                <h1 style="padding-top: 20px;">Credentials from Password Stores</h1>
                <p style="padding: 40px">
                    Adversaries may search for common password storage locations to obtain user credentials.
                Passwords are stored in several places on a system, depending on the operating system or
                application holding the credentials. There are also specific applications that store passwords
                to make it easier for users manage and maintain. Once credentials are obtained, they can
                be used to perform lateral movement and access restricted information.
                </p>
                <p style="padding: 30px;"><a href="#details">For more information...</a></p>
            </div>

        </section>
        <section id="details">
            <div class="container">
                <div>
                    <h1>Hardware Additions</h1>
                    <p>
                        Adversaries may introduce computer accessories, networking hardware, or other computing devices into a
                    system or network that can be used as a vector to gain access. Rather than just connecting and
                    distributing payloads via removable storage (i.e. Replication Through Removable Media), more
                    robust hardware additions can be used to introduce new functionalities and/or features into a
                    system that can then be abused.
                    While public references of usage by threat actors are scarce,
                    many red teams/penetration testers leverage hardware additions for
                    initial access. Commercial and open source products can be leveraged with capabilities such as passive network tapping,
                    network traffic modification (i.e. Adversary-in-the-Middle), keystroke injection, kernel memory reading via DMA,
                    addition of new wireless access to an existing network, and others.
                    </p>
                    <h2>Procedure Examples</h2>
                    <p>DarkVishnya used Bash Bunny, Raspberry Pi, netbooks or inexpensive laptops to connect to the company’s local network</p>
                    <h2>Mitigations</h2>
                    <p>
                        Establish network access control policies, such as using device certificates and the 802.1x standard. 
                Restrict use of DHCP to registered devices to prevent unregistered devices from communicating with trusted systems.
                    </p>
                    <h2>Detection</h2>
                    <p>
                        Configuration management databases (CMDB) and other asset management systems may help with the detection of computer
                    systems or network devices that should not exist on a network
                    Monitor for newly constructed drives or other related events associated with computer hardware and other accessories
                    (especially new or unknown) being connected to systems. Endpoint sensors may be able to detect the addition of hardware via USB,
                    Thunderbolt, and other external device communication ports.
                    Monitor for network traffic originating from unknown/unexpected hardware devices. Local network traffic metadata
                    (such as source MAC addressing) as well as usage of network management protocols such as DHCP may be helpful in identifying hardware.
                        <br />
                        <a href="https://attack.mitre.org/techniques/T1200/">For more information...</a>
                    </p>


                </div>
                <div>

                    <h1>Credentials from Password Stores</h1>
                    <p>
                        Adversaries may search for common password storage locations to obtain user credentials.
                    Passwords are stored in several places on a system, depending on the operating system or
                    application holding the credentials. There are also specific applications that store passwords
                    to make it easier for users manage and maintain. Once credentials are obtained, they can be used
                    to perform lateral movement and access restricted information.
                    Mimikatz performs credential dumping to obtain account and password information useful in gaining 
                    access to additional systems and enterprise network resources. It contains functionality to acquire 
                    information about credentials in many ways, including from the credential vault and DPAPI
                    </p>
                    <h2>Procedure Examples</h2>
                    <p>
                        PinchDuke steals credentials from compromised hosts. PinchDuke's credential stealing functionality 
                is believed to be based on the source code of the Pinch credential stealing malware (also known as LdPinch).
                Credentials targeted by PinchDuke include ones associated with many sources such as The Bat!, Yahoo!, Mail.ru, 
                Passport.Net, Google Talk, and Microsoft Outlook
                    </p>
                    <h2>Mitigations</h2>
                    <p>
                        The password for the user's login keychain can be changed from the user's login password. This increases the 
                    complexity for an adversary because they need to know an additional password.

                    Organizations may consider weighing the risk of storing credentials in password stores and web browsers. If system, s
                    oftware, or web browser credential disclosure is a significant concern, technical controls, policy, and user training may be
                    used to prevent storage of credentials in improper locations.
                    </p>
                    <h2>Detection</h2>
                    <p>
                        Monitor newly executed processes that may search for common password storage locations to obtain user credentials.
                    Monitor for processes being accessed that may search for common password storage locations to obtain user credentials.
                    Monitor for API calls that may search for common password storage locations to obtain user credentials.
                    Monitor for files being accessed that may search for common password storage locations to obtain user credentials.
                    Monitor executed commands and arguments that may search for common password storage locations to obtain user credentials.
                    <br />
                        <a href="https://attack.mitre.org/techniques/T1555/">For more information...</a>
                    </p>
                </div>
            </div>
        </section>

        <section id="contact">
            <div>
                <div>
                    <!--<iframe src="https://www.google.com/maps/d/edit?mid=1Fd1kdOCdTYfZT3b0WZ49lby6tqIbNwI&usp=sharing!3m2!1sen!2suk!4v1605889608028!5m2!1sen!2suk" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>-->
                    <iframe src="https://www.google.com/maps/d/embed?mid=1Fd1kdOCdTYfZT3b0WZ49lby6tqIbNwI&ehbc=2E312F" width="640" height="480" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div style="display: flex; flex-direction: column; font-size: 20px; margin: 50px; background-color: black; color: white;">

                    <h3 style="color: brown;">Our Contact Details</h3>
                    <br />
                    <h2>Head Office</h2>
                    <br />
                    <p>Şube 1: Sultanbeyli/İstanbul</p>
                    <br />
                    <p>Şube 2: Kadıköy/İstanbul</p>
                    <br />
                    <p>Şube 3: Ataşehir/İstanbul</p>
                    <br />
                    <p>Tel : 0(216)488 28 38
                        <br />
                        fax:  0(216)488 28 39 </p>
                    <span>hakanalgul730@gmail.com</span>
                    <span>brkekinci1999@gmail.com</span>
                </div>
            </div>
        </section>
        <div class="footer">

            <p><a style="text-decoration: none; color: aliceblue;" href="#home">Cyber Security Tests</a>
                <img src="img/Cyber.PNG" alt="cyber security" height="40px" /></p>
        </div>


    </body>
    </html>





</asp:Content>
