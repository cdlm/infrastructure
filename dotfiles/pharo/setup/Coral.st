" Development commands "
(Workspace new
    contents:
'Gofer new squeaksource3: ''coral''; package: ''ConfigurationOfCoral''; load.
(Smalltalk at: #ConfigurationOfCoral) loadDevelopment.

ConfigurationOfCoral saveModifiedPackagesAndConfiguration: ''''.
ConfigurationOfCoral updateToLatestPackageVersions: ''''.
ConfigurationOfCoral saveConfiguration: ''''.
ConfigurationOfCoral loadDevelopment.

ConfigurationOfOSProcess updateToLatestPackageVersions: ''''.
MetacelloToolBox createNewDevelopmentVersionIn: ConfigurationOfOSProcess description: ''''.

ConfigurationOfReadline saveModifiedPackagesAndConfiguration: ''''.
ConfigurationOfPetitParser updateToLatestPackageVersions: ''''
';
    openLabel: 'Working')
  width: 1000; height: 300;
  setToAdhereToEdge: #left.

" Nautilus groups "
Smalltalk at: #Nautilus ifPresent: [
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
      addADynamicClassGroupNamed: packageName
      block: [ (RPackageOrganizer default packageNamed: packageName) orderedClasses ] ] ].

" Save the image "
FileStream stderr nextPutAll: '  done'; lf.
Smalltalk snapshot: true andQuit: true.

