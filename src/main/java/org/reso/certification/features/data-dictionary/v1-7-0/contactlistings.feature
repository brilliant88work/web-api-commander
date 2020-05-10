# This file was autogenerated on: 20200510010510583
Feature: ContactListings

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And metadata were retrieved from the server
    And metadata are valid

  @AgentNotesUnreadYN @ContactListings
Scenario: AgentNotesUnreadYN
    Given "AgentNotesUnreadYN" exists in the metadata
    And "AgentNotesUnreadYN" is not a synonym for another field
    Then "AgentNotesUnreadYN" MUST be "Boolean" data type

  @ClassName @ContactListings
  Scenario: ClassName
    Given "ClassName" exists in the metadata
    And "ClassName" enum values exist in the metadata
    And "ClassName" enum types MUST have exactly one member
    Then "ClassName" MUST be "String" data type
    And "ClassName" MUST only contain enum values found in the metadata
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ContactKey @ContactListings
  Scenario: ContactKey
    Given "ContactKey" exists in the metadata
    Then "ContactKey" MUST be "String" data type
    And "ContactKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ContactKeyNumeric @ContactListings
  Scenario: ContactKeyNumeric
    Given "ContactKeyNumeric" exists in the metadata
    Then "ContactKeyNumeric" MUST be "Integer" data type

  @ContactListingPreference @ContactListings
  Scenario: ContactListingPreference
    Given "ContactListingPreference" exists in the metadata
    And "ContactListingPreference" enum values exist in the metadata
    And "ContactListingPreference" enum types MUST have exactly one member
    Then "ContactListingPreference" MUST be "String" data type
    And "ContactListingPreference" MUST only contain enum values found in the metadata
    And "ContactListingPreference" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ContactListingsKey @ContactListings
  Scenario: ContactListingsKey
    Given "ContactListingsKey" exists in the metadata
    Then "ContactListingsKey" MUST be "String" data type
    And "ContactListingsKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ContactListingsKeyNumeric @ContactListings
  Scenario: ContactListingsKeyNumeric
    Given "ContactListingsKeyNumeric" exists in the metadata
    Then "ContactListingsKeyNumeric" MUST be "Integer" data type

  @ContactLoginId @ContactListings
  Scenario: ContactLoginId
    Given "ContactLoginId" exists in the metadata
    Then "ContactLoginId" MUST be "String" data type
    And "ContactLoginId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ContactNotesUnreadYN @ContactListings
Scenario: ContactNotesUnreadYN
    Given "ContactNotesUnreadYN" exists in the metadata
    And "ContactNotesUnreadYN" is not a synonym for another field
    Then "ContactNotesUnreadYN" MUST be "Boolean" data type

  @DirectEmailYN @ContactListings
Scenario: DirectEmailYN
    Given "DirectEmailYN" exists in the metadata
    And "DirectEmailYN" is not a synonym for another field
    Then "DirectEmailYN" MUST be "Boolean" data type

  @LastAgentNoteTimestamp @ContactListings
  Scenario: LastAgentNoteTimestamp
    Given "LastAgentNoteTimestamp" exists in the metadata
    Then "LastAgentNoteTimestamp" MUST be "Timestamp" data type
    And "LastAgentNoteTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @LastContactNoteTimestamp @ContactListings
  Scenario: LastContactNoteTimestamp
    Given "LastContactNoteTimestamp" exists in the metadata
    Then "LastContactNoteTimestamp" MUST be "Timestamp" data type
    And "LastContactNoteTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @ListingId @ContactListings
  Scenario: ListingId
    Given "ListingId" exists in the metadata
    Then "ListingId" MUST be "String" data type
    And "ListingId" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKey @ContactListings
  Scenario: ListingKey
    Given "ListingKey" exists in the metadata
    Then "ListingKey" MUST be "String" data type
    And "ListingKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKeyNumeric @ContactListings
  Scenario: ListingKeyNumeric
    Given "ListingKeyNumeric" exists in the metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type

  @ListingModificationTimestamp @ContactListings
  Scenario: ListingModificationTimestamp
    Given "ListingModificationTimestamp" exists in the metadata
    Then "ListingModificationTimestamp" MUST be "Timestamp" data type
    And "ListingModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @ListingSentTimestamp @ContactListings
  Scenario: ListingSentTimestamp
    Given "ListingSentTimestamp" exists in the metadata
    Then "ListingSentTimestamp" MUST be "Timestamp" data type
    And "ListingSentTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @ListingViewedYN @ContactListings
Scenario: ListingViewedYN
    Given "ListingViewedYN" exists in the metadata
    And "ListingViewedYN" is not a synonym for another field
    Then "ListingViewedYN" MUST be "Boolean" data type

  @ModificationTimestamp @ContactListings
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @PortalLastVisitedTimestamp @ContactListings
  Scenario: PortalLastVisitedTimestamp
    Given "PortalLastVisitedTimestamp" exists in the metadata
    Then "PortalLastVisitedTimestamp" MUST be "Timestamp" data type
    And "PortalLastVisitedTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @ResourceName @ContactListings
  Scenario: ResourceName
    Given "ResourceName" exists in the metadata
    And "ResourceName" enum values exist in the metadata
    And "ResourceName" enum types MUST have exactly one member
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" MUST only contain enum values found in the metadata
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50