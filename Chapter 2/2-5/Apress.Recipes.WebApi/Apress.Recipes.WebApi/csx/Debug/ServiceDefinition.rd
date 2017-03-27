<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Apress.Recipes.WebApi" generation="1" functional="0" release="0" Id="ee60b47d-3181-4fac-8b96-b66293f49197" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Apress.Recipes.WebApiGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="ApressWebApiWorker:Default" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/LB:ApressWebApiWorker:Default" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="ApressWebApiWorker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/MapApressWebApiWorker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ApressWebApiWorkerInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/MapApressWebApiWorkerInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:ApressWebApiWorker:Default">
          <toPorts>
            <inPortMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/ApressWebApiWorker/Default" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapApressWebApiWorker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/ApressWebApiWorker/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapApressWebApiWorkerInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/ApressWebApiWorkerInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="ApressWebApiWorker" generation="1" functional="0" release="0" software="C:\Users\filip.wojcieszyn\Dropbox\apress\code\Chapter 2\2-5\Apress.Recipes.WebApi\Apress.Recipes.WebApi\csx\Debug\roles\ApressWebApiWorker" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Default" protocol="http" portRanges="900" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ApressWebApiWorker&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;ApressWebApiWorker&quot;&gt;&lt;e name=&quot;Default&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/ApressWebApiWorkerInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/ApressWebApiWorkerUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/ApressWebApiWorkerFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ApressWebApiWorkerUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ApressWebApiWorkerFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ApressWebApiWorkerInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="a22040b7-4bf0-44ae-baa6-33abf9b47177" ref="Microsoft.RedDog.Contract\ServiceContract\Apress.Recipes.WebApiContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="bb323bba-9038-4c51-b1e0-f791ac3f7837" ref="Microsoft.RedDog.Contract\Interface\ApressWebApiWorker:Default@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Apress.Recipes.WebApi/Apress.Recipes.WebApiGroup/ApressWebApiWorker:Default" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>