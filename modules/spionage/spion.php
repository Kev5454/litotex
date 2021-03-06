<?php

/**
 * Litotex - Browsergame Engine
 * Copyright 2017 Das litotex.info Team, All Rights Reserved
 *
 * Website: http://www.litotex.info
 * License: GNU GENERAL PUBLIC LICENSE v3 (https://litotex.info/showthread.php?tid=3)
 *
 */
/*
************************************************************
Litotex BrowsergameEngine
http://www.Litotex.de
http://www.freebg.de

Copyright (c) 2008 FreeBG Team
************************************************************
Hinweis:
Diese Software ist urheberechtlich geschützt.

Für jegliche Fehler oder Schäden, die durch diese Software
auftreten könnten, übernimmt der Autor keine Haftung.

Alle Copyright - Hinweise Innerhalb dieser Datei 
dürfen NICHT entfernt und NICHT verändert werden. 
************************************************************
Released under the GNU General Public License 
************************************************************  
*/

session_start();
if ( !isset( $_SESSION['litotex_start_g'] ) || !isset( $_SESSION['userid'] ) )
{
    require ( '../../includes/global.php' );
    show_error( "LOGIN_ERROR",'core' );
}

$action = ( isset( $_REQUEST['action'] ) ? filter_var( $_REQUEST['action'],FILTER_SANITIZE_STRING ) : 'main' );
$modul_name = "spionage";
require ( $_SESSION['litotex_start_g'] . 'includes/global.php' );

if ( is_modul_name_aktive( $modul_name ) == 0 )
{
    show_error( 'MODUL_LOAD_ERROR','core' );
    exit();
}


