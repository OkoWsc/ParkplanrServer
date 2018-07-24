{config_load file="smarty.conf"}

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>{#app_full_name#} | Sign in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/css/adminlte/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/adminlteplugins/iCheck/square/blue.css">

  <link rel="stylesheet" href="/css/global.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link href="https://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">

  <style>
	.social_signin_text {
		color:#FFFFFF;
		font-family: 'Roboto', sans-serif;background-color:#4285F4;
	}
  </style>
  {include file="firebase_header.tpl"}

	{if $inapp}
		<script>
	                function inapp_return() {
	                        window.shouldClose=true
	                };
		</script>
        {/if}
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
	{if $inapp}
	    <a href="#"><b>{#app_first_full_name#}</b>{#app_last_full_name#}</a>
	{else}
	    <a href="/site"><b>{#app_first_full_name#}</b>{#app_last_full_name#}</a>
	{/if}
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
	<div id="div_login_methods">
		<p class="login-box-msg">Your account has been updated to the new sign in system.</p>
		{if $inapp}
			<p class="login-box-msg">To continue please <button class="btn btn-primary" onclick="inapp_return();">Return to app signin</button></p>
		{else}
			<p class="login-box-msg">To continue please <a href="/signin">Sign in</a>.</p>
		{/if}
    </div>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/adminlteplugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>