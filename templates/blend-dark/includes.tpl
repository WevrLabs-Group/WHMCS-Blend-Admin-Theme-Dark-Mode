<form method="post" action="{routePath('admin-notes-save')}" id="frmMyNotes">
    <input type="hidden" name="action" value="savenotes" />
    <input type="hidden" name="token" value="{$csrfToken}" />
    <div class="modal fade modal-my-notes" id="modalMyNotes">
        <div class="modal-dialog">
            <div class="modal-content panel-primary">
                <div class="modal-header panel-heading">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">{$_ADMINLANG.global.mynotes}</h4>
                </div>
                <div class="modal-body">
                    <textarea id="mynotesbox" name="notes" rows="12" class="form-control">{$admin_notes}</textarea>
                </div>
                <div class="modal-footer panel-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{$_ADMINLANG.global.cancel}</button>
                    <button type="submit" class="btn btn-primary" id="btnMyNotesSave">{$_ADMINLANG.global.savechanges}</button>
                </div>
            </div>
        </div>
    </div>
</form>

{if $clientLimitNotification}
    <div class="client-limit-notification client-limit-notification-form panel panel-{$clientLimitNotification.class}" id="clientLimitNotification">
        <div class="panel-heading">
            <button type="button" class="close" id="btnClientLimitNotificationDismiss"><span aria-hidden="true">&times;</span></button>
            <h3 class="panel-title">
                <i class="fas {$clientLimitNotification.icon}"></i>
                <span>{$clientLimitNotification.title}</span>
                <small>({$clientLimitNotification.numberOfActiveClients} / {$clientLimitNotification.clientLimit})</small>
            </h3>
        </div>
        <div class="panel-body">
            <p>{$clientLimitNotification.body}</p>
            <form method="post" action="{$clientLimitNotification.upgradeUrl}" target="_blank" data-fetch-url="{routePath('admin-help-license-upgrade-data')}">
                <input type="hidden" name="token" value="{$csrfToken}">
                <input type="hidden" name="getupgradedata" value="1">
                <input type="hidden" name="license_key" value="" class="input-license-key">
                <input type="hidden" name="member_data" value="" class="input-member-data">
                <div class="links">
                    <a href="#" id="btnClientLimitNotificationDontShowAgain" class="btn btn-xs btn-link pull-right">Don't show this again</a>
                    <button type="submit" class="btn btn-xs btn-{$clientLimitNotification.class}{if $clientLimitNotification.autoUpgradeEnabled} hidden{/if}" id="btnClientLimitNotificationUpgrade">Upgrade Now</button>
                    {if $clientLimitNotification.learnMoreUrl}
                        <a href="{$clientLimitNotification.learnMoreUrl}" class="btn btn-xs {if $clientLimitNotification.autoUpgradeEnabled}btn-{$clientLimitNotification.class}{else}btn-link{/if}" target="_blank">Learn more &raquo;</a>
                    {/if}
                </div>
            </form>
        </div>
    </div>
{/if}

<div class="modal whmcs-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading" id="modalAjaxHeader">
                <button id="modalAjaxCloseSmall" type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">{$_ADMINLANG.global.close}</span>
                </button>
                <h4 class="modal-title" id="modalAjaxTitle"></h4>
            </div>
            <div class="modal-body panel-body" id="modalAjaxBody">
                {$_ADMINLANG.global.loading}
            </div>
            <div class="modal-footer panel-footer" id="modalAjaxFooter">
                <div id="modalFooterLeft"></div>
                <div class="pull-left loader" id="modalAjaxLoader">
                    <i class="fas fa-circle-notch fa-spin"></i>
                    {$_ADMINLANG.global.loading}
                </div>
                <button id="modalAjaxClose" type="button" class="btn btn-default" data-dismiss="modal">
                    {$_ADMINLANG.global.close}
                </button>
                <button type="button" class="btn btn-primary modal-submit" id="modalAjaxSubmit">
                    {$_ADMINLANG.global.submit}
                </button>
            </div>
        </div>
    </div>
</div>
