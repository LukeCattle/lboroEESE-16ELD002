<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="10008000">
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
		<Item Name="Kinect_Example.vi" Type="VI" URL="../Kinect_Example.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Flatten Pixmap.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="Read.vi" Type="VI" URL="/&lt;vilib&gt;/InstrIOAsst/IIOA.llb/Read.vi"/>
			</Item>
			<Item Name="Close-Depth and Skeleton.vi" Type="VI" URL="../../_Polymorphic Close/Close-Depth and Skeleton.vi"/>
			<Item Name="Close-Depth and Video.vi" Type="VI" URL="../../_Polymorphic Close/Close-Depth and Video.vi"/>
			<Item Name="Close-Depth, Skeleton and Video.vi" Type="VI" URL="../../_Polymorphic Close/Close-Depth, Skeleton and Video.vi"/>
			<Item Name="Close-Depth.vi" Type="VI" URL="../../_Polymorphic Close/Close-Depth.vi"/>
			<Item Name="Close-Skeleton and Video.vi" Type="VI" URL="../../_Polymorphic Close/Close-Skeleton and Video.vi"/>
			<Item Name="Close-Skeleton.vi" Type="VI" URL="../../_Polymorphic Close/Close-Skeleton.vi"/>
			<Item Name="Close-Video.vi" Type="VI" URL="../../_Polymorphic Close/Close-Video.vi"/>
			<Item Name="Colour Callback.vi" Type="VI" URL="../../_Callback VIs/Colour Callback.vi"/>
			<Item Name="Configure.vi" Type="VI" URL="../../Configure.vi"/>
			<Item Name="Depth Callback.vi" Type="VI" URL="../../_Callback VIs/Depth Callback.vi"/>
			<Item Name="Display Colour Data (U32 to picture).vi" Type="VI" URL="../../Additional VIs/Display Colour Data (U32 to picture).vi"/>
			<Item Name="Event-Depth and Skeleton.vi" Type="VI" URL="../../_Polymorphic Configure/Event-Depth and Skeleton.vi"/>
			<Item Name="Event-Depth and Video.vi" Type="VI" URL="../../_Polymorphic Configure/Event-Depth and Video.vi"/>
			<Item Name="Event-Depth, Skeleton and Video.vi" Type="VI" URL="../../_Polymorphic Configure/Event-Depth, Skeleton and Video.vi"/>
			<Item Name="Event-Depth.vi" Type="VI" URL="../../_Polymorphic Configure/Event-Depth.vi"/>
			<Item Name="Event-Skeleton and Video.vi" Type="VI" URL="../../_Polymorphic Configure/Event-Skeleton and Video.vi"/>
			<Item Name="Event-Skeleton.vi" Type="VI" URL="../../_Polymorphic Configure/Event-Skeleton.vi"/>
			<Item Name="Event-Video.vi" Type="VI" URL="../../_Polymorphic Configure/Event-Video.vi"/>
			<Item Name="FGV-Stream Data.vi" Type="VI" URL="../../_Functional Global Variables/FGV-Stream Data.vi"/>
			<Item Name="Initialise 3D Skeleton.vi" Type="VI" URL="../../Additional VIs/Initialise 3D Skeleton.vi"/>
			<Item Name="Initialise.vi" Type="VI" URL="../../Initialise.vi"/>
			<Item Name="Kinect Close.vi" Type="VI" URL="../../Kinect Close.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2010/resource/lvanlys.dll"/>
			<Item Name="Microsoft.Kinect" Type="Document" URL="Microsoft.Kinect">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Render 3D Skeleton.vi" Type="VI" URL="../../Additional VIs/Render 3D Skeleton.vi"/>
			<Item Name="Skeleton Callback.vi" Type="VI" URL="../../_Callback VIs/Skeleton Callback.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Kinesthesia Record" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{A2B5858C-0407-48A0-A36A-27D8DFEB2537}</Property>
				<Property Name="App_INI_GUID" Type="Str">{05C252C2-6784-446D-BB3F-5BEBE0C3292E}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.NA.com</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Kinesthesia Record</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Kinect_Code/Kinesthesia_Record</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">Kinesthesia_Record.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Kinect_Code/Kinesthesia_Record/Kinesthesia_Record.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Kinect_Code/Kinesthesia_Record/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{9D3D810A-8BF1-46D6-90ED-062540A6F79A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NA</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Kinesthesia Record</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Kinesthesia Record</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 NA</Property>
				<Property Name="TgtF_productName" Type="Str">Kinesthesia Record</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{5A60B193-2F76-47EC-9EF1-36D9D4EFA1DF}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Kinesthesia_Record.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
