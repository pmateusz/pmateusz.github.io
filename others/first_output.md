
Name                : AJRouter
DisplayName         : AllJoyn Router Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : ALG
DisplayName         : Application Layer Gateway Service
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : AppIDSvc
DisplayName         : Application Identity
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, CryptSvc, AppID}
ServicesDependentOn : 

Name                : Appinfo
DisplayName         : Application Information
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, ProfSvc}
ServicesDependentOn : 

Name                : AppMgmt
DisplayName         : Application Management
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : AppReadiness
DisplayName         : App Readiness
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : AppVClient
DisplayName         : Microsoft App-V Client
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Disabled
RequiredServices    : {AppvVfs, RpcSS, AppvStrm, netprofm}
ServicesDependentOn : 

Name                : AppXSvc
DisplayName         : AppX Deployment Service (AppXSVC)
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss, staterepository}
ServicesDependentOn : 

Name                : AudioEndpointBuilder
DisplayName         : Windows Audio Endpoint Builder
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : Audiosrv
DisplayName         : Windows Audio
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {AudioEndpointBuilder, RpcSs}
ServicesDependentOn : 

Name                : AxInstSV
DisplayName         : ActiveX Installer (AxInstSV)
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : BFE
DisplayName         : Base Filtering Engine
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : BITS
DisplayName         : Background Intelligent Transfer Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : BrokerInfrastructure
DisplayName         : Background Tasks Infrastructure Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {DcomLaunch, RpcSs, RpcEptMapper}
ServicesDependentOn : 

Name                : Browser
DisplayName         : Computer Browser
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Disabled
RequiredServices    : {LanmanServer, LanmanWorkstation}
ServicesDependentOn : 

Name                : bthserv
DisplayName         : Bluetooth Support Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : CDPSvc
DisplayName         : Connected Devices Platform Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : CDPUserSvc_8d9c8
DisplayName         : CDPUserSvc_8d9c8
Status              : Running
ServiceType         : 224
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : CertPropSvc
DisplayName         : Certificate Propagation
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : ClipSVC
DisplayName         : Client License Service (ClipSVC)
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : COMSysApp
DisplayName         : COM+ System Application
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {EventSystem, SENS, RpcSs}
ServicesDependentOn : 

Name                : CoreMessagingRegistrar
DisplayName         : CoreMessaging
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : CryptSvc
DisplayName         : Cryptographic Services
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : CscService
DisplayName         : Offline Files
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Disabled
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : DcomLaunch
DisplayName         : DCOM Server Process Launcher
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : DcpSvc
DisplayName         : DataCollectionPublishingService
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : defragsvc
DisplayName         : Optimize drives
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : DeviceAssociationService
DisplayName         : Device Association Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : DeviceInstall
DisplayName         : Device Install Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : DevQueryBroker
DisplayName         : DevQuery Background Discovery Broker
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : Dhcp
DisplayName         : DHCP Client
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {Afd, NSI, Tdx}
ServicesDependentOn : 

Name                : diagnosticshub.standardcollector.service
DisplayName         : Microsoft (R) Diagnostics Hub Standard Collector Service
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : DiagTrack
DisplayName         : Connected User Experiences and Telemetry
Status              : Running
ServiceType         : Win32OwnProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : DmEnrollmentSvc
DisplayName         : Device Management Enrollment Service
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : dmwappushservice
DisplayName         : dmwappushsvc
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : Dnscache
DisplayName         : DNS Client
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {nsi, Tdx}
ServicesDependentOn : 

Name                : dot3svc
DisplayName         : Wired AutoConfig
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, Eaphost, Ndisuio}
ServicesDependentOn : 

Name                : DPS
DisplayName         : Diagnostic Policy Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : DsmSvc
DisplayName         : Device Setup Manager
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : DsSvc
DisplayName         : Data Sharing Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : Eaphost
DisplayName         : Extensible Authentication Protocol
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RPCSS, KeyIso}
ServicesDependentOn : 

Name                : EFS
DisplayName         : Encrypting File System (EFS)
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : embeddedmode
DisplayName         : Embedded Mode
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {BrokerInfrastructure}
ServicesDependentOn : 

Name                : EntAppSvc
DisplayName         : Enterprise App Management Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : EventLog
DisplayName         : Windows Event Log
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : EventSystem
DisplayName         : COM+ Event System
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : fdPHost
DisplayName         : Function Discovery Provider Host
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, http}
ServicesDependentOn : 

Name                : FDResPub
DisplayName         : Function Discovery Resource Publication
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, http}
ServicesDependentOn : 

Name                : FontCache
DisplayName         : Windows Font Cache Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : FrameServer
DisplayName         : Windows Camera Frame Server
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : gpsvc
DisplayName         : Group Policy Client
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RPCSS, Mup}
ServicesDependentOn : 

