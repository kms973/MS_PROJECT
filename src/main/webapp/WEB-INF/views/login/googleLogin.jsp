<html>
<head>
<meta name="google-signin-client_id"
	content="471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com">
</head>
<body>
    <div id="my-signin2"></div>
    <script>
        function onSuccess(googleUser) {
            var profile = googleUser.getBasicProfile();
            var name = profile.getName();
            var email = profile.getEmail();
 
            // 리디렉션 페이지로 이동하고, 이름과 이메일 정보를 전달
            window.location.href = "/login/userprofile?name=" + encodeURIComponent(name) + "&email=" + encodeURIComponent(email);
            console.log(name);
            }
        

        function onFailure(error) {
            console.log(error);
        }

        function renderButton() {
            gapi.signin2.render('my-signin2', {
                'scope': 'profile email',
                'width': 240,
                'height': 50,
                'longtitle': true,
                'theme': 'dark',
                'onsuccess': onSuccess,
                'onfailure': onFailure
            });
        }
    </script>
    <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
</body>
</html>