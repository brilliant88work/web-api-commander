# This file was autogenerated on: 202006161106009
Feature: Rules

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ClassName @Rules
  Scenario: ClassName
    When "ClassName" exists in the "Rules" metadata
    Then "ClassName" MUST be "Single Enumeration" data type

  @FieldKey @Rules
  Scenario: FieldKey
    When "FieldKey" exists in the "Rules" metadata
    Then "FieldKey" MUST be "String" data type
    And "FieldKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @FieldKeyNumeric @Rules
  Scenario: FieldKeyNumeric
    When "FieldKeyNumeric" exists in the "Rules" metadata
    Then "FieldKeyNumeric" MUST be "Integer" data type

  @FieldName @Rules
  Scenario: FieldName
    When "FieldName" exists in the "Rules" metadata
    Then "FieldName" MUST be "String" data type
    And "FieldName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ModificationTimestamp @Rules
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "Rules" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @OriginalEntryTimestamp @Rules
  Scenario: OriginalEntryTimestamp
    When "OriginalEntryTimestamp" exists in the "Rules" metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type

  @OriginatingSystemID @Rules
  Scenario: OriginatingSystemID
    When "OriginatingSystemID" exists in the "Rules" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemName @Rules
  Scenario: OriginatingSystemName
    When "OriginatingSystemName" exists in the "Rules" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemRuleKey @Rules
  Scenario: OriginatingSystemRuleKey
    When "OriginatingSystemRuleKey" exists in the "Rules" metadata
    Then "OriginatingSystemRuleKey" MUST be "String" data type
    And "OriginatingSystemRuleKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceName @Rules
  Scenario: ResourceName
    When "ResourceName" exists in the "Rules" metadata
    Then "ResourceName" MUST be "Single Enumeration" data type

  @RuleAction @Rules
  Scenario: RuleAction
    When "RuleAction" exists in the "Rules" metadata
    Then "RuleAction" MUST be "String" data type
    And "RuleAction" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @RuleDescription @Rules
  Scenario: RuleDescription
    When "RuleDescription" exists in the "Rules" metadata
    Then "RuleDescription" MUST be "String" data type
    And "RuleDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @RuleEnabledYN @Rules
  Scenario: RuleEnabledYN
    When "RuleEnabledYN" exists in the "Rules" metadata
    Then "RuleEnabledYN" MUST be "Boolean" data type

  @RuleErrorText @Rules
  Scenario: RuleErrorText
    When "RuleErrorText" exists in the "Rules" metadata
    Then "RuleErrorText" MUST be "String" data type
    And "RuleErrorText" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @RuleExpression @Rules
  Scenario: RuleExpression
    When "RuleExpression" exists in the "Rules" metadata
    Then "RuleExpression" MUST be "String" data type
    And "RuleExpression" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @RuleFormat @Rules
  Scenario: RuleFormat
    When "RuleFormat" exists in the "Rules" metadata
    Then "RuleFormat" MUST be "Single Enumeration" data type

  @RuleHelpText @Rules
  Scenario: RuleHelpText
    When "RuleHelpText" exists in the "Rules" metadata
    Then "RuleHelpText" MUST be "String" data type
    And "RuleHelpText" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @RuleKey @Rules
  Scenario: RuleKey
    When "RuleKey" exists in the "Rules" metadata
    Then "RuleKey" MUST be "String" data type
    And "RuleKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @RuleKeyNumeric @Rules
  Scenario: RuleKeyNumeric
    When "RuleKeyNumeric" exists in the "Rules" metadata
    Then "RuleKeyNumeric" MUST be "Integer" data type

  @RuleName @Rules
  Scenario: RuleName
    When "RuleName" exists in the "Rules" metadata
    Then "RuleName" MUST be "String" data type
    And "RuleName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @RuleOrder @Rules
  Scenario: RuleOrder
    When "RuleOrder" exists in the "Rules" metadata
    Then "RuleOrder" MUST be "Integer" data type

  @RuleType @Rules
  Scenario: RuleType
    When "RuleType" exists in the "Rules" metadata
    Then "RuleType" MUST be "Single Enumeration" data type

  @RuleVersion @Rules
  Scenario: RuleVersion
    When "RuleVersion" exists in the "Rules" metadata
    Then "RuleVersion" MUST be "String" data type
    And "RuleVersion" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @RuleWarningText @Rules
  Scenario: RuleWarningText
    When "RuleWarningText" exists in the "Rules" metadata
    Then "RuleWarningText" MUST be "String" data type
    And "RuleWarningText" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @SourceSystemHistoryKey @Rules
  Scenario: SourceSystemHistoryKey
    When "SourceSystemHistoryKey" exists in the "Rules" metadata
    Then "SourceSystemHistoryKey" MUST be "String" data type
    And "SourceSystemHistoryKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemID @Rules
  Scenario: SourceSystemID
    When "SourceSystemID" exists in the "Rules" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemName @Rules
  Scenario: SourceSystemName
    When "SourceSystemName" exists in the "Rules" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255
