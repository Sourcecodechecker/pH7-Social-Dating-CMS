<?php
/**
 * @author         Pierre-Henry Soria <ph7software@gmail.com>
 * @copyright      (c) 2012-2016, Pierre-Henry Soria. All Rights Reserved.
 * @license        GNU General Public License; See PH7.LICENSE.txt and PH7.COPYRIGHT.txt in the root directory.
 * @package        PH7 / App / System / Module / User / Asset / Ajax / Popup
 */
namespace PH7;
defined('PH7') or exit('Restricted access');

use PH7\Framework\Layout\Html\Design;

// Show the form only if nobody is logged!
if(!User::auth())
{
    // Ok nobody no one is connected, it displays the login form box!
    $oDesign = new Design;
    $oDesign->htmlHeader();
    $oDesign->usefulHtmlHeader();
    JoinForm::step1();
    $oDesign->htmlFooter();
}
