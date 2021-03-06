package org.reso.certification.codegen;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.Sheet;
import org.reso.commander.common.Utils;
import org.reso.models.ReferenceStandardField;
import org.reso.models.ReferenceStandardLookup;
import org.reso.models.ReferenceStandardRelationship;
import org.xml.sax.InputSource;
import org.xml.sax.helpers.DefaultHandler;

import javax.xml.parsers.SAXParserFactory;
import java.io.StringReader;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static org.reso.certification.stepdefs.DataDictionary.REFERENCE_WORKSHEET;
import static org.reso.commander.common.DataDictionaryMetadata.v1_7.WELL_KNOWN_KEYS.*;
import static org.reso.commander.common.Utils.wrapColumns;

public class EDMXProcessor extends WorksheetProcessor {
  private static final Logger LOG = LogManager.getLogger(EDMXProcessor.class);
  final static String EMPTY_STRING = "";
  final static String RESO_NAMESPACE = "org.reso.metadata";

  String openEntityTypeTag = null, closeEntityTypeTag = null, keyMarkup = null;

  final static String openingDataServicesTag =
      "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n" +
          "<!-- This file was autogenerated from " + REFERENCE_WORKSHEET + " on: " + Utils.getTimestamp() + " -->\n" +
          "<edmx:Edmx xmlns:edmx=\"http://docs.oasis-open.org/odata/ns/edmx\" Version=\"4.0\">\n" +
          "  <edmx:DataServices>\n";

  final static String closingDataServicesTag =
      "  </edmx:DataServices>\n" +
          "</edmx:Edmx>\n";

  @Override
  public void processResourceSheet(Sheet sheet) {
    this.sheet = sheet;
    openEntityTypeTag  = "\n      <EntityType Name=\"" + sheet.getSheetName() + "\">\n";
    closeEntityTypeTag = "      </EntityType>\n";
  }

  //TODO: add KeyNumeric handler
  private String getKeyMarkup(String resourceName) {
    if (resourceName == null) return null;

    String targetKeyName = null;
    switch(resourceName) {
      case PROPERTY: targetKeyName = "ListingKey"; break;
      case MEMBER: targetKeyName = "MemberKey"; break;
      case OFFICE: targetKeyName = "OfficeKey"; break;
      case CONTACTS:
      case CONTACT_LISTING_NOTES: targetKeyName = "ContactKey"; break;
      case CONTACT_LISTINGS: targetKeyName = "ContactListingsKey"; break;
      case HISTORY_TRANSACTIONAL: targetKeyName = "HistoryTransactionalKey"; break;
      case INTERNET_TRACKING: targetKeyName = "EventKey"; break;
      case MEDIA: targetKeyName = "MediaKey"; break;
      case OPEN_HOUSE: targetKeyName = "OpenHouseKey"; break;
      case OUID: targetKeyName = "OrganizationUniqueIdKey"; break;
      case PROSPECTING: targetKeyName = "ProspectingKey"; break;
      case QUEUE: targetKeyName = "QueueTransactionKey"; break;
      case RULES: targetKeyName = "RuleKey"; break;
      case SAVED_SEARCH: targetKeyName = "SavedSearchKey"; break;
      case SHOWING: targetKeyName = "ShowingKey"; break;
      case TEAMS: targetKeyName = "TeamKey"; break;
      case TEAM_MEMBERS: targetKeyName = "TeamMemberKey"; break;
      case OTHER_PHONE: targetKeyName = "OtherPhoneKey"; break;
      case PROPERTY_GREEN_VERIFICATION: targetKeyName = "GreenBuildingVerificationKey"; break;
      case PROPERTY_POWER_PRODUCTION: targetKeyName = "PowerProductionKey"; break;
      case PROPERTY_ROOMS: targetKeyName = "RoomKey"; break;
      case PROPERTY_UNIT_TYPES: targetKeyName = "UnitTypeKey"; break;
      case SOCIAL_MEDIA: targetKeyName = "SocialMediaKey"; break;
    }

    return targetKeyName != null ?
        "        <Key>\n" +
            "          <PropertyRef Name=\"" + targetKeyName + "\" />\n" +
            "        </Key>\n" : null;
  }

  @Override
  public void afterResourceSheetProcessed(Sheet sheet) {
    assert sheet != null && sheet.getSheetName() != null;
    String resourceName = sheet.getSheetName();

    String templateContent =
        openEntityTypeTag
            + getKeyMarkup(resourceName)
            + markup.toString()
            + buildNavigationPropertyMarkup(resourceName)
            + closeEntityTypeTag;

    resourceTemplates.put(resourceName, templateContent);
    resetMarkupBuffer();
  }

