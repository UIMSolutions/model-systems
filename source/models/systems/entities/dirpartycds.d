/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.dirpartycds;

@safe:
import models.systems;

class DDirPartyCDSEntity : DEntity {
  mixin(EntityThis!("DirPartyCDSEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "partyNumber": StringAttribute, //
        "partyType": StringAttribute, //
        "nameAlias": StringAttribute, //
        "knownAs": StringAttribute, //
        "languageId": UUIDAttribute, //
        "addressBooks": StringAttribute, //
        "organizationName": StringAttribute, //
        "organizationABCCode": StringAttribute, //
        "organizationNumOfEmployees": StringAttribute, //
        "organizationNumber": StringAttribute, //
        "organizationPhoneticName": StringAttribute, //
        "personFirstName": StringAttribute, //
        "personMiddleName": StringAttribute, //
        "personLastNamePrefix": StringAttribute, //
        "personLastName": StringAttribute, //
        "personInitials": StringAttribute, //
        "personPersonalSuffix": StringAttribute, //
        "personPersonalTitle": StringAttribute, //
        "personProfessionalTitle": StringAttribute, //
        "personProfessionalSuffix": StringAttribute, //
        "personPhoneticFirstName": StringAttribute, //
        "personPhoneticMiddleName": StringAttribute, //
        "personPhoneticLastName": StringAttribute, //
        "personGender": StringAttribute, //
        "personMaritalStatus": StringAttribute, //
        "personHobbies": StringAttribute, //
        "personChildrenNames": StringAttribute, //
        "personAnniversaryDay": StringAttribute, //
        "personAnniversaryMonth": StringAttribute, //
        "personAnniversaryYear": StringAttribute, //
        "personBirthDay": StringAttribute, //
        "personBirthMonth": StringAttribute, //
        "personBirthYear": StringAttribute, //
        "dirPersonNameRecId": UUIDAttribute, //
        "backingTable_DirPartyBaseEntityRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_dirpartycds")      
      .routingPath("/systems");
  }
}
mixin(EntityCalls!("DirPartyCDSEntity"));

version(test_model_systsms) { unittest {
    assert(DirPartyCDSEntity);

    auto entity = DirPartyCDSEntity;
    // TODO more tests
  }
}