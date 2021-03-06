<div class="center">
{if !empty($albums)}

  <ul>

    {each $album in $albums}

      {{ $action = ($album->approved == 1) ? 'disapprovedalbumpicture' : 'approvedalbumpicture' }}
      {{ $absolute_url = Framework\Mvc\Router\Uri::get('picture','main','album',"$album->username,$album->title,$album->albumId") }}

      <div class="thumb_photo">
        <a href="{absolute_url}" target="_blank"><img src="{url_data_sys_mod}picture/img/{% $album->username %}/{% $album->albumId %}/{% $album->thumb %}" /></a>
        <p class="italic">{lang 'Posted by'} <a href="{% $oUser->getProfileLink($album->username) %}" target="_blank">{% $album->username %}</a></p>

        <div>
          {{ $text = ($album->approved == 1) ? t('Disapproved') : t('Approved') }}
          {{ LinkCoreForm::display($text, PH7_ADMIN_MOD, 'moderator', $action, array('album_id'=>$album->albumId)) }} |
          {{ LinkCoreForm::display(t('Delete'), PH7_ADMIN_MOD, 'moderator', 'deletealbumpicture', array('album_id'=>$album->albumId, 'id'=>$album->profileId, 'username'=>$album->username)) }}
        </div>
      </div>

    {/each}

  </ul>

  {main_include 'page_nav.inc.tpl'}

{else}

  <p>{lang 'No Picture Albums for the treatment of moderate.'}</p>

{/if}
</div>
