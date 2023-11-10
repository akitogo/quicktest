component extends="coldbox.system.EventHandler"  {

	// Default Action
	function index( event, rc, prc ){
        var r = getInstance("user")
            .with("usergroup.permission.extendedpermission")
            .has("usergroup.permission")
            .asMemento(
                includes = [
                    'usergroup.permission.extendedpermission'
                    //'usergroup.permission.extendedpermission',
                ]
            ).all(); 
        dump(r);	
		abort;	
	}

    /**
     * this fails with
     * Error building: BelongsTo@quick -> java.lang.StackOverflowError .
     *
     */
	function fails( event, rc, prc ){
        var r = getInstance("user")
            .with("usergroup.permission.extendedpermission")
            .has("usergroup.permission.extendedpermission")
            .asMemento(
                includes = [
                    'usergroup.permission.extendedpermission'
                    //'usergroup.permission.extendedpermission',
                ]
            ).all(); 
        dump(r);	
		abort;	
	}    

}
