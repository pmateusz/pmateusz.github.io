----
ActiveX Installer
AxInstSV
Provides User Account Control validation for the installation of ActiveX controls from the Internet and enables management of ActiveX control installation based on Group Policy settings. This service is started on demand and if disabled the installation of ActiveX controls will behave according to default browser settings.
- Remote Procedure Call (RPC)
-- DCOM Server Process Launcher
-- RPC Endpoint Manager
Manual
Local System
----
AllJoyn Router Service
AJRouter
Routes AllJoyn messages for the local AllJoyn clients that do not have their own bundled routers will be unable to run.
Manual (Triggered)
Local Service
----
App Readiness
AppReadiness
Gets apps ready for use the first time a user signs in to this PC and when adding new apps.
Manual
Local System
----
Application Identity
AppIDSvc
Determines and verifies the identity of an application. Disabling this service will prevent AppLocker from being enforced.
Manual (Triggered)
Local Service
----
Application Information
Appinfo
Facilitates the running of interactive applications with additional administrative privileges. If this service is stopped, users will be unable to launch applications with the additional administrative privileges they may require to perform desired user tasks.
- Remote Procedure Call
- User Profile Service
Manual (Triggered)
Local System
----
Application Layer Gateway Service
ALG
Provides support for 3rd party protocol plug-ins for Internet Connection Sharing
Manual
Local Service
----
Application Management
AppMgmt
Processes installation, removal, and enumeration of requests for software deployed through Group Policy. If the service is disabled, users will be unable to install, remove, or enumerate software deployed through Group Policy. If this service is disabled, any services that explicitly depend on it will fail to start.
Local System Account
Manual
----
AppX Deployment Service
AppXSVC
Provides 