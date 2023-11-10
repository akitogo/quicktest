component extends="quick.models.BaseEntity" table="permissions_extendedpermissions" accessors="true" {
	property name="id";
	property name="permissionid";
	property name="extendedpermissionid";

    function permission() {
        return belongsTo( "permission" );
    }

    function extendedpermission() {
        return belongsTo( "extendedpermission" );
    }

}