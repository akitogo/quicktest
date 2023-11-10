component extends="quick.models.BaseEntity" table="extendedpermissions" accessors="true" {

	property name="id";
	property name="name"      sqltype="cf_sql_varchar";

    function permission() {
        return hasManyThrough( [ "permission_extendedpermission", "permission" ] );
    }
    
    function permission_extendedpermission() {
        return hasMany( "permissione_extendedpermission" );
    }

}