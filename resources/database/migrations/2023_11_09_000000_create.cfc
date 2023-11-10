component {


	function up( schema, query ){
		schema.create( "users", function(table) {
			table.increments( "id" );
			table.string( "email" ).unique();
			table.string( "password" );
		} );
				
		schema.create( "usergroups", function(table) {
			table.increments( "id" );
			table.string( "name" );
		} );

		schema.create( "users_usergroups", function(table) {
			table.increments( "id" );
			table.Integer( "userid" );
			table.Integer( "usergroupid" );
		} );

		schema.create( "permissions", function(table) {
			table.increments( "id" );
			table.string( "name" );
		} );	
		schema.create( "usergroups_permissions", function(table) {
			table.increments( "id" );
			table.Integer( "permissionid" );
			table.Integer( "usergroupid" );
		} );	

		schema.create( "extendedpermissions", function(table) {
			table.increments( "id" );
			table.string( "name" );
		} );

		schema.create( "permissions_extendedpermissions", function(table) {
			table.increments( "id" );
			table.Integer( "permissionid" );
			table.Integer( "extendedpermissionid" );
		} );					
	}

	function down( schema, query ){
		schema.drop( "users" );
		schema.drop( "usergroups" );
		schema.drop( "users_usergroups" );
		schema.drop( "usergroups_permissions" );
		schema.drop( "permissions" );
		schema.drop( "extendedpermissions" );
		schema.drop( "permissions_extendedpermissions" );

	}

}
