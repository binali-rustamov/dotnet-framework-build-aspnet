FROM dotnet-framework-build:4.7.1
# Install web targets
RUN "Invoke-WebRequest https://dotnetbinaries.blob.core.windows.net/dockerassets/MSBuild.Microsoft.VisualStudio.Web.targets.2017.12.zip; `
        -UseBasicParsing `
        -OutFile MSBuild.Microsoft.VisualStudio.Web.targets.zip; `
    Expand-Archive MSBuild.Microsoft.VisualStudio.Web.targets.zip `
        -DestinationPath \"${Env:ProgramFiles(x86)}\Microsoft Visual Studio\2017\BuildTools\MSBuild\Microsoft\VisualStudio\v15.0\"; `
    Remove-Item -Force MSBuild.Microsoft.VisualStudio.Web.targets.zip"