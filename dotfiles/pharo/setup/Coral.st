(Workspace new
    contents:
'ConfigurationOfCoral saveModifiedPackagesAndConfiguration: ''''.
ConfigurationOfCoral updateToLatestPackageVersions: ''''.
ConfigurationOfCoral saveConfiguration: ''''.
ConfigurationOfCoral loadDevelopment.

ConfigurationOfOSProcess updateToLatestPackageVersions: ''''.
MetacelloToolBox createNewDevelopmentVersionIn: ConfigurationOfOSProcess description: ''''.

ConfigurationOfReadline saveModifiedPackagesAndConfiguration: ''''.
ConfigurationOfPetitParser updateToLatestPackageVersions: ''''
';
    openLabel: 'Working')
  width: 1000; height: 230;
  setToAdhereToEdge: #topLeft.

#('ConfigurationOfCoral'
  'ConfigurationOfPetitParser'
  'Coral-Core'
  'Coral-Utilities'
  'Coral-Commandline'
  'Coral-Tests'
  'Coral-Examples-Esug2011'
  'PetitSmalltalk'
  'PetitSmalltalk-Core'
  'PetitSmalltalk-Tests'
  'AST-Core-Nodes'
) do: [ :packageName |
  Nautilus groupsManager
    addADynamicGroupNamed: packageName
    block: [ (RPackageOrganizer default packageNamed: packageName) orderedClasses ] ].

" Save the image "
FileStream stderr nextPutAll: '  done'; lf.
Smalltalk snapshot: true andQuit: true.

