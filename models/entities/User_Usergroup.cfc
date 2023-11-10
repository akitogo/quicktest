component extends="quick.models.BaseEntity" table="users_usergroups" accessors="true" {
	property name="id";
	property name="userid";
	property name="usergroupid";

    function user() {
        return belongsTo( "User" );
    }

    function usergroup() {
        return belongsTo( "Usergroup" );
    }

}