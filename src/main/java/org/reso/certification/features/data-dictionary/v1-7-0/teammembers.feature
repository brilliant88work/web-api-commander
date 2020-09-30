# This file was autogenerated on: 20200930010931296
Feature: TeamMembers

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

@TeamMembers
  Scenario: MemberKey
    When "MemberKey" exists in the "TeamMembers" metadata
    Then "MemberKey" MUST be "String" data type
    And "MemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@TeamMembers
  Scenario: MemberKeyNumeric
    When "MemberKeyNumeric" exists in the "TeamMembers" metadata
    Then "MemberKeyNumeric" MUST be "Integer" data type

@TeamMembers
  Scenario: MemberLoginId
    When "MemberLoginId" exists in the "TeamMembers" metadata
    Then "MemberLoginId" MUST be "String" data type
    And "MemberLoginId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@TeamMembers
  Scenario: MemberMlsId
    When "MemberMlsId" exists in the "TeamMembers" metadata
    Then "MemberMlsId" MUST be "String" data type
    And "MemberMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@TeamMembers
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "TeamMembers" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

@TeamMembers
  Scenario: OriginalEntryTimestamp
    When "OriginalEntryTimestamp" exists in the "TeamMembers" metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type

@TeamMembers
  Scenario: OriginatingSystemID
    When "OriginatingSystemID" exists in the "TeamMembers" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@TeamMembers
  Scenario: OriginatingSystemKey
    When "OriginatingSystemKey" exists in the "TeamMembers" metadata
    Then "OriginatingSystemKey" MUST be "String" data type
    And "OriginatingSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@TeamMembers
  Scenario: OriginatingSystemName
    When "OriginatingSystemName" exists in the "TeamMembers" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@TeamMembers
  Scenario: SourceSystemID
    When "SourceSystemID" exists in the "TeamMembers" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@TeamMembers
  Scenario: SourceSystemKey
    When "SourceSystemKey" exists in the "TeamMembers" metadata
    Then "SourceSystemKey" MUST be "String" data type
    And "SourceSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@TeamMembers
  Scenario: SourceSystemName
    When "SourceSystemName" exists in the "TeamMembers" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@TeamMembers
  Scenario: TeamImpersonationLevel
    When "TeamImpersonationLevel" exists in the "TeamMembers" metadata
    Then "TeamImpersonationLevel" MUST be "Single Enumeration" data type

@TeamMembers
  Scenario: TeamKey
    When "TeamKey" exists in the "TeamMembers" metadata
    Then "TeamKey" MUST be "String" data type
    And "TeamKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@TeamMembers
  Scenario: TeamKeyNumeric
    When "TeamKeyNumeric" exists in the "TeamMembers" metadata
    Then "TeamKeyNumeric" MUST be "Integer" data type

@TeamMembers
  Scenario: TeamMemberKey
    When "TeamMemberKey" exists in the "TeamMembers" metadata
    Then "TeamMemberKey" MUST be "String" data type
    And "TeamMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@TeamMembers
  Scenario: TeamMemberKeyNumeric
    When "TeamMemberKeyNumeric" exists in the "TeamMembers" metadata
    Then "TeamMemberKeyNumeric" MUST be "Integer" data type

@TeamMembers
  Scenario: TeamMemberNationalAssociationId
    When "TeamMemberNationalAssociationId" exists in the "TeamMembers" metadata
    Then "TeamMemberNationalAssociationId" MUST be "String" data type
    And "TeamMemberNationalAssociationId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@TeamMembers
  Scenario: TeamMemberStateLicense
    When "TeamMemberStateLicense" exists in the "TeamMembers" metadata
    Then "TeamMemberStateLicense" MUST be "String" data type
    And "TeamMemberStateLicense" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

@TeamMembers
  Scenario: TeamMemberType
    When "TeamMemberType" exists in the "TeamMembers" metadata
    Then "TeamMemberType" MUST be "Single Enumeration" data type