  @Override
  void processNumber(ReferenceStandardField field) {
    String content = EDMXTemplates.buildNumberMember(field);
    if (content == null || content.length() <= 0) return;
    markup.append(EDMXTemplates.buildComments(field));
    markup.append(content);
  }

  @Override
  void processStringListSingle(ReferenceStandardField field) {
    String content = EDMXTemplates.buildEnumTypeSingleMember(field);
    if (content == null || content.length() <= 0) return;
    markup.append(EDMXTemplates.buildComments(field));
    markup.append(content);
  }

  @Override
  void processString(ReferenceStandardField field) {
    String content = EDMXTemplates.buildStringMember(field);
    if (content == null || content.length() <= 0) return;
    markup.append(EDMXTemplates.buildComments(field));
    markup.append(content);
  }

  @Override
  void processBoolean(ReferenceStandardField field) {
    String content = EDMXTemplates.buildBooleanMember(field);
    if (content == null || content.length() <= 0) return;
    markup.append(EDMXTemplates.buildComments(field));
    markup.append(content);
  }

  @Override
  void processStringListMulti(ReferenceStandardField field) {
    String content = EDMXTemplates.buildEnumTypeMultiMember(field);
    if (content == null || content.length() <= 0) return;
    markup.append(EDMXTemplates.buildComments(field));
    markup.append(content);
  }

  @Override
  void processDate(ReferenceStandardField field) {
    String content = EDMXTemplates.buildDateMember(field);
    if (content == null || content.length() <= 0) return;
    markup.append(EDMXTemplates.buildComments(field));
    markup.append(content);
  }

  @Override
  void processTimestamp(ReferenceStandardField field) {
    String content = EDMXTemplates.buildDateTimeWithOffsetMember(field);
    if (content == null || content.length() <= 0) return;
    markup.append(EDMXTemplates.buildComments(field));
    markup.append(content);
  }

  @Override
  void processCollection(ReferenceStandardField field) {
    LOG.debug("Collection Type is not supported at this time!");
  }

  @Override
  void generateOutput() {

    final String output =
        openingDataServicesTag +
        buildEntityTypeMarkup() +
        buildEnumTypeMarkup() +
        closingDataServicesTag;

    try {
      //LOG.info("\nOutput is:\n" + output);

      //check the document that was created - will throw exceptions if that document doesn't contain valid XML
      SAXParserFactory.newInstance().newSAXParser().parse(new InputSource(new StringReader(output)), new DefaultHandler());

      //write content of the string to the same directory as the source file
      Utils.createFile(getDirectoryName(), getReferenceResource().replace(".xlsx", ".edmx"), output);
    } catch (Exception ex) {
      LOG.error(ex);
    }
  }
  private String buildEntityContainerMarkup() {
    StringBuilder content = new StringBuilder();
    content.append("      <EntityContainer Name=\"RESO\">\n");
    resourceTemplates.forEach((resourceName, templateContent) ->
        content
            .append("        <EntitySet Name=\"")
            .append(resourceName).append("\" EntityType=\"" + RESO_NAMESPACE)
            .append(".")
            .append(resourceName).append("\" />\n"));
    content.append("      </EntityContainer>\n");
    return content.toString();
  }

  private String buildEntityTypeMarkup() {
    StringBuilder content = new StringBuilder();
    content.append("    <Schema xmlns=\"http://docs.oasis-open.org/odata/ns/edm\" Namespace=\"" + RESO_NAMESPACE + "\">\n");

    //iterate through each of the found resources and generate their edm:EntityType content content
    resourceTemplates.forEach((resourceName, templateContent) -> {
      content.append(templateContent);
    });

    //nest entity container in main namespace
    content.append(buildEntityContainerMarkup());

    content.append("    </Schema>\n");
    return content.toString();
  }

  private String buildEnumTypeMarkup() {
    //enumeration markup keyed by enumeration standard name
    Map<String, String> markupMap = new LinkedHashMap<>();

    //add opening tag for enums namespace
    StringBuilder content =
        new StringBuilder("\n    <Schema xmlns=\"http://docs.oasis-open.org/odata/ns/edm\" Namespace=\"" + RESO_NAMESPACE + ".enums\">");

    standardFieldsMap.forEach((resourceName, standardFieldMap) -> {
      standardFieldMap.forEach((standardName, referenceStandardField) -> {
        if (referenceStandardField.isSingleEnumeration()) {
          markupMap.putIfAbsent(referenceStandardField.getLookupStandardName(), buildSingleEnumTypeMarkup(referenceStandardField.getLookupStandardName()));
        }

        if (referenceStandardField.isMultipleEnumeration()) {
          markupMap.putIfAbsent(referenceStandardField.getLookupStandardName(), buildMultipleEnumTypeMarkup(referenceStandardField.getLookupStandardName()));
        }
      });
    });

    markupMap.forEach((lookupStandardName, markup) -> content.append(markup));

    //closing tag for enums schema definition
    content.append("\n    </Schema>\n");
    return content.toString();
  }

