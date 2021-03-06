
Name        : AJRouter
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Routes AllJoyn messages for the local AllJoyn clients. If this service is stopped the AllJoyn clients that do not have their own bundled routers will be unable to run.
DisplayName : AllJoyn Router Service

Name        : ALG
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Provides support for 3rd party protocol plug-ins for Internet Connection Sharing
DisplayName : Application Layer Gateway Service

Name        : AppIDSvc
StartName   : NT Authority\LocalService
StartMode   : Manual
Description : Determines and verifies the identity of an application. Disabling this service will prevent AppLocker from being enforced.
DisplayName : Application Identity

Name        : Appinfo
StartName   : LocalSystem
StartMode   : Manual
Description : Facilitates the running of interactive applications with additional administrative privileges.  If this service is stopped, users will be unable to launch applications with the additional administrative privileges they may require to perform desired user tasks.
DisplayName : Application Information

Name        : AppMgmt
StartName   : LocalSystem
StartMode   : Manual
Description : Processes installation, removal, and enumeration requests for software deployed through Group Policy. If the service is disabled, users will be unable to install, remove, or enumerate software deployed through Group Policy. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Application Management

Name        : AppReadiness
StartName   : LocalSystem
StartMode   : Manual
Description : Gets apps ready for use the first time a user signs in to this PC and when adding new apps.
DisplayName : App Readiness

Name        : AppVClient
StartName   : LocalSystem
StartMode   : Disabled
Description : Manages App-V users and virtual applications
DisplayName : Microsoft App-V Client

Name        : AppXSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Provides infrastructure support for deploying Store applications. This service is started on demand and if disabled Store applications will not be deployed to the system, and may not function properly.
DisplayName : AppX Deployment Service (AppXSVC)

Name        : AudioEndpointBuilder
StartName   : LocalSystem
StartMode   : Manual
Description : Manages audio devices for the Windows Audio service.  If this service is stopped, audio devices and effects will not function properly.  If this service is disabled, any services that explicitly depend on it will fail to start
DisplayName : Windows Audio Endpoint Builder

Name        : Audiosrv
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Manages audio for Windows-based programs.  If this service is stopped, audio devices and effects will not function properly.  If this service is disabled, any services that explicitly depend on it will fail to start
DisplayName : Windows Audio

Name        : AxInstSV
StartName   : LocalSystem
StartMode   : Manual
Description : Provides User Account Control validation for the installation of ActiveX controls from the Internet and enables management of ActiveX control installation based on Group Policy settings. This service is started on demand and if disabled the installation of ActiveX controls will behave according to default browser settings.
DisplayName : ActiveX Installer (AxInstSV)

Name        : BFE
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : The Base Filtering Engine (BFE) is a service that manages firewall and Internet Protocol security (IPsec) policies and implements user mode filtering. Stopping or disabling the BFE service will significantly reduce the security of the system. It will also result in unpredictable behavior in IPsec management and firewall applications.
DisplayName : Base Filtering Engine

Name        : BITS
StartName   : LocalSystem
StartMode   : Manual
Description : Transfers files in the background using idle network bandwidth. If the service is disabled, then any applications that depend on BITS, such as Windows Update or MSN Explorer, will be unable to automatically download programs and other information.
DisplayName : Background Intelligent Transfer Service

Name        : BrokerInfrastructure
StartName   : LocalSystem
StartMode   : Auto
Description : Windows infrastructure service that controls which background tasks can run on the system.
DisplayName : Background Tasks Infrastructure Service

Name        : Browser
StartName   : LocalSystem
StartMode   : Disabled
Description : Maintains an updated list of computers on the network and supplies this list to computers designated as browsers. If this service is stopped, this list will not be updated or maintained. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Computer Browser

Name        : bthserv
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : The Bluetooth service supports discovery and association of remote Bluetooth devices. Stopping or disabling this service may cause already installed Bluetooth devices to fail to operate properly and prevent new devices from being discovered or associated.
DisplayName : Bluetooth Support Service

Name        : CDPSvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : This service is used for Connected Devices and Universal Glass scenarios
DisplayName : Connected Devices Platform Service

Name        : CertPropSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Copies user certificates and root certificates from smart cards into the current user's certificate store, detects when a smart card is inserted into a smart card reader, and, if needed, installs the smart card Plug and Play minidriver.
DisplayName : Certificate Propagation

Name        : ClipSVC
StartName   : LocalSystem
StartMode   : Manual
Description : Provides infrastructure support for the Microsoft Store. This service is started on demand and if disabled applications bought using Windows Store will not behave correctly.
DisplayName : Client License Service (ClipSVC)

Name        : COMSysApp
StartName   : LocalSystem
StartMode   : Manual
Description : Manages the configuration and tracking of Component Object Model (COM)+-based components. If the service is stopped, most COM+-based components will not function properly. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : COM+ System Application

Name        : CoreMessagingRegistrar
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : Manages communication between system components.
DisplayName : CoreMessaging

Name        : CryptSvc
StartName   : NT Authority\NetworkService
StartMode   : Auto
Description : Provides three management services: Catalog Database Service, which confirms the signatures of Windows files and allows new programs to be installed; Protected Root Service, which adds and removes Trusted Root Certification Authority certificates from this computer; and Automatic Root Certificate Update Service, which retrieves root certificates from Windows Update and enable scenarios such as SSL. If this service is stopped, these management services will not function properly. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Cryptographic Services

Name        : CscService
StartName   : LocalSystem
StartMode   : Disabled
Description : The Offline Files service performs maintenance activities on the Offline Files cache, responds to user logon and logoff events, implements the internals of the public API, and dispatches interesting events to those interested in Offline Files activities and changes in cache state.
DisplayName : Offline Files

Name        : DcomLaunch
StartName   : LocalSystem
StartMode   : Auto
Description : The DCOMLAUNCH service launches COM and DCOM servers in response to object activation requests. If this service is stopped or disabled, programs using COM or DCOM will not function properly. It is strongly recommended that you have the DCOMLAUNCH service running.
DisplayName : DCOM Server Process Launcher