Name                : hidserv
DisplayName         : Human Interface Device Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : HvHost
DisplayName         : HV Host Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {hvservice}
ServicesDependentOn : 

Name                : icssvc
DisplayName         : Windows Mobile Hotspot Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, wcmsvc}
ServicesDependentOn : 

Name                : IKEEXT
DisplayName         : IKE and AuthIP IPsec Keying Modules
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {nsi, BFE}
ServicesDependentOn : 

Name                : iphlpsvc
DisplayName         : IP Helper
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {nsi, RpcSS, winmgmt, Tdx...}
ServicesDependentOn : 

Name                : KeyIso
DisplayName         : CNG Key Isolation
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : KPSSVC
DisplayName         : KDC Proxy Server service (KPS)
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss, http}
ServicesDependentOn : 

Name                : KtmRm
DisplayName         : KtmRm for Distributed Transaction Coordinator
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RPCSS, SamSS}
ServicesDependentOn : 

Name                : LanmanServer
DisplayName         : Server
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {SamSS, Srv2}
ServicesDependentOn : 

Name                : LanmanWorkstation
DisplayName         : Workstation
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {NSI, MRxSmb20, Bowser}
ServicesDependentOn : 

Name                : lfsvc
DisplayName         : Geolocation Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : LicenseManager
DisplayName         : Windows License Manager Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : lltdsvc
DisplayName         : Link-Layer Topology Discovery Mapper
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss, lltdio}
ServicesDependentOn : 

Name                : lmhosts
DisplayName         : TCP/IP NetBIOS Helper
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {Afd}
ServicesDependentOn : 

Name                : LSM
DisplayName         : Local Session Manager
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {DcomLaunch, RpcSs, RpcEptMapper}
ServicesDependentOn : 

Name                : MapsBroker
DisplayName         : Downloaded Maps Manager
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Automatic
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : MpsSvc
DisplayName         : Windows Firewall
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {mpsdrv, bfe}
ServicesDependentOn : 

Name                : MSDTC
DisplayName         : Distributed Transaction Coordinator
Status              : Running
ServiceType         : Win32OwnProcess
StartType           : Automatic
RequiredServices    : {RPCSS, SamSS}
ServicesDependentOn : 

Name                : MSiSCSI
DisplayName         : Microsoft iSCSI Initiator Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : msiserver
DisplayName         : Windows Installer
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : NcaSvc
DisplayName         : Network Connectivity Assistant
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {NSI, dnscache, iphlpsvc, BFE}
ServicesDependentOn : 

Name                : NcbService
DisplayName         : Network Connection Broker
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSS, tcpip}
ServicesDependentOn : 

Name                : Netlogon
DisplayName         : Netlogon
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {LanmanWorkstation}
ServicesDependentOn : 

Name                : Netman
DisplayName         : Network Connections
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, nsi}
ServicesDependentOn : 

Name                : netprofm
DisplayName         : Network List Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs, nlasvc}
ServicesDependentOn : 

Name                : NetSetupSvc
DisplayName         : Network Setup Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : NetTcpPortSharing
DisplayName         : Net.Tcp Port Sharing Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Disabled
RequiredServices    : {}
ServicesDependentOn : 

Name                : NgcCtnrSvc
DisplayName         : Microsoft Passport Container
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : NgcSvc
DisplayName         : Microsoft Passport
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : NlaSvc
DisplayName         : Network Location Awareness
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {NSI, RpcSs, Eventlog, Dhcp...}
ServicesDependentOn : 

Name                : nsi
DisplayName         : Network Store Interface Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {rpcss, nsiproxy}
ServicesDependentOn : 

Name                : OneSyncSvc_8d9c8
DisplayName         : Sync Host_8d9c8
Status              : Running
ServiceType         : 224
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : PcaSvc
DisplayName         : Program Compatibility Assistant Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : PerfHost
DisplayName         : Performance Counter DLL Host
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : PhoneSvc
DisplayName         : Phone Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : PimIndexMaintenanceSvc_8d9c8
DisplayName         : Contact Data_8d9c8
Status              : Stopped
ServiceType         : 224
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : pla
DisplayName         : Performance Logs & Alerts
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : PlugPlay
DisplayName         : Plug and Play
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : PolicyAgent
DisplayName         : IPsec Policy Agent
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {Tcpip, bfe}
ServicesDependentOn : 

Name                : Power
DisplayName         : Power
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : PrintNotify
DisplayName         : Printer Extensions and Notifications
Status              : Stopped
ServiceType         : Win32ShareProcess, InteractiveProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : ProfSvc
DisplayName         : User Profile Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : QWAVE
DisplayName         : Quality Windows Audio Video Experience
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {QWAVEdrv, rpcss, LLTDIO, psched}
ServicesDependentOn : 

