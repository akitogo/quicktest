component {

    function run( qb, mockdata ) {

qb.table( "users_usergroups" ).insert(
    mockdata.mock(
        $num = 25,
        "userid" = "num:1:25",
        "usergroupid" = "num:1:25"
    )
);

}
}