Name        : DcpSvc
StartName   : LocalSystem
StartMode   : Manual
Description : The DCP (Data Collection and Publishing) service supports first party apps to upload data to cloud.
DisplayName : DataCollectionPublishingService

Name        : defragsvc
StartName   : localSystem
StartMode   : Manual
Description : Helps the computer run more efficiently by optimizing files on storage drives.
DisplayName : Optimize drives

Name        : DeviceAssociationService
StartName   : LocalSystem
StartMode   : Manual
Description : Enables pairing between the system and wired or wireless devices.
DisplayName : Device Association Service

Name        : DeviceInstall
StartName   : LocalSystem
StartMode   : Manual
Description : Enables a computer to recognize and adapt to hardware changes with little or no user input. Stopping or disabling this service will result in system instability.
DisplayName : Device Install Service

Name        : DevQueryBroker
StartName   : LocalSystem
StartMode   : Manual
Description : Enables apps to discover devices with a backgroud task
DisplayName : DevQuery Background Discovery Broker

Name        : Dhcp
StartName   : NT Authority\LocalService
StartMode   : Auto
Description : Registers and updates IP addresses and DNS records for this computer. If this service is stopped, this computer will not receive dynamic IP addresses and DNS updates. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : DHCP Client

Name        : diagnosticshub.standardcollector.service
StartName   : LocalSystem
StartMode   : Manual
Description : Diagnostics Hub Standard Collector Service. When running, this service collects real time ETW events and processes them.
DisplayName : Microsoft (R) Diagnostics Hub Standard Collector Service

Name        : DiagTrack
StartName   : LocalSystem
StartMode   : Auto
Description : The Connected User Experiences and Telemetry service enables features that support in-application and connected user experiences. Additionally, this service manages the event driven collection and transmission of diagnostic and usage information (used to improve the experience and quality of the Windows Platform) when the diagnostics and usage privacy option settings are enabled under Feedback and Diagnostics.
DisplayName : Connected User Experiences and Telemetry

Name        : DmEnrollmentSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Performs Device Enrollment Activities for Device Management
DisplayName : Device Management Enrollment Service

Name        : dmwappushservice
StartName   : LocalSystem
StartMode   : Manual
Description : WAP Push Message Routing Service
DisplayName : dmwappushsvc

Name        : Dnscache
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : The DNS Client service (dnscache) caches Domain Name System (DNS) names and registers the full computer name for this computer. If the service is stopped, DNS names will continue to be resolved. However, the results of DNS name queries will not be cached and the computer's name will not be registered. If the service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : DNS Client

Name        : dot3svc
StartName   : localSystem
StartMode   : Manual
Description : The Wired AutoConfig (DOT3SVC) service is responsible for performing IEEE 802.1X authentication on Ethernet interfaces. If your current wired network deployment enforces 802.1X authentication, the DOT3SVC service should be configured to run for establishing Layer 2 connectivity and/or providing access to network resources. Wired networks that do not enforce 802.1X authentication are unaffected by the DOT3SVC service.
DisplayName : Wired AutoConfig

Name        : DPS
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : The Diagnostic Policy Service enables problem detection, troubleshooting and resolution for Windows components.  If this service is stopped, diagnostics will no longer function.
DisplayName : Diagnostic Policy Service

Name        : DsmSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Enables the detection, download and installation of device-related software. If this service is disabled, devices may be configured with outdated software, and may not work correctly.
DisplayName : Device Setup Manager

Name        : DsSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Provides data brokering between applications.
DisplayName : Data Sharing Service

Name        : Eaphost
StartName   : localSystem
StartMode   : Manual
Description : The Extensible Authentication Protocol (EAP) service provides network authentication in such scenarios as 802.1x wired and wireless, VPN, and Network Access Protection (NAP).  EAP also provides application programming interfaces (APIs) that are used by network access clients, including wireless and VPN clients, during the authentication process.  If you disable this service, this computer is prevented from accessing networks that require EAP authentication.
DisplayName : Extensible Authentication Protocol

Name        : EFS
StartName   : LocalSystem
StartMode   : Manual
Description : Provides the core file encryption technology used to store encrypted files on NTFS file system volumes. If this service is stopped or disabled, applications will be unable to access encrypted files.
DisplayName : Encrypting File System (EFS)

Name        : embeddedmode
StartName   : LocalSystem
StartMode   : Manual
Description : The Embedded Mode service enables scenarios related to Background Applications. Disabling this service will prevent Background Applications from being activated.
DisplayName : Embedded Mode

Name        : EntAppSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Enables enterprise application management.
DisplayName : Enterprise App Management Service

Name        : EventLog
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : This service manages events and event logs. It supports logging events, querying events, subscribing to events, archiving event logs, and managing event metadata. It can display events in both XML and plain text format. Stopping this service may compromise security and reliability of the system.
DisplayName : Windows Event Log

Name        : EventSystem
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : Supports System Event Notification Service (SENS), which provides automatic distribution of events to subscribing Component Object Model (COM) components. If the service is stopped, SENS will close and will not be able to provide logon and logoff notifications. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : COM+ Event System

Name        : fdPHost
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : The FDPHOST service hosts the Function Discovery (FD) network discovery providers. These FD providers supply network discovery services for the Simple Services Discovery Protocol (SSDP) and Web Services – Discovery (WS-D) protocol. Stopping or disabling the FDPHOST service will disable network discovery for these protocols when using FD. When this service is unavailable, network services using FD and relying on these discovery protocols will be unable to find network devices or resources.
DisplayName : Function Discovery Provider Host

Name        : FDResPub
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Publishes this computer and resources attached to this computer so they can be discovered over the network.  If this service is stopped, network resources will no longer be published and they will not be discovered by other computers on the network.
DisplayName : Function Discovery Resource Publication

Name        : FontCache
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : Optimizes performance of applications by caching commonly used font data. Applications will start this service if it is not already running. It can be disabled, though doing so will degrade application performance.
DisplayName : Windows Font Cache Service