if ( $action == "main" )
{
    timebanner_init( 200,"bar_organge.gif" );
    $spio_name = get_soldiers_name( "sol_spio",$userdata['rassenid'] );
    $spio_count = intval( $userdata['sol_spio'] );
    $new_found_spion = array();
    $spionage_bit = "";
    $sql = "SELECT * FROM cc" . $n . "_spions WHERE userid='$userdata[userid]' AND islandid='$userdata[islandid]'";

    $result = $db->query( $sql );

    while ( $row = $db->fetch_array( $result ) )
    {


        $endtime = $row['endtime'];
        $requesttime = $endtime - time();
        $starttime = $row['starttime'];
        $landname = get_island( $row['toislandid'] );
        $anzahl_spions = $row['spions'];
        $spion_id = $row['spionid'];
        if ( $requesttime > 0 )
        {

            $spionage_bit = make_timebanner( $starttime,$endtime,$spion_id,"spion.php" );
            $new_found_spion[] = array(
                $landname,
                $anzahl_spions,
                $spionage_bit );

        }
        else
        {

            $spio_ok = 0;
            $result_1 = $db->query( "SELECT * FROM cc" . $n . "_countries WHERE islandid='$row[toislandid]'" );
            $row2 = $db->fetch_array( $result_1 );
            $max_gegner = $row2['sol_spio'];
            $spioland = $row2['name'] . " (" . $row2['x'] . ":" . $row2['y'] . ")";
            $target_race = get_race_id_from_user( $row2['userid'] );
            trace_msg( "Spionage Gegner anzahl :" . $max_gegner,114 );

            if ( $max_gegner == 0 )
            {
                $spio_ok = 1;
            }
            else
            {
                $change = rand( 0,$max_gegner );
                $change = $change + $anzahl_spions;
                trace_msg( "Spionage zufall 1 :$change win: >" . $max_gegner / 2,114 );
                if ( $change > $max_gegner / 2 )
                {
                    $spio_ok = 1;
                    $change = rand( 0,$max_gegner );
                    $change = $change + $anzahl_spions;
                    trace_msg( "Spionage zufall 2 :$change win:>" . $max_gegner / 2,114 );
                    if ( $change > $max_gegner / 2 )
                    {
                        $spio_ok = 1;
                    }
                    else
                    {
                        $spio_ok = 0;
                    }
                }
                else
                {
                    $spio_ok = 0;
                }
            }

            if ( $spio_ok == 1 )
            {
                trace_msg( "Spionage OK",114 );
                $tabless_name = "";
                $out_buildings = "";
                $result_s = $db->query( "SELECT * FROM cc" . $n . "_buildings  WHERE  race='$target_race'" );
                while ( $row_s = $db->fetch_array( $result_s ) )
                {
                    $name = c_trim( ( $row_s['name'] ) );
                    $tabless_name = $row_s['tabless'];
                    $out_buildings .= $name . "  [" . $row2[$tabless_name] . "]\n";
                }

                $explore_infos = "";
                $result_s = $db->query( "SELECT * FROM cc" . $n . "_explore  WHERE  race='$target_race'" );
                while ( $row_s = $db->fetch_array( $result_s ) )
                {
                    $name = c_trim( ( $row_s['name'] ) );
                    $tabless_name = $row_s['tabless'];
                    $explore_infos .= $name . "  [" . $row2[$tabless_name] . "]\n";
                }
                $sol_infos = "";
                $name = "";

                $result_ss = $db->query( "SELECT * FROM cc" . $n . "_soldiers  WHERE  race='$target_race'" );
                while ( $row_ss = $db->fetch_array( $result_ss ) )
                {
                    $name = c_trim( ( $row_ss['name'] ) );
                    $tabless_name = $row_ss['tabless'];
                    $sol_infos .= $name . "  [" . $row2[$tabless_name] . "]\n";

                }

                $tpl->assign( 'out_buildings',$out_buildings );
                $tpl->assign( 'explore_infos',$explore_infos );
                $tpl->assign( 'sol_infos',$sol_infos );
                $tpl->assign( 'spioland',$spioland );

                $spion_message = $tpl->fetch( LITO_THEMES_PATH . $modul_name . '/spion_message_ok.html' );


            }
            else
            {
                $tpl->assign( 'spioland',$spioland );
                $spion_message = $tpl->fetch( LITO_THEMES_PATH . $modul_name . '/spion_message_nok.html' );

            }
            $db->query( "DELETE FROM cc" . $n . "_spions WHERE spionid='$spion_id'" );
            make_ingamemail( 0,$userdata['userid'],"Spionage auf " . $spioland,$spion_message );


        }


    }

    $tpl->assign( 'daten_spion',$new_found_spion );
    $tpl->assign( 'spion_bit',$spionage_bit );
    $tpl->assign( 'spio_name',$spio_name );
    $tpl->assign( 'spio_count',$spio_count );
    template_out( 'spion.html',$modul_name );
    exit();
}

if ( $action == "send" )
{
    $x = intval( $_POST['x'] );
    $y = intval( $_POST['y'] );
    if ( !$x || $x < 0 || !$y || $y < 0 )
    {
        show_error( "LN_SPION_KOORD_ERROR",$modul_name );
        exit();
    }
    $spions = intval( $_POST['spions'] );

    if ( $spions <= 0 || $spions > $userdata['sol_spio'] )
    {
        show_error( "LN_SPION_SPIO_ERROR",$modul_name );
        exit();
    }


    $result = $db->query( "SELECT * FROM cc" . $n . "_countries WHERE x='$x' AND y='$y'" );
    $row = $db->fetch_array( $result );
    if ( $row['x'] != $x || $row['y'] != $y )
    {
        show_error( "LN_SPION_SPIO_L",$modul_name );
        exit();
    }


    $sol_speed = get_soldiers_speed( "sol_spio",$userdata['rassenid'] );
    $an_time = get_duration_time( $userdata['x'],$userdata['y'],$x,$y,$sol_speed );

    $db->query( "INSERT INTO cc" . $n . "_spions (starttime,userid,islandid,toislandid,spions,endtime) VALUES ('" . time() . "','$userdata[userid]','$userdata[islandid]','$row[islandid]','$spions','" . $an_time . "')" );
    $db->query( "UPDATE cc" . $n . "_countries SET sol_spio=sol_spio-'$spions' WHERE islandid='$userdata[islandid]'" );
    header( "LOCATION: spion.php" );
    exit();
}