  private String buildNavigationPropertyMarkup(String resourceName) {
    StringBuilder content = new StringBuilder();
    List<ReferenceStandardRelationship> referenceStandardRelationships =
        this.getStandardRelationships().stream().filter(referenceStandardRelationship
            -> referenceStandardRelationship.getTargetResource().contentEquals(resourceName)).collect(Collectors.toList());
    for (ReferenceStandardRelationship referenceStandardRelationship : referenceStandardRelationships) {
      //LOG.info(referenceStandardRelationship);

      if (referenceStandardRelationship.getTargetResourceKey() != null) {
        content.append("\n       <NavigationProperty")
            .append(" Name=\"").append(referenceStandardRelationship.getTargetStandardName()).append("\"")
            .append(" Type=\"org.reso.metadata.").append(referenceStandardRelationship.getSourceResource()).append("\"")
            .append(" />");
      } else {
        content.append("\n       <NavigationProperty")
            .append(" Name=\"").append(referenceStandardRelationship.getTargetStandardName()).append("\"")
            .append(" Type=\"Collection(org.reso.metadata.").append(referenceStandardRelationship.getSourceResource()).append(")\"")
            .append(" />");
      }
    }

    if (content.length() > 0) content.append("\n");

    return content.toString();
  }

  /*
    <EnumType Name="ShippingMethod">
      <Member Name="FirstClass"/>
      <Member Name="TwoDay"/>
      <Member Name="Overnight"/>
    </EnumType>
   */
  private String buildSingleEnumTypeMarkup(String lookupStandardName) {
    StringBuilder content = new StringBuilder();
    if (getEnumerations().get(lookupStandardName) != null) {
      content.append("\n");
      content.append("      <EnumType Name=\"").append(lookupStandardName).append("\">");

      //iterate through each of the lookup values and generate their edm:EnumType content
      getEnumerations().get(lookupStandardName).forEach(referenceStandardLookup -> {
        content
            .append("        ").append(EDMXTemplates.buildComments(referenceStandardLookup))
            .append("        <Member Name=\"").append(referenceStandardLookup.getLookupValue()).append("\">\n")
            .append("          <Annotation Term=\"RESO.OData.Metadata.StandardName\" ")
            .append("String=\"").append(sanitizeXml(referenceStandardLookup.getLookupDisplayName())).append("\" />\n")
            .append("        </Member>\n");
      });

      content.append("      </EnumType>\n");
    } else {
      content
        .append("\n")
        .append("      <!-- TODO: implement if you are using the single-valued enumeration \"").append(lookupStandardName).append("\" -->\n")
        .append("      <EnumType Name=\"").append(lookupStandardName).append("\">\n")
        .append("        <Member Name=\"Sample").append(lookupStandardName).append("EnumValue").append("\"/>\n")
        .append("      </EnumType>\n");
    }
    return content.toString();
  }

  private static String sanitizeXml(String input) {
    return input.replace("&", "&amp;")
        .replace(">", "&gt;")
        .replace("<", "&lt;")
        .replace("'", "&apos;")
        .replace("\"", "&quot;");
  }

  /*
  <EnumType Name="ShippingMethod">
    <Member Name="FirstClass"/>
    <Member Name="TwoDay"/>
    <Member Name="Overnight"/>
  </EnumType>
 */
  private String buildMultipleEnumTypeMarkup(String lookupStandardName) {
    StringBuilder content = new StringBuilder();

    if (getEnumerations().get(lookupStandardName) != null) {
      content.append("\n");
      content.append("      <EnumType Name=\"").append(lookupStandardName).append("\">");

      //iterate through each of the lookup values and generate their edm:EnumType content
      getEnumerations().get(lookupStandardName).forEach(referenceStandardLookup -> {
        content
          .append("        ").append(EDMXTemplates.buildComments(referenceStandardLookup))
          .append("        <Member Name=\"").append(referenceStandardLookup.getLookupValue()).append("\">\n")
          .append("          <Annotation Term=\"RESO.OData.Metadata.StandardName\" ")
          .append("String=\"").append(sanitizeXml(referenceStandardLookup.getLookupDisplayName())).append("\" />\n")
          .append("        </Member>\n");
      });

      content.append("      </EnumType>\n");
    } else {
      content
        .append("\n")
        .append("      <!-- TODO: implement if you are using the multi-valued enumeration \"").append(lookupStandardName).append("\" -->\n")
        .append("      <EnumType Name=\"").append(lookupStandardName).append("\">\n")
        .append("        <Member Name=\"Sample").append(lookupStandardName).append("EnumValue").append("\"/>\n")
        .append("      </EnumType>\n");
    }
    return content.toString();
  }


