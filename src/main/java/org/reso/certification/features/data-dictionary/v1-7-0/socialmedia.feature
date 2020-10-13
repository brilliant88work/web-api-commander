# This file was autogenerated on: 20201012211025138
Feature: SocialMedia

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

  @SocialMedia
  Scenario: ClassName
    When "ClassName" exists in the "SocialMedia" metadata
    Then "ClassName" MUST be "Single Enumeration" data type
    And "ClassName" MAY contain any of the standard lookups
      | lookupValue | lookupDisplayName |
      | BusinessOpportunity | Business Opportunity |
      | CommercialLease | Commercial Lease |
      | CommercialSale | Commercial Sale |
      | Contacts | Contacts |
      | CrossProperty | Cross Property |
      | Farm | Farm |
      | HistoryTransactional | History Transactional |
      | Land | Land |
      | ManufacturedInPark | Manufactured In Park |
      | Media | Media |
      | Member | Member |
      | Office | Office |
      | OpenHouse | Open House |
      | Residential | Residential |
      | ResidentialIncome | Residential Income |
      | ResidentialLease | Residential Lease |
      | SavedSearch | Saved Search |

  @SocialMedia
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "SocialMedia" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @SocialMedia
  Scenario: ResourceName
    When "ResourceName" exists in the "SocialMedia" metadata
    Then "ResourceName" MUST be "Single Enumeration" data type
    And "ResourceName" MAY contain any of the standard lookups
      | lookupValue | lookupDisplayName |
      | Contacts | Contacts |
      | Member | Member |
      | Office | Office |
      | Property | Property |

  @SocialMedia
  Scenario: ResourceRecordID
    When "ResourceRecordID" exists in the "SocialMedia" metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be equal to the RESO Suggested Max Length of 255

  @SocialMedia
  Scenario: ResourceRecordKey
    When "ResourceRecordKey" exists in the "SocialMedia" metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @SocialMedia
  Scenario: ResourceRecordKeyNumeric
    When "ResourceRecordKeyNumeric" exists in the "SocialMedia" metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type

  @SocialMedia
  Scenario: SocialMediaKey
    When "SocialMediaKey" exists in the "SocialMedia" metadata
    Then "SocialMediaKey" MUST be "String" data type
    And "SocialMediaKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @SocialMedia
  Scenario: SocialMediaKeyNumeric
    When "SocialMediaKeyNumeric" exists in the "SocialMedia" metadata
    Then "SocialMediaKeyNumeric" MUST be "Integer" data type

  @SocialMedia
  Scenario: SocialMediaType
    When "SocialMediaType" exists in the "SocialMedia" metadata
    Then "SocialMediaType" MUST be "Single Enumeration" data type
    And "SocialMediaType" MAY contain any of the standard lookups
      | lookupValue | lookupDisplayName |
      | Blog | Blog |
      | Digg | Digg |
      | Facebook | Facebook |
      | FacebookMessenger | Facebook Messenger |
      | Googleplus | GooglePlus |
      | iMessage | iMessage |
      | Instagram | Instagram |
      | Linkedin | LinkedIn |
      | Pinterest | Pinterest |
      | Reddit | Reddit |
      | Slack | Slack |
      | Snapchat | Snapchat |
      | Stumbleupon | StumbleUpon |
      | Tumblr | Tumblr |
      | Twitter | Twitter |
      | Website | Website |
      | Youtube | YouTube |

  @SocialMedia
  Scenario: SocialMediaUrlOrId
    When "SocialMediaUrlOrId" exists in the "SocialMedia" metadata
    Then "SocialMediaUrlOrId" MUST be "String" data type
    And "SocialMediaUrlOrId" length SHOULD be equal to the RESO Suggested Max Length of 8000