Name        : FrameServer
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Enables multiple clients to access video frames from camera devices.
DisplayName : Windows Camera Frame Server

Name        : gpsvc
StartName   : LocalSystem
StartMode   : Auto
Description : The service is responsible for applying settings configured by administrators for the computer and users through the Group Policy component. If the service is disabled, the settings will not be applied and applications and components will not be manageable through Group Policy. Any components or applications that depend on the Group Policy component might not be functional if the service is disabled.
DisplayName : Group Policy Client

Name        : hidserv
StartName   : LocalSystem
StartMode   : Manual
Description : Activates and maintains the use of hot buttons on keyboards, remote controls, and other multimedia devices. It is recommended that you keep this service running.
DisplayName : Human Interface Device Service

Name        : HvHost
StartName   : LocalSystem
StartMode   : Manual
Description : Provides an interface for the Hyper-V hypervisor to provide per-partition performance counters to the host operating system.
DisplayName : HV Host Service

Name        : icssvc
StartName   : NT Authority\LocalService
StartMode   : Manual
Description : Provides the ability to share a cellular data connection with another device.
DisplayName : Windows Mobile Hotspot Service

Name        : IKEEXT
StartName   : LocalSystem
StartMode   : Manual
Description : The IKEEXT service hosts the Internet Key Exchange (IKE) and Authenticated Internet Protocol (AuthIP) keying modules. These keying modules are used for authentication and key exchange in Internet Protocol security (IPsec). Stopping or disabling the IKEEXT service will disable IKE and AuthIP key exchange with peer computers. IPsec is typically configured to use IKE or AuthIP; therefore, stopping or disabling the IKEEXT service might result in an IPsec failure and might compromise the security of the system. It is strongly recommended that you have the IKEEXT service running.
DisplayName : IKE and AuthIP IPsec Keying Modules

Name        : iphlpsvc
StartName   : LocalSystem
StartMode   : Auto
Description : Provides tunnel connectivity using IPv6 transition technologies (6to4, ISATAP, Port Proxy, and Teredo), and IP-HTTPS. If this service is stopped, the computer will not have the enhanced connectivity benefits that these technologies offer.
DisplayName : IP Helper

Name        : KeyIso
StartName   : LocalSystem
StartMode   : Manual
Description : The CNG key isolation service is hosted in the LSA process. The service provides key process isolation to private keys and associated cryptographic operations as required by the Common Criteria. The service stores and uses long-lived keys in a secure process complying with Common Criteria requirements.
DisplayName : CNG Key Isolation

Name        : KPSSVC
StartName   : NT AUTHORITY\NetworkService
StartMode   : Manual
Description : KDC Proxy Server service runs on edge servers to proxy Kerberos protocol messages to domain controllers on the corporate network.
DisplayName : KDC Proxy Server service (KPS)

Name        : KtmRm
StartName   : NT AUTHORITY\NetworkService
StartMode   : Manual
Description : Coordinates transactions between the Distributed Transaction Coordinator (MSDTC) and the Kernel Transaction Manager (KTM). If it is not needed, it is recommended that this service remain stopped. If it is needed, both MSDTC and KTM will start this service automatically. If this service is disabled, any MSDTC transaction interacting with a Kernel Resource Manager will fail and any services that explicitly depend on it will fail to start.
DisplayName : KtmRm for Distributed Transaction Coordinator

Name        : LanmanServer
StartName   : LocalSystem
StartMode   : Auto
Description : Supports file, print, and named-pipe sharing over the network for this computer. If this service is stopped, these functions will be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Server

Name        : LanmanWorkstation
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : Creates and maintains client network connections to remote servers using the SMB protocol. If this service is stopped, these connections will be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Workstation

Name        : lfsvc
StartName   : LocalSystem
StartMode   : Manual
Description : This service monitors the current location of the system and manages geofences (a geographical location with associated events).  If you turn off this service, applications will be unable to use or receive notifications for geolocation or geofences.
DisplayName : Geolocation Service

Name        : LicenseManager
StartName   : NT Authority\LocalService
StartMode   : Manual
Description : Provides infrastructure support for the Windows Store.  This service is started on demand and if disabled then content acquired through the Windows Store will not function properly.
DisplayName : Windows License Manager Service

Name        : lltdsvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Creates a Network Map, consisting of PC and device topology (connectivity) information, and metadata describing each PC and device.  If this service is disabled, the Network Map will not function properly.
DisplayName : Link-Layer Topology Discovery Mapper

Name        : lmhosts
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Provides support for the NetBIOS over TCP/IP (NetBT) service and NetBIOS name resolution for clients on the network, therefore enabling users to share files, print, and log on to the network. If this service is stopped, these functions might be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : TCP/IP NetBIOS Helper

Name        : LSM
StartName   : LocalSystem
StartMode   : Auto
Description : Core Windows Service that manages local user sessions. Stopping or disabling this service will result in system instability.
DisplayName : Local Session Manager

Name        : MapsBroker
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : Windows service for application access to downloaded maps. This service is started on-demand by application accessing downloaded maps. Disabling this service will prevent apps from accessing maps.
DisplayName : Downloaded Maps Manager

Name        : MpsSvc
StartName   : NT Authority\LocalService
StartMode   : Auto
Description : Windows Firewall helps protect your computer by preventing unauthorized users from gaining access to your computer through the Internet or a network.
DisplayName : Windows Firewall

Name        : MSDTC
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : Coordinates transactions that span multiple resource managers, such as databases, message queues, and file systems. If this service is stopped, these transactions will fail. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Distributed Transaction Coordinator

Name        : MSiSCSI
StartName   : LocalSystem
StartMode   : Manual
Description : Manages Internet SCSI (iSCSI) sessions from this computer to remote iSCSI target devices. If this service is stopped, this computer will not be able to login or access iSCSI targets. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Microsoft iSCSI Initiator Service