  public static final class EDMXTemplates {

    public static String buildBooleanMember(ReferenceStandardField field) {
      if (field == null) return EMPTY_STRING;
      return "        <Property Name=\""+ field.getStandardName() + "\" Type=\"Edm.Boolean\" />\n";
    }

    public static String buildDateMember(ReferenceStandardField field) {
      if (field == null) return EMPTY_STRING;
      return "        <Property Name=\""+ field.getStandardName() + "\" Type=\"Edm.Date\" />\n";
    }

    public static String buildNumberMember(ReferenceStandardField field) {
      if (field == null) return EMPTY_STRING;

      if (field.getSuggestedMaxPrecision() != null) return buildDecimalMember(field);
      else return buildIntegerMember(field);
    }

    public static String buildDecimalMember(ReferenceStandardField field) {
      if (field == null) return EMPTY_STRING;
      String template = "        <Property Name=\"" + field.getStandardName() + "\" Type=\"Edm.Decimal\"";

      //DD uses length as precision in this case
      if (field.getSuggestedMaxLength() != null) template += " Precision=\"" + field.getSuggestedMaxLength() + "\"";

      //DD uses precision as scale in this case
      if (field.getSuggestedMaxPrecision() != null) template += " Scale=\"" + field.getSuggestedMaxPrecision() + "\"";

      template += " />\n";

      return template;
    }

    public static String buildIntegerMember(ReferenceStandardField field) {
      if (field == null) return EMPTY_STRING;
      return  "        <Property Name=\"" + field.getStandardName() + "\" Type=\"Edm.Int64\" />\n";
    }

    public static String buildEnumTypeSingleMember(ReferenceStandardField field) {
      if (field == null || field.getLookup() == null) return EMPTY_STRING;
      if (!field.getLookup().toLowerCase().contains("lookups")) return EMPTY_STRING;

      String lookupName = field.getLookup().replace("Lookups", "").trim();
      return "        <Property Name=\"" + field.getStandardName() + "\" Type=\"" + RESO_NAMESPACE + ".enums." + lookupName + "\" />\n";
    }

    public static String buildEnumTypeMultiMember(ReferenceStandardField field) {
      if (field == null || field.getLookup() == null) return EMPTY_STRING;
      if (!field.getLookup().toLowerCase().contains("lookups")) return EMPTY_STRING;
      return "        <Property Name=\"" + field.getStandardName() + "\" Type=\"Collection(" + RESO_NAMESPACE + ".enums." + field.getLookupStandardName() + ")\" />\n";
    }

    public static String buildStringMember(ReferenceStandardField field) {
      if (field == null) return EMPTY_STRING;
      String template = "        <Property Name=\"" + field.getStandardName() + "\" Type=\"Edm.String\"";

      if (field.getSuggestedMaxLength() != null) template += " MaxLength=\"" + field.getSuggestedMaxLength() + "\"";
      template += " />\n";

      return template;
    }

    public static String buildDateTimeWithOffsetMember(ReferenceStandardField field) {
      if (field == null) return EMPTY_STRING;
      String template = "        <Property Name=\"" + field.getStandardName() + "\" Type=\"Edm.DateTimeOffset\"";

      if (field.getSuggestedMaxLength() != null) template += " Precision=\"" + field.getSuggestedMaxLength() + "\"";
      template += " />\n";

      return template;
    }

    public static String buildComments(ReferenceStandardField referenceStandardField) {
      if (referenceStandardField == null || referenceStandardField.getDefinition() == null || referenceStandardField.getDefinition().length() == 0) return EMPTY_STRING;

      //break every COLUMN_WIDTH characters only at word boundaries
      return (referenceStandardField.getWikiPageUrl() != null && referenceStandardField.getWikiPageUrl().length() > 0 ?
          "\n        <!-- " + referenceStandardField.getWikiPageUrl() : "") +
          wrapColumns(referenceStandardField.getDefinition().replaceAll("--", "-"), "\n          ")
          + " -->\n";
    }

    public static String buildComments(ReferenceStandardLookup referenceStandardLookup) {
      if (referenceStandardLookup == null || referenceStandardLookup.getDefinition() == null || referenceStandardLookup.getDefinition().length() == 0) return EMPTY_STRING;

      //break every COLUMN_WIDTH characters only at word boundaries
      return (referenceStandardLookup.getWikiPageUrl() != null && referenceStandardLookup.getWikiPageUrl().length() > 0 ? "\n        <!-- " + referenceStandardLookup.getWikiPageUrl() : "") +
          wrapColumns(referenceStandardLookup.getDefinition().replaceAll("--", "-"),"\n          ")
          + " -->\n";
    }
  }
}