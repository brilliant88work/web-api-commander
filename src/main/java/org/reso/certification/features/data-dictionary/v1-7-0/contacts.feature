# This file was autogenerated on: 20200415150423335
Feature: Contacts

  @Anniversary
  Scenario: Anniversary
    Given "Anniversary" exists in the metadata
    Then "Anniversary" MUST be "Date" data type
    And "Anniversary" length should be less than or equal to the RESO Suggested Max Length of 24

  @AssistantEmail
  Scenario: AssistantEmail
    Given "AssistantEmail" exists in the metadata
    Then "AssistantEmail" MUST be "String" data type
    And "AssistantEmail" length should be less than or equal to the RESO Suggested Max Length of 80

  @AssistantName
  Scenario: AssistantName
    Given "AssistantName" exists in the metadata
    Then "AssistantName" MUST be "String" data type
    And "AssistantName" length should be less than or equal to the RESO Suggested Max Length of 150

  @AssistantPhone
  Scenario: AssistantPhone
    Given "AssistantPhone" exists in the metadata
    Then "AssistantPhone" MUST be "String" data type
    And "AssistantPhone" length should be less than or equal to the RESO Suggested Max Length of 16

  @AssistantPhoneExt
  Scenario: AssistantPhoneExt
    Given "AssistantPhoneExt" exists in the metadata
    Then "AssistantPhoneExt" MUST be "String" data type
    And "AssistantPhoneExt" length should be less than or equal to the RESO Suggested Max Length of 10

  @Birthdate
  Scenario: Birthdate
    Given "Birthdate" exists in the metadata
    Then "Birthdate" MUST be "Date" data type
    And "Birthdate" length should be less than or equal to the RESO Suggested Max Length of 10

  @BusinessFax
  Scenario: BusinessFax
    Given "BusinessFax" exists in the metadata
    Then "BusinessFax" MUST be "String" data type
    And "BusinessFax" length should be less than or equal to the RESO Suggested Max Length of 16

  @Children
  Scenario: Children
    Given "Children" exists in the metadata
    Then "Children" MUST be "String" data type
    And "Children" length should be less than or equal to the RESO Suggested Max Length of 150

  @Company
  Scenario: Company
    Given "Company" exists in the metadata
    Then "Company" MUST be "String" data type
    And "Company" length should be less than or equal to the RESO Suggested Max Length of 50

  @ContactKey
  Scenario: ContactKey
    Given "ContactKey" exists in the metadata
    Then "ContactKey" MUST be "String" data type
    And "ContactKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @ContactKeyNumeric
  Scenario: ContactKeyNumeric
    Given "ContactKeyNumeric" exists in the metadata
    Then "ContactKeyNumeric" MUST be "Integer" data type

  @ContactLoginId
  Scenario: ContactLoginId
    Given "ContactLoginId" exists in the metadata
    Then "ContactLoginId" MUST be "String" data type
    And "ContactLoginId" length should be less than or equal to the RESO Suggested Max Length of 25

  @ContactPassword
  Scenario: ContactPassword
    Given "ContactPassword" exists in the metadata
    Then "ContactPassword" MUST be "String" data type
    And "ContactPassword" length should be less than or equal to the RESO Suggested Max Length of 25

  @ContactStatus
  Scenario: ContactStatus
    Given "ContactStatus" exists in the metadata
    And "ContactStatus" enum values exist in the metadata
    And "ContactStatus" enum types MUST have at least one member
    Then "ContactStatus" MUST be "String" data type
    And "ContactStatus" should only contain enum values found in the metadata
    And "ContactStatus" enumerations must match  MUST have annotations if they contain special characters
    And "ContactStatus" length should be less than or equal to the RESO Suggested Max Length of 25

  @ContactType
  Scenario: ContactType
    Given "ContactType" exists in the metadata
    And "ContactType" enum values exist in the metadata
    And "ContactType" enum types MUST have at least one member
    Then "ContactType" MUST be "String Array" data type
    And RESO enumerations for "ContactType" MUST have annotations if they contain special characters
    And "ContactType" length should be less than or equal to the RESO Suggested Max Length of 255

  @Department
  Scenario: Department
    Given "Department" exists in the metadata
    Then "Department" MUST be "String" data type
    And "Department" length should be less than or equal to the RESO Suggested Max Length of 50

  @DirectPhone
  Scenario: DirectPhone
    Given "DirectPhone" exists in the metadata
    Then "DirectPhone" MUST be "String" data type
    And "DirectPhone" length should be less than or equal to the RESO Suggested Max Length of 16

  @Email
  Scenario: Email
    Given "Email" exists in the metadata
    Then "Email" MUST be "String" data type
    And "Email" length should be less than or equal to the RESO Suggested Max Length of 80

  @Email2
  Scenario: Email2
    Given "Email2" exists in the metadata
    Then "Email2" MUST be "String" data type
    And "Email2" length should be less than or equal to the RESO Suggested Max Length of 80

  @Email3
  Scenario: Email3
    Given "Email3" exists in the metadata
    Then "Email3" MUST be "String" data type
    And "Email3" length should be less than or equal to the RESO Suggested Max Length of 80

  @FirstName
  Scenario: FirstName
    Given "FirstName" exists in the metadata
    Then "FirstName" MUST be "String" data type
    And "FirstName" length should be less than or equal to the RESO Suggested Max Length of 50

  @FullName
  Scenario: FullName
    Given "FullName" exists in the metadata
    Then "FullName" MUST be "String" data type
    And "FullName" length should be less than or equal to the RESO Suggested Max Length of 150

  @HomeAddress1
  Scenario: HomeAddress1
    Given "HomeAddress1" exists in the metadata
    Then "HomeAddress1" MUST be "String" data type
    And "HomeAddress1" length should be less than or equal to the RESO Suggested Max Length of 50

  @HomeAddress2
  Scenario: HomeAddress2
    Given "HomeAddress2" exists in the metadata
    Then "HomeAddress2" MUST be "String" data type
    And "HomeAddress2" length should be less than or equal to the RESO Suggested Max Length of 50

  @HomeCarrierRoute
  Scenario: HomeCarrierRoute
    Given "HomeCarrierRoute" exists in the metadata
    Then "HomeCarrierRoute" MUST be "String" data type
    And "HomeCarrierRoute" length should be less than or equal to the RESO Suggested Max Length of 9

  @HomeCity
  Scenario: HomeCity
    Given "HomeCity" exists in the metadata
    Then "HomeCity" MUST be "String" data type
    And "HomeCity" length should be less than or equal to the RESO Suggested Max Length of 50

  @HomeCountry
  Scenario: HomeCountry
    Given "HomeCountry" exists in the metadata
    And "HomeCountry" enum values exist in the metadata
    And "HomeCountry" enum types MUST have at least one member
    Then "HomeCountry" MUST be "String" data type
    And "HomeCountry" should only contain enum values found in the metadata
    And "HomeCountry" enumerations must match  MUST have annotations if they contain special characters
    And "HomeCountry" length should be less than or equal to the RESO Suggested Max Length of 2

  @HomeCountyOrParish
  Scenario: HomeCountyOrParish
    Given "HomeCountyOrParish" exists in the metadata
    And "HomeCountyOrParish" enum values exist in the metadata
    And "HomeCountyOrParish" enum types MUST have at least one member
    Then "HomeCountyOrParish" MUST be "String" data type
    And "HomeCountyOrParish" should only contain enum values found in the metadata
    And "HomeCountyOrParish" enumerations must match  MUST have annotations if they contain special characters
    And "HomeCountyOrParish" length should be less than or equal to the RESO Suggested Max Length of 50

  @HomeFax
  Scenario: HomeFax
    Given "HomeFax" exists in the metadata
    Then "HomeFax" MUST be "String" data type
    And "HomeFax" length should be less than or equal to the RESO Suggested Max Length of 16

  @HomePhone
  Scenario: HomePhone
    Given "HomePhone" exists in the metadata
    Then "HomePhone" MUST be "String" data type
    And "HomePhone" length should be less than or equal to the RESO Suggested Max Length of 16

  @HomePostalCode
  Scenario: HomePostalCode
    Given "HomePostalCode" exists in the metadata
    Then "HomePostalCode" MUST be "String" data type
    And "HomePostalCode" length should be less than or equal to the RESO Suggested Max Length of 10

  @HomePostalCodePlus4
  Scenario: HomePostalCodePlus4
    Given "HomePostalCodePlus4" exists in the metadata
    Then "HomePostalCodePlus4" MUST be "String" data type
    And "HomePostalCodePlus4" length should be less than or equal to the RESO Suggested Max Length of 4

  @HomeStateOrProvince
  Scenario: HomeStateOrProvince
    Given "HomeStateOrProvince" exists in the metadata
    And "HomeStateOrProvince" enum values exist in the metadata
    And "HomeStateOrProvince" enum types MUST have at least one member
    Then "HomeStateOrProvince" MUST be "String" data type
    And "HomeStateOrProvince" should only contain enum values found in the metadata
    And "HomeStateOrProvince" enumerations must match  MUST have annotations if they contain special characters
    And "HomeStateOrProvince" length should be less than or equal to the RESO Suggested Max Length of 2

  @JobTitle
  Scenario: JobTitle
    Given "JobTitle" exists in the metadata
    Then "JobTitle" MUST be "String" data type
    And "JobTitle" length should be less than or equal to the RESO Suggested Max Length of 50

  @Language
  Scenario: Language
    Given "Language" exists in the metadata
    And "Language" enum values exist in the metadata
    And "Language" enum types MUST have at least one member
    Then "Language" MUST be "String Array" data type
    And RESO enumerations for "Language" MUST have annotations if they contain special characters
    And "Language" length should be less than or equal to the RESO Suggested Max Length of 150

  @LastName
  Scenario: LastName
    Given "LastName" exists in the metadata
    Then "LastName" MUST be "String" data type
    And "LastName" length should be less than or equal to the RESO Suggested Max Length of 50

  @LeadSource
  Scenario: LeadSource
    Given "LeadSource" exists in the metadata
    Then "LeadSource" MUST be "String" data type
    And "LeadSource" length should be less than or equal to the RESO Suggested Max Length of 150

  @MiddleName
  Scenario: MiddleName
    Given "MiddleName" exists in the metadata
    Then "MiddleName" MUST be "String" data type
    And "MiddleName" length should be less than or equal to the RESO Suggested Max Length of 50

  @MobilePhone
  Scenario: MobilePhone
    Given "MobilePhone" exists in the metadata
    Then "MobilePhone" MUST be "String" data type
    And "MobilePhone" length should be less than or equal to the RESO Suggested Max Length of 16

  @ModificationTimestamp
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @NamePrefix
  Scenario: NamePrefix
    Given "NamePrefix" exists in the metadata
    Then "NamePrefix" MUST be "String" data type
    And "NamePrefix" length should be less than or equal to the RESO Suggested Max Length of 10

  @NameSuffix
  Scenario: NameSuffix
    Given "NameSuffix" exists in the metadata
    Then "NameSuffix" MUST be "String" data type
    And "NameSuffix" length should be less than or equal to the RESO Suggested Max Length of 10

  @Nickname
  Scenario: Nickname
    Given "Nickname" exists in the metadata
    Then "Nickname" MUST be "String" data type
    And "Nickname" length should be less than or equal to the RESO Suggested Max Length of 50

  @Notes
  Scenario: Notes
    Given "Notes" exists in the metadata
    Then "Notes" MUST be "String" data type
    And "Notes" length should be less than or equal to the RESO Suggested Max Length of 1024

  @OfficePhone
  Scenario: OfficePhone
    Given "OfficePhone" exists in the metadata
    Then "OfficePhone" MUST be "String" data type
    And "OfficePhone" length should be less than or equal to the RESO Suggested Max Length of 16

  @OfficePhoneExt
  Scenario: OfficePhoneExt
    Given "OfficePhoneExt" exists in the metadata
    Then "OfficePhoneExt" MUST be "String" data type
    And "OfficePhoneExt" length should be less than or equal to the RESO Suggested Max Length of 10

  @OriginalEntryTimestamp
  Scenario: OriginalEntryTimestamp
    Given "OriginalEntryTimestamp" exists in the metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
    And "OriginalEntryTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @OriginatingSystemContactKey
  Scenario: OriginatingSystemContactKey
    Given "OriginatingSystemContactKey" exists in the metadata
    Then "OriginatingSystemContactKey" MUST be "String" data type
    And "OriginatingSystemContactKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemID
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length should be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemName
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length should be less than or equal to the RESO Suggested Max Length of 255

  @OtherAddress1
  Scenario: OtherAddress1
    Given "OtherAddress1" exists in the metadata
    Then "OtherAddress1" MUST be "String" data type
    And "OtherAddress1" length should be less than or equal to the RESO Suggested Max Length of 50

  @OtherAddress2
  Scenario: OtherAddress2
    Given "OtherAddress2" exists in the metadata
    Then "OtherAddress2" MUST be "String" data type
    And "OtherAddress2" length should be less than or equal to the RESO Suggested Max Length of 50

  @OtherCarrierRoute
  Scenario: OtherCarrierRoute
    Given "OtherCarrierRoute" exists in the metadata
    Then "OtherCarrierRoute" MUST be "String" data type
    And "OtherCarrierRoute" length should be less than or equal to the RESO Suggested Max Length of 9

  @OtherCity
  Scenario: OtherCity
    Given "OtherCity" exists in the metadata
    Then "OtherCity" MUST be "String" data type
    And "OtherCity" length should be less than or equal to the RESO Suggested Max Length of 50

  @OtherCountry
  Scenario: OtherCountry
    Given "OtherCountry" exists in the metadata
    And "OtherCountry" enum values exist in the metadata
    And "OtherCountry" enum types MUST have at least one member
    Then "OtherCountry" MUST be "String" data type
    And "OtherCountry" should only contain enum values found in the metadata
    And "OtherCountry" enumerations must match  MUST have annotations if they contain special characters
    And "OtherCountry" length should be less than or equal to the RESO Suggested Max Length of 2

  @OtherCountyOrParish
  Scenario: OtherCountyOrParish
    Given "OtherCountyOrParish" exists in the metadata
    And "OtherCountyOrParish" enum values exist in the metadata
    And "OtherCountyOrParish" enum types MUST have at least one member
    Then "OtherCountyOrParish" MUST be "String" data type
    And "OtherCountyOrParish" should only contain enum values found in the metadata
    And "OtherCountyOrParish" enumerations must match  MUST have annotations if they contain special characters
    And "OtherCountyOrParish" length should be less than or equal to the RESO Suggested Max Length of 50

  @OtherPhoneType
  Scenario: OtherPhoneType
    Given "OtherPhoneType" exists in the metadata
    And "OtherPhoneType" enum values exist in the metadata
    And "OtherPhoneType" enum types MUST have at least one member
    Then "OtherPhoneType" MUST be "String" data type
    And "OtherPhoneType" should only contain enum values found in the metadata
    And "OtherPhoneType" enumerations must match  MUST have annotations if they contain special characters
    And "OtherPhoneType" length should be less than or equal to the RESO Suggested Max Length of 25

  @OtherPhone[Type]Ext
  Scenario: OtherPhone[Type]Ext
    Given "OtherPhone[Type]Ext" exists in the metadata
    Then "OtherPhone[Type]Ext" MUST be "String" data type
    And "OtherPhone[Type]Ext" length should be less than or equal to the RESO Suggested Max Length of 10

  @OtherPhone[Type]Number
  Scenario: OtherPhone[Type]Number
    Given "OtherPhone[Type]Number" exists in the metadata
    Then "OtherPhone[Type]Number" MUST be "String" data type
    And "OtherPhone[Type]Number" length should be less than or equal to the RESO Suggested Max Length of 16

  @OtherPostalCode
  Scenario: OtherPostalCode
    Given "OtherPostalCode" exists in the metadata
    Then "OtherPostalCode" MUST be "String" data type
    And "OtherPostalCode" length should be less than or equal to the RESO Suggested Max Length of 10

  @OtherPostalCodePlus4
  Scenario: OtherPostalCodePlus4
    Given "OtherPostalCodePlus4" exists in the metadata
    Then "OtherPostalCodePlus4" MUST be "String" data type
    And "OtherPostalCodePlus4" length should be less than or equal to the RESO Suggested Max Length of 4

  @OtherStateOrProvince
  Scenario: OtherStateOrProvince
    Given "OtherStateOrProvince" exists in the metadata
    And "OtherStateOrProvince" enum values exist in the metadata
    And "OtherStateOrProvince" enum types MUST have at least one member
    Then "OtherStateOrProvince" MUST be "String" data type
    And "OtherStateOrProvince" should only contain enum values found in the metadata
    And "OtherStateOrProvince" enumerations must match  MUST have annotations if they contain special characters
    And "OtherStateOrProvince" length should be less than or equal to the RESO Suggested Max Length of 2

  @OwnerMemberID
  Scenario: OwnerMemberID
    Given "OwnerMemberID" exists in the metadata
    Then "OwnerMemberID" MUST be "String" data type
    And "OwnerMemberID" length should be less than or equal to the RESO Suggested Max Length of 25

  @OwnerMemberKey
  Scenario: OwnerMemberKey
    Given "OwnerMemberKey" exists in the metadata
    Then "OwnerMemberKey" MUST be "String" data type
    And "OwnerMemberKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @OwnerMemberKeyNumeric
  Scenario: OwnerMemberKeyNumeric
    Given "OwnerMemberKeyNumeric" exists in the metadata
    Then "OwnerMemberKeyNumeric" MUST be "Integer" data type

  @Pager
  Scenario: Pager
    Given "Pager" exists in the metadata
    Then "Pager" MUST be "String" data type
    And "Pager" length should be less than or equal to the RESO Suggested Max Length of 16

  @PhoneTTYTDD
  Scenario: PhoneTTYTDD
    Given "PhoneTTYTDD" exists in the metadata
    Then "PhoneTTYTDD" MUST be "String" data type
    And "PhoneTTYTDD" length should be less than or equal to the RESO Suggested Max Length of 16

  @PreferredAddress
  Scenario: PreferredAddress
    Given "PreferredAddress" exists in the metadata
    And "PreferredAddress" enum values exist in the metadata
    And "PreferredAddress" enum types MUST have at least one member
    Then "PreferredAddress" MUST be "String" data type
    And "PreferredAddress" should only contain enum values found in the metadata
    And "PreferredAddress" enumerations must match  MUST have annotations if they contain special characters
    And "PreferredAddress" length should be less than or equal to the RESO Suggested Max Length of 255

  @PreferredPhone
  Scenario: PreferredPhone
    Given "PreferredPhone" exists in the metadata
    And "PreferredPhone" enum values exist in the metadata
    And "PreferredPhone" enum types MUST have at least one member
    Then "PreferredPhone" MUST be "String" data type
    And "PreferredPhone" should only contain enum values found in the metadata
    And "PreferredPhone" enumerations must match  MUST have annotations if they contain special characters
    And "PreferredPhone" length should be less than or equal to the RESO Suggested Max Length of 255

  @ReferredBy
  Scenario: ReferredBy
    Given "ReferredBy" exists in the metadata
    Then "ReferredBy" MUST be "String" data type
    And "ReferredBy" length should be less than or equal to the RESO Suggested Max Length of 150

  @SocialMediaType
  Scenario: SocialMediaType
    Given "SocialMediaType" exists in the metadata
    And "SocialMediaType" enum values exist in the metadata
    And "SocialMediaType" enum types MUST have at least one member
    Then "SocialMediaType" MUST be "String" data type
    And "SocialMediaType" should only contain enum values found in the metadata
    And "SocialMediaType" enumerations must match  MUST have annotations if they contain special characters
    And "SocialMediaType" length should be less than or equal to the RESO Suggested Max Length of 25

  @SocialMedia[Type]UrlOrId
  Scenario: SocialMedia[Type]UrlOrId
    Given "SocialMedia[Type]UrlOrId" exists in the metadata
    Then "SocialMedia[Type]UrlOrId" MUST be "String" data type
    And "SocialMedia[Type]UrlOrId" length should be less than or equal to the RESO Suggested Max Length of 8000

  @SourceSystemContactKey
  Scenario: SourceSystemContactKey
    Given "SourceSystemContactKey" exists in the metadata
    Then "SourceSystemContactKey" MUST be "String" data type
    And "SourceSystemContactKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemID
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length should be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemName
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length should be less than or equal to the RESO Suggested Max Length of 255

  @SpousePartnerName
  Scenario: SpousePartnerName
    Given "SpousePartnerName" exists in the metadata
    Then "SpousePartnerName" MUST be "String" data type
    And "SpousePartnerName" length should be less than or equal to the RESO Suggested Max Length of 150

  @TollFreePhone
  Scenario: TollFreePhone
    Given "TollFreePhone" exists in the metadata
    Then "TollFreePhone" MUST be "String" data type
    And "TollFreePhone" length should be less than or equal to the RESO Suggested Max Length of 16

  @UserDefinedFieldName[#]
  Scenario: UserDefinedFieldName[#]
    Given "UserDefinedFieldName[#]" exists in the metadata
    Then "UserDefinedFieldName[#]" MUST be "String" data type
    And "UserDefinedFieldName[#]" length should be less than or equal to the RESO Suggested Max Length of 500

  @UserDefinedFieldValue[#]
  Scenario: UserDefinedFieldValue[#]
    Given "UserDefinedFieldValue[#]" exists in the metadata
    Then "UserDefinedFieldValue[#]" MUST be "String" data type
    And "UserDefinedFieldValue[#]" length should be less than or equal to the RESO Suggested Max Length of 500

  @VoiceMail
  Scenario: VoiceMail
    Given "VoiceMail" exists in the metadata
    Then "VoiceMail" MUST be "String" data type
    And "VoiceMail" length should be less than or equal to the RESO Suggested Max Length of 16

  @VoiceMailExt
  Scenario: VoiceMailExt
    Given "VoiceMailExt" exists in the metadata
    Then "VoiceMailExt" MUST be "String" data type
    And "VoiceMailExt" length should be less than or equal to the RESO Suggested Max Length of 10

  @WorkAddress1
  Scenario: WorkAddress1
    Given "WorkAddress1" exists in the metadata
    Then "WorkAddress1" MUST be "String" data type
    And "WorkAddress1" length should be less than or equal to the RESO Suggested Max Length of 50

  @WorkAddress2
  Scenario: WorkAddress2
    Given "WorkAddress2" exists in the metadata
    Then "WorkAddress2" MUST be "String" data type
    And "WorkAddress2" length should be less than or equal to the RESO Suggested Max Length of 50

  @WorkCarrierRoute
  Scenario: WorkCarrierRoute
    Given "WorkCarrierRoute" exists in the metadata
    Then "WorkCarrierRoute" MUST be "String" data type
    And "WorkCarrierRoute" length should be less than or equal to the RESO Suggested Max Length of 9

  @WorkCity
  Scenario: WorkCity
    Given "WorkCity" exists in the metadata
    Then "WorkCity" MUST be "String" data type
    And "WorkCity" length should be less than or equal to the RESO Suggested Max Length of 50

  @WorkCountry
  Scenario: WorkCountry
    Given "WorkCountry" exists in the metadata
    And "WorkCountry" enum values exist in the metadata
    And "WorkCountry" enum types MUST have at least one member
    Then "WorkCountry" MUST be "String" data type
    And "WorkCountry" should only contain enum values found in the metadata
    And "WorkCountry" enumerations must match  MUST have annotations if they contain special characters
    And "WorkCountry" length should be less than or equal to the RESO Suggested Max Length of 2

  @WorkCountyOrParish
  Scenario: WorkCountyOrParish
    Given "WorkCountyOrParish" exists in the metadata
    And "WorkCountyOrParish" enum values exist in the metadata
    And "WorkCountyOrParish" enum types MUST have at least one member
    Then "WorkCountyOrParish" MUST be "String" data type
    And "WorkCountyOrParish" should only contain enum values found in the metadata
    And "WorkCountyOrParish" enumerations must match  MUST have annotations if they contain special characters
    And "WorkCountyOrParish" length should be less than or equal to the RESO Suggested Max Length of 50

  @WorkPostalCode
  Scenario: WorkPostalCode
    Given "WorkPostalCode" exists in the metadata
    Then "WorkPostalCode" MUST be "String" data type
    And "WorkPostalCode" length should be less than or equal to the RESO Suggested Max Length of 10

  @WorkPostalCodePlus4
  Scenario: WorkPostalCodePlus4
    Given "WorkPostalCodePlus4" exists in the metadata
    Then "WorkPostalCodePlus4" MUST be "String" data type
    And "WorkPostalCodePlus4" length should be less than or equal to the RESO Suggested Max Length of 4

  @WorkStateOrProvince
  Scenario: WorkStateOrProvince
    Given "WorkStateOrProvince" exists in the metadata
    And "WorkStateOrProvince" enum values exist in the metadata
    And "WorkStateOrProvince" enum types MUST have at least one member
    Then "WorkStateOrProvince" MUST be "String" data type
    And "WorkStateOrProvince" should only contain enum values found in the metadata
    And "WorkStateOrProvince" enumerations must match  MUST have annotations if they contain special characters
    And "WorkStateOrProvince" length should be less than or equal to the RESO Suggested Max Length of 2