Name        : msiserver
StartName   : LocalSystem
StartMode   : Manual
Description : Adds, modifies, and removes applications provided as a Windows Installer (*.msi, *.msp) package. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Windows Installer

Name        : NcaSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Provides DirectAccess status notification for UI components
DisplayName : Network Connectivity Assistant

Name        : NcbService
StartName   : LocalSystem
StartMode   : Manual
Description : Brokers connections that allow Windows Store Apps to receive notifications from the internet.
DisplayName : Network Connection Broker

Name        : Netlogon
StartName   : LocalSystem
StartMode   : Manual
Description : Maintains a secure channel between this computer and the domain controller for authenticating users and services. If this service is stopped, the computer may not authenticate users and services and the domain controller cannot register DNS records. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Netlogon

Name        : Netman
StartName   : LocalSystem
StartMode   : Manual
Description : Manages objects in the Network and Dial-Up Connections folder, in which you can view both local area network and remote connections.
DisplayName : Network Connections

Name        : netprofm
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Identifies the networks to which the computer has connected, collects and stores properties for these networks, and notifies applications when these properties change.
DisplayName : Network List Service

Name        : NetSetupSvc
StartName   : LocalSystem
StartMode   : Manual
Description : The Network Setup Service manages the installation of network drivers and permits the configuration of low-level network settings.  If this service is stopped, any driver installations that are in-progress may be cancelled.
DisplayName : Network Setup Service

Name        : NetTcpPortSharing
StartName   : NT AUTHORITY\LocalService
StartMode   : Disabled
Description : Provides ability to share TCP ports over the net.tcp protocol.
DisplayName : Net.Tcp Port Sharing Service

Name        : NgcCtnrSvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Manages local user identity keys used to authenticate user to identity providers as well as TPM virtual smart cards. If this service is disabled, local user identity keys and TPM virtual smart cards will not be accessible. It is recommended that you do not reconfigure this service.
DisplayName : Microsoft Passport Container

Name        : NgcSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Provides process isolation for cryptographic keys used to authenticate to a user’s associated identity providers. If this service is disabled, all uses and management of these keys will not be available, which includes machine logon and single-sign on for apps and websites. This service starts and stops automatically. It is recommended that you do not reconfigure this service.
DisplayName : Microsoft Passport

Name        : NlaSvc
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : Collects and stores configuration information for the network and notifies programs when this information is modified. If this service is stopped, configuration information might be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Network Location Awareness

Name        : nsi
StartName   : NT Authority\LocalService
StartMode   : Auto
Description : This service delivers network notifications (e.g. interface addition/deleting etc) to user mode clients. Stopping this service will cause loss of network connectivity. If this service is disabled, any other services that explicitly depend on this service will fail to start.
DisplayName : Network Store Interface Service

Name        : PcaSvc
StartName   : LocalSystem
StartMode   : Auto
Description : This service provides support for the Program Compatibility Assistant (PCA).  PCA monitors programs installed and run by the user and detects known compatibility problems. If this service is stopped, PCA will not function properly.
DisplayName : Program Compatibility Assistant Service

Name        : PerfHost
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Enables remote users and 64-bit processes to query performance counters provided by 32-bit DLLs. If this service is stopped, only local users and 32-bit processes will be able to query performance counters provided by 32-bit DLLs.
DisplayName : Performance Counter DLL Host

Name        : PhoneSvc
StartName   : NT Authority\LocalService
StartMode   : Manual
Description : Manages the telephony state on the device
DisplayName : Phone Service

Name        : pla
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Performance Logs and Alerts Collects performance data from local or remote computers based on preconfigured schedule parameters, then writes the data to a log or triggers an alert. If this service is stopped, performance information will not be collected. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Performance Logs & Alerts

Name        : PlugPlay
StartName   : LocalSystem
StartMode   : Manual
Description : Enables a computer to recognize and adapt to hardware changes with little or no user input. Stopping or disabling this service will result in system instability.
DisplayName : Plug and Play

Name        : PolicyAgent
StartName   : NT Authority\NetworkService
StartMode   : Manual
Description : Internet Protocol security (IPsec) supports network-level peer authentication, data origin authentication, data integrity, data confidentiality (encryption), and replay protection.  This service enforces IPsec policies created through the IP Security Policies snap-in or the command-line tool "netsh ipsec".  If you stop this service, you may experience network connectivity issues if your policy requires that connections use IPsec.  Also,remote management of Windows Firewall is not available when this service is stopped.
DisplayName : IPsec Policy Agent

Name        : Power
StartName   : LocalSystem
StartMode   : Auto
Description : Manages power policy and power policy notification delivery.
DisplayName : Power

Name        : PrintNotify
StartName   : LocalSystem
StartMode   : Manual
Description : This service opens custom printer dialog boxes and handles notifications from a remote print server or a printer. If you turn off this service, you won’t be able to see printer extensions or notifications.
DisplayName : Printer Extensions and Notifications

Name        : ProfSvc
StartName   : LocalSystem
StartMode   : Auto
Description : This service is responsible for loading and unloading user profiles. If this service is stopped or disabled, users will no longer be able to successfully sign in or sign out, apps might have problems getting to users' data, and components registered to receive profile event notifications won't receive them.
DisplayName : User Profile Service

Name        : QWAVE
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Quality Windows Audio Video Experience (qWave) is a networking platform for Audio Video (AV) streaming applications on IP home networks. qWave enhances AV streaming performance and reliability by ensuring network quality-of-service (QoS) for AV applications. It provides mechanisms for admission control, run time monitoring and enforcement, application feedback, and traffic prioritization.
DisplayName : Quality Windows Audio Video Experience

Name        : RasAuto
StartName   : localSystem
StartMode   : Manual
Description : Creates a connection to a remote network whenever a program references a remote DNS or NetBIOS name or address.
DisplayName : Remote Access Auto Connection Manager

Name        : RasMan
StartName   : localSystem
StartMode   : Manual
Description : Manages dial-up and virtual private network (VPN) connections from this computer to the Internet or other remote networks. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Remote Access Connection Manager

