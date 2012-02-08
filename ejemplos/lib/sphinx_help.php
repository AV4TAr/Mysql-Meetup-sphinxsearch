<?php

function show_result($res, $cl){

if($res===false )
{
        print "Query failed: " . $cl->GetLastError() . ".\n";

} else
{
        if ( $cl->GetLastWarning() )
                print "WARNING: " . $cl->GetLastWarning() . "\n\n";

        print "Query retrieved $res[total] of $res[total_found] matches in $res[time] sec.\n";
        print "Query stats:\n";
        if ( is_array($res["words"]) )
                foreach ( $res["words"] as $word => $info )
                        print "    '$word' found $info[hits] times in $info[docs] documents\n";
        print "\n";

        if ( is_array($res["matches"]) )
        {
                $n = 1;
                print "Matches:\n";
                foreach ( $res["matches"] as $docinfo )
                {
                        print "$n. doc_id=$docinfo[id], weight=$docinfo[weight]";
                        foreach ( $res["attrs"] as $attrname => $attrtype )
                        {
                                $value = $docinfo["attrs"][$attrname];
                                if ( $attrtype==SPH_ATTR_MULTI || $attrtype==SPH_ATTR_MULTI64 )
                                {
                                        $value = "(" . join ( ",", $value ) .")";
                                } else
                                {
                                        if ( $attrtype==SPH_ATTR_TIMESTAMP )
                                                $value = date ( "Y-m-d H:i:s", $value );
                                }
                                print ", $attrname=$value";
                        }
                        print "\n";
                        $n++;
                }
        }
}

}