Name                : RasAuto
DisplayName         : Remote Access Auto Connection Manager
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RasAcd}
ServicesDependentOn : 

Name                : RasMan
DisplayName         : Remote Access Connection Manager
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {SstpSvc}
ServicesDependentOn : 

Name                : RemoteAccess
DisplayName         : Routing and Remote Access
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Disabled
RequiredServices    : {Http, RasMan, RpcSS, Bfe}
ServicesDependentOn : 

Name                : RemoteRegistry
DisplayName         : Remote Registry
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : RmSvc
DisplayName         : Radio Management Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : RpcEptMapper
DisplayName         : RPC Endpoint Mapper
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : RpcLocator
DisplayName         : Remote Procedure Call (RPC) Locator
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : RpcSs
DisplayName         : Remote Procedure Call (RPC)
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {DcomLaunch, RpcEptMapper}
ServicesDependentOn : 

Name                : RSoPProv
DisplayName         : Resultant Set of Policy Provider
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : sacsvr
DisplayName         : Special Administration Console Helper
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : SamSs
DisplayName         : Security Accounts Manager
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : SCardSvr
DisplayName         : Smart Card
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Disabled
RequiredServices    : {wudfsvc}
ServicesDependentOn : 

Name                : ScDeviceEnum
DisplayName         : Smart Card Device Enumeration Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : Schedule
DisplayName         : Task Scheduler
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RPCSS, SystemEventsBroker}
ServicesDependentOn : 

Name                : SCPolicySvc
DisplayName         : Smart Card Removal Policy
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : seclogon
DisplayName         : Secondary Logon
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : SENS
DisplayName         : System Event Notification Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {EventSystem}
ServicesDependentOn : 

Name                : SensorDataService
DisplayName         : Sensor Data Service
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : SensorService
DisplayName         : Sensor Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : SensrSvc
DisplayName         : Sensor Monitoring Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : SessionEnv
DisplayName         : Remote Desktop Configuration
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RPCSS, LanmanWorkstation}
ServicesDependentOn : 

Name                : SharedAccess
DisplayName         : Internet Connection Sharing (ICS)
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {BFE}
ServicesDependentOn : 

Name                : ShellHWDetection
DisplayName         : Shell Hardware Detection
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : smphost
DisplayName         : Microsoft Storage Spaces SMP
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : SNMPTRAP
DisplayName         : SNMP Trap
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : Spooler
DisplayName         : Print Spooler
Status              : Running
ServiceType         : Win32OwnProcess, InteractiveProcess
StartType           : Automatic
RequiredServices    : {RPCSS, http}
ServicesDependentOn : 

Name                : sppsvc
DisplayName         : Software Protection
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : SSDPSRV
DisplayName         : SSDP Discovery
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {HTTP}
ServicesDependentOn : 

Name                : SstpSvc
DisplayName         : Secure Socket Tunneling Protocol Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : StateRepository
DisplayName         : State Repository Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : stisvc
DisplayName         : Windows Image Acquisition (WIA)
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : StorSvc
DisplayName         : Storage Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : svsvc
DisplayName         : Spot Verifier
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : swprv
DisplayName         : Microsoft Software Shadow Copy Provider
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : SysMain
DisplayName         : Superfetch
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : SystemEventsBroker
DisplayName         : System Events Broker
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs, RpcEptMapper}
ServicesDependentOn : 

Name                : TabletInputService
DisplayName         : Touch Keyboard and Handwriting Panel Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : TapiSrv
DisplayName         : Telephony
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : TermService
DisplayName         : Remote Desktop Services
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : Themes
DisplayName         : Themes
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : TieringEngineService
DisplayName         : Storage Tiers Management
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : tiledatamodelsvc
DisplayName         : Tile Data model server
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {rpcss, staterepository}
ServicesDependentOn : 

Name                : TimeBrokerSvc
DisplayName         : Time Broker
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : TrkWks
DisplayName         : Distributed Link Tracking Client
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : TrustedInstaller
DisplayName         : Windows Modules Installer
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : tzautoupdate
DisplayName         : Auto Time Zone Updater
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Disabled
RequiredServices    : {}
ServicesDependentOn : 

Name                : UALSVC
DisplayName         : User Access Logging Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {WinMgmt}
ServicesDependentOn : 

Name                : UevAgentService
DisplayName         : User Experience Virtualization Service
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Disabled
RequiredServices    : {}
ServicesDependentOn : 

