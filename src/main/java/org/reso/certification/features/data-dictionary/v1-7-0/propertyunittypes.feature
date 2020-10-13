# This file was autogenerated on: 20201012211025138
Feature: PropertyUnitTypes

  Background:
    Given a RESOScript or Metadata file are provided
    When a RESOScript file is provided
    Then Client Settings and Parameters can be read from the RESOScript
    And a test container was successfully created from the given RESOScript file
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server
    When a metadata file is provided
    Then a test container was successfully created from the given metadata file
    And valid metadata are loaded into the test container

  @PropertyUnitTypes
  Scenario: ListingId
    When "ListingId" exists in the "PropertyUnitTypes" metadata
    Then "ListingId" MUST be "String" data type
    And "ListingId" length SHOULD be equal to the RESO Suggested Max Length of 255

  @PropertyUnitTypes
  Scenario: ListingKey
    When "ListingKey" exists in the "PropertyUnitTypes" metadata
    Then "ListingKey" MUST be "String" data type
    And "ListingKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @PropertyUnitTypes
  Scenario: ListingKeyNumeric
    When "ListingKeyNumeric" exists in the "PropertyUnitTypes" metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type

  @PropertyUnitTypes
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "PropertyUnitTypes" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @PropertyUnitTypes
  Scenario: UnitTypeActualRent
    When "UnitTypeActualRent" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeActualRent" MUST be "Decimal" data type
    And "UnitTypeActualRent" precision SHOULD be equal to the RESO Suggested Max Length of 14
    And "UnitTypeActualRent" scale SHOULD be equal to the RESO Suggested Max Scale of 2

  @PropertyUnitTypes
  Scenario: UnitTypeBathsTotal
    When "UnitTypeBathsTotal" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeBathsTotal" MUST be "Integer" data type

  @PropertyUnitTypes
  Scenario: UnitTypeBedsTotal
    When "UnitTypeBedsTotal" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeBedsTotal" MUST be "Integer" data type

  @PropertyUnitTypes
  Scenario: UnitTypeDescription
    When "UnitTypeDescription" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeDescription" MUST be "String" data type
    And "UnitTypeDescription" length SHOULD be equal to the RESO Suggested Max Length of 1024

  @PropertyUnitTypes
  Scenario: UnitTypeFurnished
    When "UnitTypeFurnished" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeFurnished" MUST be "Single Enumeration" data type

  @PropertyUnitTypes
  Scenario: UnitTypeGarageAttachedYN
    When "UnitTypeGarageAttachedYN" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeGarageAttachedYN" MUST be "Boolean" data type

  @PropertyUnitTypes
  Scenario: UnitTypeGarageSpaces
    When "UnitTypeGarageSpaces" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeGarageSpaces" MUST be "Decimal" data type
    And "UnitTypeGarageSpaces" precision SHOULD be equal to the RESO Suggested Max Length of 14
    And "UnitTypeGarageSpaces" scale SHOULD be equal to the RESO Suggested Max Scale of 2

  @PropertyUnitTypes
  Scenario: UnitTypeKey
    When "UnitTypeKey" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeKey" MUST be "String" data type
    And "UnitTypeKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @PropertyUnitTypes
  Scenario: UnitTypeKeyNumeric
    When "UnitTypeKeyNumeric" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeKeyNumeric" MUST be "Integer" data type

  @PropertyUnitTypes
  Scenario: UnitTypeProForma
    When "UnitTypeProForma" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeProForma" MUST be "Integer" data type

  @PropertyUnitTypes
  Scenario: UnitTypeTotalRent
    When "UnitTypeTotalRent" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeTotalRent" MUST be "Decimal" data type
    And "UnitTypeTotalRent" precision SHOULD be equal to the RESO Suggested Max Length of 14
    And "UnitTypeTotalRent" scale SHOULD be equal to the RESO Suggested Max Scale of 2

  @PropertyUnitTypes
  Scenario: UnitTypeType
    When "UnitTypeType" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeType" MUST be "Single Enumeration" data type
    And "UnitTypeType" MAY contain any of the standard lookups
      | lookupValue | lookupDisplayName |
      | Apartments | Apartments |
      | Efficiency | Efficiency |
      | FourBedroomOrMore | 4 Bedroom Or More |
      | Loft | Loft |
      | ManagersUnit | Manager's Unit |
      | OneBedroom | 1 Bedroom |
      | Penthouse | Penthouse |
      | Studio | Studio |
      | ThreeBedroom | 3 Bedroom |
      | TwoBedroom | 2 Bedroom |

  @PropertyUnitTypes
  Scenario: UnitTypeUnitsTotal
    When "UnitTypeUnitsTotal" exists in the "PropertyUnitTypes" metadata
    Then "UnitTypeUnitsTotal" MUST be "Integer" data type
