<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="CloudProject" generation="1" functional="0" release="0" Id="ae338492-ff7d-49fb-9ca5-3179abafbd04" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="CloudProjectGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Apress.Recipes.WebApi:Default" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/CloudProject/CloudProjectGroup/LB:Apress.Recipes.WebApi:Default" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Apress.Recipes.WebApi:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/CloudProject/CloudProjectGroup/MapApress.Recipes.WebApi:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Apress.Recipes.WebApiInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/CloudProject/CloudProjectGroup/MapApress.Recipes.WebApiInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Apress.Recipes.WebApi:Default">
          <toPorts>
            <inPortMoniker name="/CloudProject/CloudProjectGroup/Apress.Recipes.WebApi/Default" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapApress.Recipes.WebApi:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/CloudProject/CloudProjectGroup/Apress.Recipes.WebApi/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapApress.Recipes.WebApiInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/CloudProject/CloudProjectGroup/Apress.Recipes.WebApiInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Apress.Recipes.WebApi" generation="1" functional="0" release="0" software="C:\Users\filip.wojcieszyn\Dropbox\apress\code\Chapter 2\2-6\Apress.Recipes.WebApi\CloudProject\csx\Debug\roles\Apress.Recipes.WebApi" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Default" protocol="http" portRanges="901" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Apress.Recipes.WebApi&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Apress.Recipes.WebApi&quot;&gt;&lt;e name=&quot;Default&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/CloudProject/CloudProjectGroup/Apress.Recipes.WebApiInstances" />
            <sCSPolicyUpdateDomainMoniker name="/CloudProject/CloudProjectGroup/Apress.Recipes.WebApiUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/CloudProject/CloudProjectGroup/Apress.Recipes.WebApiFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="Apress.Recipes.WebApiUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="Apress.Recipes.WebApiFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="Apress.Recipes.WebApiInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="d89716c2-4e51-41b6-8f0e-be54ec10f5eb" ref="Microsoft.RedDog.Contract\ServiceContract\CloudProjectContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="f573366a-c80c-417e-95c4-ab3abe0e377a" ref="Microsoft.RedDog.Contract\Interface\Apress.Recipes.WebApi:Default@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/CloudProject/CloudProjectGroup/Apress.Recipes.WebApi:Default" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>