Name                : UI0Detect
DisplayName         : Interactive Services Detection
Status              : Stopped
ServiceType         : Win32OwnProcess, InteractiveProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : UmRdpService
DisplayName         : Remote Desktop Services UserMode Port Redirector
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RDPDR, TermService}
ServicesDependentOn : 

Name                : UnistoreSvc_8d9c8
DisplayName         : User Data Storage_8d9c8
Status              : Stopped
ServiceType         : 224
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : upnphost
DisplayName         : UPnP Device Host
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {HTTP, SSDPSRV}
ServicesDependentOn : 

Name                : UserDataSvc_8d9c8
DisplayName         : User Data Access_8d9c8
Status              : Stopped
ServiceType         : 224
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : UserManager
DisplayName         : User Manager
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs, ProfSvc}
ServicesDependentOn : 

Name                : UsoSvc
DisplayName         : Update Orchestrator Service for Windows Update
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : VaultSvc
DisplayName         : Credential Manager
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : vds
DisplayName         : Virtual Disk
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : vmicguestinterface
DisplayName         : Hyper-V Guest Service Interface
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : vmicheartbeat
DisplayName         : Hyper-V Heartbeat Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : vmickvpexchange
DisplayName         : Hyper-V Data Exchange Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : vmicrdv
DisplayName         : Hyper-V Remote Desktop Virtualization Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : vmicshutdown
DisplayName         : Hyper-V Guest Shutdown Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : vmictimesync
DisplayName         : Hyper-V Time Synchronization Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {VmGid}
ServicesDependentOn : 

Name                : vmicvmsession
DisplayName         : Hyper-V PowerShell Direct Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : vmicvss
DisplayName         : Hyper-V Volume Shadow Copy Requestor
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : VSS
DisplayName         : Volume Shadow Copy
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : W32Time
DisplayName         : Windows Time
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {}
ServicesDependentOn : 

Name                : WalletService
DisplayName         : WalletService
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : WbioSrvc
DisplayName         : Windows Biometric Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RpcSs, WUDFSvc}
ServicesDependentOn : 

Name                : Wcmsvc
DisplayName         : Windows Connection Manager
Status              : Running
ServiceType         : Win32OwnProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : WdiServiceHost
DisplayName         : Diagnostic Service Host
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : WdiSystemHost
DisplayName         : Diagnostic System Host
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : WdNisSvc
DisplayName         : Windows Defender Network Inspection Service
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {WdNisDrv}
ServicesDependentOn : 

Name                : Wecsvc
DisplayName         : Windows Event Collector
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {Eventlog, HTTP}
ServicesDependentOn : 

Name                : WEPHOSTSVC
DisplayName         : Windows Encryption Provider Host Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : wercplsupport
DisplayName         : Problem Reports and Solutions Control Panel Support
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : WerSvc
DisplayName         : Windows Error Reporting Service
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : WiaRpc
DisplayName         : Still Image Acquisition Events
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : WinDefend
DisplayName         : Windows Defender Service
Status              : Running
ServiceType         : Win32OwnProcess
StartType           : Automatic
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : WinHttpAutoProxySvc
DisplayName         : WinHTTP Web Proxy Auto-Discovery Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {Dhcp}
ServicesDependentOn : 

Name                : Winmgmt
DisplayName         : Windows Management Instrumentation
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : WinRM
DisplayName         : Windows Remote Management (WS-Management)
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {RPCSS, HTTP}
ServicesDependentOn : 

Name                : wisvc
DisplayName         : Windows Insider Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : wlidsvc
DisplayName         : Microsoft Account Sign-in Assistant
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : wmiApSrv
DisplayName         : WMI Performance Adapter
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : WPDBusEnum
DisplayName         : Portable Device Enumerator Service
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : WpnService
DisplayName         : Windows Push Notifications System Service
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Automatic
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : WpnUserService_8d9c8
DisplayName         : Windows Push Notifications User Service_8d9c8
Status              : Stopped
ServiceType         : 224
StartType           : Manual
RequiredServices    : {}
ServicesDependentOn : 

Name                : WSearch
DisplayName         : Windows Search
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Disabled
RequiredServices    : {RPCSS}
ServicesDependentOn : 

Name                : wuauserv
DisplayName         : Windows Update
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {rpcss}
ServicesDependentOn : 

Name                : wudfsvc
DisplayName         : Windows Driver Foundation - User-mode Driver Framework
Status              : Running
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {WudfPf}
ServicesDependentOn : 

Name                : XblAuthManager
DisplayName         : Xbox Live Auth Manager
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {RpcSs}
ServicesDependentOn : 

Name                : XblGameSave
DisplayName         : Xbox Live Game Save
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
RequiredServices    : {XblAuthManager, UserManager}
ServicesDependentOn : 
