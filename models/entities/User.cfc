component extends="quick.models.BaseEntity" accessors="true" {

	property name="id";
	property name="email"		sqltype="cf_sql_varchar";
	property name="password"	sqltype="cf_sql_varchar";

	function usergroup() {
        return hasManyThrough( [ "user_usergroup", "usergroup" ] );
    }
    
    function user_usergroup() {
        return hasMany( "user_usergroup");
    }
}
