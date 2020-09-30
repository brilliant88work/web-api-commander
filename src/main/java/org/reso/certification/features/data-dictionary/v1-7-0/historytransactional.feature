# This file was autogenerated on: 20200930010931296
Feature: HistoryTransactional

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

@HistoryTransactional
  Scenario: ChangeType
    When "ChangeType" exists in the "HistoryTransactional" metadata
    Then "ChangeType" MUST be "Single Enumeration" data type

@HistoryTransactional
  Scenario: ChangedByMemberID
    When "ChangedByMemberID" exists in the "HistoryTransactional" metadata
    Then "ChangedByMemberID" MUST be "String" data type
    And "ChangedByMemberID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@HistoryTransactional
  Scenario: ChangedByMemberKey
    When "ChangedByMemberKey" exists in the "HistoryTransactional" metadata
    Then "ChangedByMemberKey" MUST be "String" data type
    And "ChangedByMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: ChangedByMemberKeyNumeric
    When "ChangedByMemberKeyNumeric" exists in the "HistoryTransactional" metadata
    Then "ChangedByMemberKeyNumeric" MUST be "Integer" data type

@HistoryTransactional
  Scenario: ClassName
    When "ClassName" exists in the "HistoryTransactional" metadata
    Then "ClassName" MUST be "String" data type
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: FieldKey
    When "FieldKey" exists in the "HistoryTransactional" metadata
    Then "FieldKey" MUST be "String" data type
    And "FieldKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: FieldKeyNumeric
    When "FieldKeyNumeric" exists in the "HistoryTransactional" metadata
    Then "FieldKeyNumeric" MUST be "Integer" data type

@HistoryTransactional
  Scenario: FieldName
    When "FieldName" exists in the "HistoryTransactional" metadata
    Then "FieldName" MUST be "String" data type
    And "FieldName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: HistoryTransactionalKey
    When "HistoryTransactionalKey" exists in the "HistoryTransactional" metadata
    Then "HistoryTransactionalKey" MUST be "String" data type
    And "HistoryTransactionalKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: HistoryTransactionalKeyNumeric
    When "HistoryTransactionalKeyNumeric" exists in the "HistoryTransactional" metadata
    Then "HistoryTransactionalKeyNumeric" MUST be "Integer" data type

@HistoryTransactional
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "HistoryTransactional" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

@HistoryTransactional
  Scenario: NewValue
    When "NewValue" exists in the "HistoryTransactional" metadata
    Then "NewValue" MUST be "String" data type
    And "NewValue" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

@HistoryTransactional
  Scenario: OriginatingSystemHistoryKey
    When "OriginatingSystemHistoryKey" exists in the "HistoryTransactional" metadata
    Then "OriginatingSystemHistoryKey" MUST be "String" data type
    And "OriginatingSystemHistoryKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: OriginatingSystemID
    When "OriginatingSystemID" exists in the "HistoryTransactional" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@HistoryTransactional
  Scenario: OriginatingSystemName
    When "OriginatingSystemName" exists in the "HistoryTransactional" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: PreviousValue
    When "PreviousValue" exists in the "HistoryTransactional" metadata
    Then "PreviousValue" MUST be "String" data type
    And "PreviousValue" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

@HistoryTransactional
  Scenario: ResourceName
    When "ResourceName" exists in the "HistoryTransactional" metadata
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: ResourceRecordID
    When "ResourceRecordID" exists in the "HistoryTransactional" metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: ResourceRecordKey
    When "ResourceRecordKey" exists in the "HistoryTransactional" metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: ResourceRecordKeyNumeric
    When "ResourceRecordKeyNumeric" exists in the "HistoryTransactional" metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type

@HistoryTransactional
  Scenario: SourceSystemHistoryKey
    When "SourceSystemHistoryKey" exists in the "HistoryTransactional" metadata
    Then "SourceSystemHistoryKey" MUST be "String" data type
    And "SourceSystemHistoryKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

@HistoryTransactional
  Scenario: SourceSystemID
    When "SourceSystemID" exists in the "HistoryTransactional" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

@HistoryTransactional
  Scenario: SourceSystemName
    When "SourceSystemName" exists in the "HistoryTransactional" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255
