component extends="quick.models.BaseEntity" accessors="true" {

	property name="id";
	property name="name"           sqltype="cf_sql_varchar";

    function user() {
        return hasManyThrough( [ "User_usergroup", "user" ] );
    }
    
    function user_usergroup() {
        return hasMany( "user_usergroup" );
    }

    function permission() {
        return hasManyThrough( [ "usergroup_permission", "permission" ] );
    }
    
    function usergroup_permission() {
        return hasMany( "usergroup_permission" );
    }

}