Name        : RemoteAccess
StartName   : localSystem
StartMode   : Disabled
Description : Offers routing services to businesses in local area and wide area network environments.
DisplayName : Routing and Remote Access

Name        : RemoteRegistry
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : Enables remote users to modify registry settings on this computer. If this service is stopped, the registry can be modified only by users on this computer. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Remote Registry

Name        : RmSvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Radio Management and Airplane Mode Service
DisplayName : Radio Management Service

Name        : RpcEptMapper
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : Resolves RPC interfaces identifiers to transport endpoints. If this service is stopped or disabled, programs using Remote Procedure Call (RPC) services will not function properly.
DisplayName : RPC Endpoint Mapper

Name        : RpcLocator
StartName   : NT AUTHORITY\NetworkService
StartMode   : Manual
Description : In Windows 2003 and earlier versions of Windows, the Remote Procedure Call (RPC) Locator service manages the RPC name service database. In Windows Vista and later versions of Windows, this service does not provide any functionality and is present for application compatibility.
DisplayName : Remote Procedure Call (RPC) Locator

Name        : RpcSs
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : The RPCSS service is the Service Control Manager for COM and DCOM servers. It performs object activations requests, object exporter resolutions and distributed garbage collection for COM and DCOM servers. If this service is stopped or disabled, programs using COM or DCOM will not function properly. It is strongly recommended that you have the RPCSS service running.
DisplayName : Remote Procedure Call (RPC)

Name        : RSoPProv
StartName   : LocalSystem
StartMode   : Manual
Description : Provides a network service that processes requests to simulate application of Group Policy settings for a target user or computer in various situations and computes the Resultant Set of Policy settings.
DisplayName : Resultant Set of Policy Provider

Name        : sacsvr
StartName   : LocalSystem
StartMode   : Manual
Description : Allows administrators to remotely access a command prompt using Emergency Management Services.
DisplayName : Special Administration Console Helper

Name        : SamSs
StartName   : LocalSystem
StartMode   : Auto
Description : The startup of this service signals other services that the Security Accounts Manager (SAM) is ready to accept requests.  Disabling this service will prevent other services in the system from being notified when the SAM is ready, which may in turn cause those services to fail to start correctly. This service should not be disabled.
DisplayName : Security Accounts Manager

Name        : SCardSvr
StartName   : NT AUTHORITY\LocalService
StartMode   : Disabled
Description : Manages access to smart cards read by this computer. If this service is stopped, this computer will be unable to read smart cards. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Smart Card

Name        : ScDeviceEnum
StartName   : LocalSystem
StartMode   : Manual
Description : Creates software device nodes for all smart card readers accessible to a given session. If this service is disabled, WinRT APIs will not be able to enumerate smart card readers.
DisplayName : Smart Card Device Enumeration Service

Name        : Schedule
StartName   : LocalSystem
StartMode   : Auto
Description : Enables a user to configure and schedule automated tasks on this computer. The service also hosts multiple Windows system-critical tasks. If this service is stopped or disabled, these tasks will not be run at their scheduled times. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Task Scheduler

Name        : SCPolicySvc
StartName   : LocalSystem
StartMode   : Manual
Description : Allows the system to be configured to lock the user desktop upon smart card removal.
DisplayName : Smart Card Removal Policy

Name        : seclogon
StartName   : LocalSystem
StartMode   : Manual
Description : Enables starting processes under alternate credentials. If this service is stopped, this type of logon access will be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Secondary Logon

Name        : SENS
StartName   : LocalSystem
StartMode   : Auto
Description : Monitors system events and notifies subscribers to COM+ Event System of these events.
DisplayName : System Event Notification Service

Name        : SensorDataService
StartName   : LocalSystem
StartMode   : Manual
Description : Delivers data from a variety of sensors
DisplayName : Sensor Data Service

Name        : SensorService
StartName   : LocalSystem
StartMode   : Manual
Description : A service for sensors that manages different sensors' functionality. Manages Simple Device Orientation (SDO) and History for sensors. Loads the SDO sensor that reports device orientation changes.  If this service is stopped or disabled, the SDO sensor will not be loaded and so auto-rotation will not occur. History collection from Sensors will also be stopped.
DisplayName : Sensor Service

Name        : SensrSvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Monitors various sensors in order to expose data and adapt to system and user state.  If this service is stopped or disabled, the display brightness will not adapt to lighting conditions. Stopping this service may affect other system functionality and features as well.
DisplayName : Sensor Monitoring Service

Name        : SessionEnv
StartName   : localSystem
StartMode   : Manual
Description : Remote Desktop Configuration service (RDCS) is responsible for all Remote Desktop Services and Remote Desktop related configuration and session maintenance activities that require SYSTEM context. These include per-session temporary folders, RD themes, and RD certificates.
DisplayName : Remote Desktop Configuration

Name        : SharedAccess
StartName   : LocalSystem
StartMode   : Manual
Description : Provides network address translation, addressing, name resolution and/or intrusion prevention services for a home or small office network.
DisplayName : Internet Connection Sharing (ICS)

Name        : ShellHWDetection
StartName   : LocalSystem
StartMode   : Auto
Description : Provides notifications for AutoPlay hardware events.
DisplayName : Shell Hardware Detection

Name        : smphost
StartName   : NT AUTHORITY\NetworkService
StartMode   : Manual
Description : Host service for the Microsoft Storage Spaces management provider. If this service is stopped or disabled, Storage Spaces cannot be managed.
DisplayName : Microsoft Storage Spaces SMP

Name        : SNMPTRAP
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Receives trap messages generated by local or remote Simple Network Management Protocol (SNMP) agents and forwards the messages to SNMP management programs running on this computer. If this service is stopped, SNMP-based programs on this computer will not receive SNMP trap messages. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : SNMP Trap

Name        : Spooler
StartName   : LocalSystem
StartMode   : Auto
Description : This service spools print jobs and handles interaction with the printer.  If you turn off this service, you won’t be able to print or see your printers.
DisplayName : Print Spooler

