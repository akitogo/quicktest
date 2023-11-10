// UserPermission.cfc
component extends="quick.models.BaseEntity" table="usergroups_permissions" accessors="true" {
	property name="usergroupid";
	property name="permissionid";

    function usergroup() {
        return belongsTo( "usergroup" );
    }

    function permission() {
        return belongsTo( "Permission" );
    }

}