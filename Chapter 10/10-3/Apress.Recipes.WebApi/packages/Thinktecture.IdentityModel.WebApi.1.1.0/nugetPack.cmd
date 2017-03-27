xcopy ..\..\build\thinktecture.identitymodel.webapi.dll lib\net45 /y
xcopy ..\..\build\thinktecture.identitymodel.webapi.pdb lib\net45 /y
NuGet.exe pack Thinktecture.IdentityModel.WebApi.nuspec -OutputDirectory ..\