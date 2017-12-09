<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Project Documentation" Type="Folder">
			<Item Name="Documentation Images" Type="Folder">
				<Item Name="myRIO_Project_Diagram.gif" Type="Document" URL="/C/Users/eljc/Downloads/Untitled Project 2/documentation/myRIO_Project_Diagram.gif"/>
			</Item>
			<Item Name="myRIO Project Documentation.html" Type="Document" URL="/C/Users/eljc/Downloads/Untitled Project 2/documentation/myRIO Project Documentation.html"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="NI-myICARUSRIO-1900-0308cb70" Type="RT myRIO">
		<Property Name="alias.name" Type="Str">NI-myICARUSRIO-1900-0308cb70</Property>
		<Property Name="alias.value" Type="Str">172.22.11.2</Property>
		<Property Name="CCSymbols" Type="Str">OS,Linux;CPU,ARM;DeviceCode,762F;TARGET_TYPE,RT;FPGAPersonality,myRIO_FP_Default;</Property>
		<Property Name="crio.ControllerPID" Type="Str">762F</Property>
		<Property Name="crio.family" Type="Str">ARMLinux</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Kinect Depth Controler.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/Kinect Depth Controler.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Draw 1-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 1-Bit Pixmap.vi"/>
				<Item Name="Draw 4-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 4-Bit Pixmap.vi"/>
				<Item Name="Draw 8-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 8-Bit Pixmap.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Draw True-Color Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw True-Color Pixmap.vi"/>
				<Item Name="Draw Unflattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Unflattened Pixmap.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Flatten Pixmap.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
			</Item>
			<Item Name="Close Device (SubVI).vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Close Device (SubVI).vi"/>
			<Item Name="Close kinect systems.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/Close kinect systems.vi"/>
			<Item Name="Control 1.ctl" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/Control 1.ctl"/>
			<Item Name="Depth Format Control.ctl" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Depth Format Control.ctl"/>
			<Item Name="Depth Resolution Control.ctl" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Depth Resolution Control.ctl"/>
			<Item Name="Depth2ColorImage.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/Depth to ColorImage.vi/Depth2ColorImage.vi"/>
			<Item Name="Initialize kinect systems.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/Initialize kinect systems.vi"/>
			<Item Name="Kinect Shutdown.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Kinect Shutdown.vi"/>
			<Item Name="Kinect_init(SubVI).vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Kinect_init(SubVI).vi"/>
			<Item Name="Led Control.ctl" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Led Control.ctl"/>
			<Item Name="libkinect_wrapper.dll" Type="Document" URL="libkinect_wrapper.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Log Level Control.ctl" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Log Level Control.ctl"/>
			<Item Name="Open Device.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Open Device.vi"/>
			<Item Name="Read Depth Low Resolution.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Read Depth Low Resolution.vi"/>
			<Item Name="Read Depth Tiny Resolution.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Read Depth Tiny Resolution.vi"/>
			<Item Name="Read Depth.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Read Depth.vi"/>
			<Item Name="Set Led(SubVI).vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Set Led(SubVI).vi"/>
			<Item Name="Set Tilt Degree (SubVI).vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Set Tilt Degree (SubVI).vi"/>
			<Item Name="Start Depth.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Start Depth.vi"/>
			<Item Name="Start Video.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Start Video.vi"/>
			<Item Name="Stop Depth.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Stop Depth.vi"/>
			<Item Name="Stop Video.vi" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Stop Video.vi"/>
			<Item Name="Video Format Control.ctl" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Video Format Control.ctl"/>
			<Item Name="Video Resolution Control.ctl" Type="VI" URL="../../LabView/kinect on rio/Kinect Project/Kinect Project/Kinect Project/subVIs/Video Resolution Control.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