Name        : sppsvc
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : Enables the download, installation and enforcement of digital licenses for Windows and Windows applications. If the service is disabled, the operating system and licensed applications may run in a notification mode. It is strongly recommended that you not disable the Software Protection service.
DisplayName : Software Protection

Name        : SSDPSRV
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Discovers networked devices and services that use the SSDP discovery protocol, such as UPnP devices. Also announces SSDP devices and services running on the local computer. If this service is stopped, SSDP-based devices will not be discovered. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : SSDP Discovery

Name        : SstpSvc
StartName   : NT Authority\LocalService
StartMode   : Manual
Description : Provides support for the Secure Socket Tunneling Protocol (SSTP) to connect to remote computers using VPN. If this service is disabled, users will not be able to use SSTP to access remote servers.
DisplayName : Secure Socket Tunneling Protocol Service

Name        : StateRepository
StartName   : LocalSystem
StartMode   : Manual
Description : Provides required infrastructure support for the application model.
DisplayName : State Repository Service

Name        : stisvc
StartName   : NT Authority\LocalService
StartMode   : Manual
Description : Provides image acquisition services for scanners and cameras
DisplayName : Windows Image Acquisition (WIA)

Name        : StorSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Provides enabling services for storage settings and external storage expansion
DisplayName : Storage Service

Name        : svsvc
StartName   : LocalSystem
StartMode   : Manual
Description : Verifies potential file system corruptions.
DisplayName : Spot Verifier

Name        : swprv
StartName   : LocalSystem
StartMode   : Manual
Description : Manages software-based volume shadow copies taken by the Volume Shadow Copy service. If this service is stopped, software-based volume shadow copies cannot be managed. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Microsoft Software Shadow Copy Provider

Name        : SysMain
StartName   : LocalSystem
StartMode   : Manual
Description : Maintains and improves system performance over time.
DisplayName : Superfetch

Name        : SystemEventsBroker
StartName   : LocalSystem
StartMode   : Auto
Description : Coordinates execution of background work for WinRT application. If this service is stopped or disabled, then background work might not be triggered.
DisplayName : System Events Broker

Name        : TabletInputService
StartName   : LocalSystem
StartMode   : Manual
Description : Enables Touch Keyboard and Handwriting Panel pen and ink functionality
DisplayName : Touch Keyboard and Handwriting Panel Service

Name        : TapiSrv
StartName   : NT AUTHORITY\NetworkService
StartMode   : Manual
Description : Provides Telephony API (TAPI) support for programs that control telephony devices on the local computer and, through the LAN, on servers that are also running the service.
DisplayName : Telephony

Name        : TermService
StartName   : NT Authority\NetworkService
StartMode   : Manual
Description : Allows users to connect interactively to a remote computer. Remote Desktop and Remote Desktop Session Host Server depend on this service.  To prevent remote use of this computer, clear the checkboxes on the Remote tab of the System properties control panel item.
DisplayName : Remote Desktop Services

Name        : Themes
StartName   : LocalSystem
StartMode   : Auto
Description : Provides user experience theme management.
DisplayName : Themes

Name        : TieringEngineService
StartName   : localSystem
StartMode   : Manual
Description : Optimizes the placement of data in storage tiers on all tiered storage spaces in the system.
DisplayName : Storage Tiers Management

Name        : tiledatamodelsvc
StartName   : LocalSystem
StartMode   : Auto
Description : Tile Server for tile updates.
DisplayName : Tile Data model server

Name        : TimeBrokerSvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Coordinates execution of background work for WinRT application. If this service is stopped or disabled, then background work might not be triggered.
DisplayName : Time Broker

Name        : TrkWks
StartName   : LocalSystem
StartMode   : Auto
Description : Maintains links between NTFS files within a computer or across computers in a network.
DisplayName : Distributed Link Tracking Client

Name        : TrustedInstaller
StartName   : localSystem
StartMode   : Manual
Description : Enables installation, modification, and removal of Windows updates and optional components. If this service is disabled, install or uninstall of Windows updates might fail for this computer.
DisplayName : Windows Modules Installer

Name        : tzautoupdate
StartName   : NT AUTHORITY\LocalService
StartMode   : Disabled
Description : Automatically sets the system time zone.
DisplayName : Auto Time Zone Updater

Name        : UALSVC
StartName   : LocalSystem
StartMode   : Auto
Description : This service logs unique client access requests, in the form of IP addresses and user names, of installed products and roles on the local server. This information can be queried, via Powershell, by administrators needing to quantify client demand of server software for offline Client Access License (CAL) management. If the service is disabled, client requests will not be logged and will not be retrievable via Powershell queries. Stopping the service will not affect query of historical data (see supporting documentation for steps to delete historical data). The local system administrator must consult his, or her, Windows Server license terms to determine the number of CALs that are required for the server software to be appropriately licensed; use of the UAL service and data does not alter this obligation.
DisplayName : User Access Logging Service

Name        : UevAgentService
StartName   : LocalSystem
StartMode   : Disabled
Description : Provides support for application and OS settings roaming
DisplayName : User Experience Virtualization Service

Name        : UI0Detect
StartName   : LocalSystem
StartMode   : Manual
Description : Enables user notification of user input for interactive services, which enables access to dialogs created by interactive services when they appear. If this service is stopped, notifications of new interactive service dialogs will no longer function and there might not be access to interactive service dialogs. If this service is disabled, both notifications of and access to new interactive service dialogs will no longer function.
DisplayName : Interactive Services Detection

Name        : UmRdpService
StartName   : localSystem
StartMode   : Manual
Description : Allows the redirection of Printers/Drives/Ports for RDP connections
DisplayName : Remote Desktop Services UserMode Port Redirector

Name        : upnphost
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Allows UPnP devices to be hosted on this computer. If this service is stopped, any hosted UPnP devices will stop functioning and no additional hosted devices can be added. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : UPnP Device Host

