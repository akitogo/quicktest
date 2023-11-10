component extends="quick.models.BaseEntity" accessors="true" {

	property name="id";
	property name="name"      sqltype="cf_sql_varchar";

    function usergroup() {
        return hasManyThrough( [ "usergroup_permission", "usergroup" ] );
    }
    
    function usergroup_permission() {
        return hasMany( "usergroup_permission" );
    }

    function extendedpermission() {
        return hasManyThrough( [ "permission_extendedpermission", "extendedpermission" ] );
    }
    
    function permission_extendedpermission() {
        return hasMany( "permission_extendedpermission" );
    }
}