<style>
.contentarea {
    background-color: #f8f8f8;
}
</style>

<div class="auth-container">

    <h2>{lang key='login.auth.heading'}</h2>

    <p>{lang key='login.auth.paragraph'}</p>

    {if $incorrect}
        <div class="alert alert-danger text-center" style="padding:5px;margin-bottom:10px;">{lang key='login.auth.incorrect'}</div>
    {/if}

    <form method="post" action="">
        <input type="hidden" name="authconfirm" value="1">

        <div class="form-group">
            <label for="inputConfirmPassword">{lang key='fields.password'}</label>
            <input type="password" class="form-control" id="inputConfirmPassword" name="confirmpw" placeholder="" autofocus>
        </div>

        {foreach $post_fields as $name => $value}
            <input type="hidden" name="{$name}" value="{$value}" />
        {/foreach}

        <button type="submit" class="btn btn-primary btn-block">{lang key='fields.confpassword'}</button>
    </form>

</div>