Name        : UserManager
StartName   : LocalSystem
StartMode   : Auto
Description : User Manager provides the runtime components required for multi-user interaction.  If this service is stopped, some applications may not operate correctly.
DisplayName : User Manager

Name        : UsoSvc
StartName   : LocalSystem
StartMode   : Manual
Description : UsoSvc
DisplayName : Update Orchestrator Service for Windows Update

Name        : VaultSvc
StartName   : LocalSystem
StartMode   : Manual
Description : Provides secure storage and retrieval of credentials to users, applications and security service packages.
DisplayName : Credential Manager

Name        : vds
StartName   : LocalSystem
StartMode   : Manual
Description : Provides management services for disks, volumes, file systems, and storage arrays.
DisplayName : Virtual Disk

Name        : vmicguestinterface
StartName   : LocalSystem
StartMode   : Manual
Description : Provides an interface for the Hyper-V host to interact with specific services running inside the virtual machine.
DisplayName : Hyper-V Guest Service Interface

Name        : vmicheartbeat
StartName   : LocalSystem
StartMode   : Manual
Description : Monitors the state of this virtual machine by reporting a heartbeat at regular intervals. This service helps you identify running virtual machines that have stopped responding.
DisplayName : Hyper-V Heartbeat Service

Name        : vmickvpexchange
StartName   : LocalSystem
StartMode   : Manual
Description : Provides a mechanism to exchange data between the virtual machine and the operating system running on the physical computer.
DisplayName : Hyper-V Data Exchange Service

Name        : vmicrdv
StartName   : LocalSystem
StartMode   : Manual
Description : Provides a platform for communication between the virtual machine and the operating system running on the physical computer.
DisplayName : Hyper-V Remote Desktop Virtualization Service

Name        : vmicshutdown
StartName   : LocalSystem
StartMode   : Manual
Description : Provides a mechanism to shut down the operating system of this virtual machine from the management interfaces on the physical computer.
DisplayName : Hyper-V Guest Shutdown Service

Name        : vmictimesync
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Synchronizes the system time of this virtual machine with the system time of the physical computer.
DisplayName : Hyper-V Time Synchronization Service

Name        : vmicvmsession
StartName   : LocalSystem
StartMode   : Manual
Description : Provides a mechanism to manage virtual machine with PowerShell via VM session without a virtual network.
DisplayName : Hyper-V PowerShell Direct Service

Name        : vmicvss
StartName   : LocalSystem
StartMode   : Manual
Description : Coordinates the communications that are required to use Volume Shadow Copy Service to back up applications and data on this virtual machine from the operating system on the physical computer.
DisplayName : Hyper-V Volume Shadow Copy Requestor

Name        : VSS
StartName   : LocalSystem
StartMode   : Manual
Description : Manages and implements Volume Shadow Copies used for backup and other purposes. If this service is stopped, shadow copies will be unavailable for backup and the backup may fail. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Volume Shadow Copy

Name        : W32Time
StartName   : NT AUTHORITY\LocalService
StartMode   : Auto
Description : Maintains date and time synchronization on all clients and servers in the network. If this service is stopped, date and time synchronization will be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Windows Time

Name        : WalletService
StartName   : LocalSystem
StartMode   : Manual
Description : Hosts objects used by clients of the wallet
DisplayName : WalletService

Name        : WbioSrvc
StartName   : LocalSystem
StartMode   : Auto
Description : The Windows biometric service gives client applications the ability to capture, compare, manipulate, and store biometric data without gaining direct access to any biometric hardware or samples. The service is hosted in a privileged SVCHOST process.
DisplayName : Windows Biometric Service

Name        : Wcmsvc
StartName   : NT Authority\LocalService
StartMode   : Auto
Description : Makes automatic connect/disconnect decisions based on the network connectivity options currently available to the PC and enables management of network connectivity based on Group Policy settings.
DisplayName : Windows Connection Manager

Name        : WdiServiceHost
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : The Diagnostic Service Host is used by the Diagnostic Policy Service to host diagnostics that need to run in a Local Service context.  If this service is stopped, any diagnostics that depend on it will no longer function.
DisplayName : Diagnostic Service Host

Name        : WdiSystemHost
StartName   : LocalSystem
StartMode   : Manual
Description : The Diagnostic System Host is used by the Diagnostic Policy Service to host diagnostics that need to run in a Local System context.  If this service is stopped, any diagnostics that depend on it will no longer function.
DisplayName : Diagnostic System Host

Name        : WdNisSvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Helps guard against intrusion attempts targeting known and newly discovered vulnerabilities in network protocols
DisplayName : Windows Defender Network Inspection Service

Name        : Wecsvc
StartName   : NT AUTHORITY\NetworkService
StartMode   : Manual
Description : This service manages persistent subscriptions to events from remote sources that support WS-Management protocol. This includes Windows Vista event logs, hardware and IPMI-enabled event sources. The service stores forwarded events in a local Event Log. If this service is stopped or disabled event subscriptions cannot be created and forwarded events cannot be accepted.
DisplayName : Windows Event Collector

Name        : WEPHOSTSVC
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : Windows Encryption Provider Host Service brokers encryption related functionalities from 3rd Party Encryption Providers to processes that need to evaluate and apply EAS policies. Stopping this will compromise EAS compliancy checks that have been established by the connected Mail Accounts
DisplayName : Windows Encryption Provider Host Service

Name        : wercplsupport
StartName   : localSystem
StartMode   : Manual
Description : This service provides support for viewing, sending and deletion of system-level problem reports for the Problem Reports and Solutions control panel.
DisplayName : Problem Reports and Solutions Control Panel Support

Name        : WerSvc
StartName   : localSystem
StartMode   : Manual
Description : Allows errors to be reported when programs stop working or responding and allows existing solutions to be delivered. Also allows logs to be generated for diagnostic and repair services. If this service is stopped, error reporting might not work correctly and results of diagnostic services and repairs might not be displayed.
DisplayName : Windows Error Reporting Service

Name        : WiaRpc
StartName   : LocalSystem
StartMode   : Manual
Description : Launches applications associated with still image acquisition events.
DisplayName : Still Image Acquisition Events

Name        : WinDefend
StartName   : LocalSystem
StartMode   : Auto
Description : Helps protect users from malware and other potentially unwanted software
DisplayName : Windows Defender Service

Name        : WinHttpAutoProxySvc
StartName   : NT AUTHORITY\LocalService
StartMode   : Manual
Description : WinHTTP implements the client HTTP stack and provides developers with a Win32 API and COM Automation component for sending HTTP requests and receiving responses. In addition, WinHTTP provides support for auto-discovering a proxy configuration via its implementation of the Web Proxy Auto-Discovery (WPAD) protocol.
DisplayName : WinHTTP Web Proxy Auto-Discovery Service

Name        : Winmgmt
StartName   : localSystem
StartMode   : Auto
Description : Provides a common interface and object model to access management information about operating system, devices, applications and services. If this service is stopped, most Windows-based software will not function properly. If this service is disabled, any services that explicitly depend on it will fail to start.
DisplayName : Windows Management Instrumentation

Name        : WinRM
StartName   : NT AUTHORITY\NetworkService
StartMode   : Auto
Description : Windows Remote Management (WinRM) service implements the WS-Management protocol for remote management. WS-Management is a standard web services protocol used for remote software and hardware management. The WinRM service listens on the network for WS-Management requests and processes them. The WinRM Service needs to be configured with a listener using winrm.cmd command line tool or through Group Policy in order for it to listen over the network. The WinRM service provides access to WMI data and enables event collection. Event collection and subscription to events require that the service is running. WinRM messages use HTTP and HTTPS as transports. The WinRM service does not depend on IIS but is preconfigured to share a port with IIS on the same machine.  The WinRM service reserves the /wsman URL prefix. To prevent conflicts with IIS, administrators should ensure that any websites hosted on IIS do not use the /wsman URL prefix.
DisplayName : Windows Remote Management (WS-Management)

Name        : wisvc
StartName   : LocalSystem
StartMode   : Manual
Description : wisvc
DisplayName : Windows Insider Service

Name        : wlidsvc
StartName   : LocalSystem
StartMode   : Manual
Description : Enables user sign-in through Microsoft account identity services. If this service is stopped, users will not be able to logon to the computer with their Microsoft account.
DisplayName : Microsoft Account Sign-in Assistant

Name        : wmiApSrv
StartName   : localSystem
StartMode   : Manual
Description : Provides performance library information from Windows Management Instrumentation (WMI) providers to clients on the network. This service only runs when Performance Data Helper is activated.
DisplayName : WMI Performance Adapter

Name        : WPDBusEnum
StartName   : LocalSystem
StartMode   : Manual
Description : Enforces group policy for removable mass-storage devices. Enables applications such as Windows Media Player and Image Import Wizard to transfer and synchronize content using removable mass-storage devices.
DisplayName : Portable Device Enumerator Service

Name        : WpnService
StartName   : LocalSystem
StartMode   : Auto
Description : This service runs in session 0 and hosts the notification platform and connection provider which handles the connection between the device and WNS server.
DisplayName : Windows Push Notifications System Service

Name        : WSearch
StartName   : LocalSystem
StartMode   : Disabled
Description : Provides content indexing, property caching, and search results for files, e-mail, and other content.
DisplayName : Windows Search

Name        : wuauserv
StartName   : LocalSystem
StartMode   : Manual
Description : Enables the detection, download, and installation of updates for Windows and other programs. If this service is disabled, users of this computer will not be able to use Windows Update or its automatic updating feature, and programs will not be able to use the Windows Update Agent (WUA) API.
DisplayName : Windows Update

Name        : wudfsvc
StartName   : LocalSystem
StartMode   : Manual
Description : Creates and manages user-mode driver processes. This service cannot be stopped.
DisplayName : Windows Driver Foundation - User-mode Driver Framework

Name        : XblAuthManager
StartName   : LocalSystem
StartMode   : Manual
Description : Provides authentication and authorization services for interacting with Xbox Live. If this service is stopped, some applications may not operate correctly.
DisplayName : Xbox Live Auth Manager

Name        : XblGameSave
StartName   : LocalSystem
StartMode   : Manual
Description : This service syncs save data for Xbox Live save enabled games.  If this service is stopped, game save data will not upload to or download from Xbox Live.
DisplayName : Xbox Live Game Save

Name        : CDPUserSvc_8d9c8
StartName   : 
StartMode   : Auto
Description : 
DisplayName : CDPUserSvc_8d9c8

Name        : OneSyncSvc_8d9c8
StartName   : 
StartMode   : Auto
Description : This service synchronizes mail, contacts, calendar and various other user data. Mail and other applications dependent on this functionality will not work properly when this service is not running.
DisplayName : Sync Host_8d9c8

Name        : PimIndexMaintenanceSvc_8d9c8
StartName   : 
StartMode   : Manual
Description : Indexes contact data for fast contact searching. If you stop or disable this service, contacts might be missing from your search results.
DisplayName : Contact Data_8d9c8

Name        : UnistoreSvc_8d9c8
StartName   : 
StartMode   : Manual
Description : Handles storage of structured user data, including contact info, calendars, messages, and other content. If you stop or disable this service, apps that use this data might not work correctly.
DisplayName : User Data Storage_8d9c8

Name        : UserDataSvc_8d9c8
StartName   : 
StartMode   : Manual
Description : Provides apps access to structured user data, including contact info, calendars, messages, and other content. If you stop or disable this service, apps that use this data might not work correctly.
DisplayName : User Data Access_8d9c8

Name        : WpnUserService_8d9c8
StartName   : 
StartMode   : Manual
Description : This service hosts Windows notification platform which provides support for local and push notifications. Supported notifications are tile, toast and raw.
DisplayName : Windows Push Notifications User Service_8d9c8
