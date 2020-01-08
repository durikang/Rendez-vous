$(document).ready(function () {
    $(window).scroll(function () {
        var max = 435;
        var val = $(this).scrollTop();
        var cover = $('.cover');

        if (!cover) {
            return;
        }

        if (max > val) {
            cover.css('transform', "scale(" + (1 + 0.1 * val / max) + ", " + (1 + 0.1 * val / max) + ")");
        } else {
            cover.css('transform', "scale(1.1, 1.1)");
        }
    });
    $('[data-show]').click(function (e) {
        if (e.target === this) {
            var targetId = $(this).attr('data-show');
            $('#' + targetId).show();

            e.stopPropagation();
        }
    });
    $('[data-hide]').click(function (e) {
        if (e.target === this) {
            var targetId = $(this).attr('data-hide');
            $('#' + targetId).hide();

            e.stopPropagation();
        }
    });
    $('[data-toggle]').click(function (e) {
        if (e.target === this) {
            var targetId = $(this).attr('data-toggle');
            $('#' + targetId).toggle();

            e.stopPropagation();
        }
    });

    $('[data-flyout]').click(function(e) {
        var targetId = 'flyout-' + $(this).attr('data-flyout');
        $('#' + targetId).toggleClass('show');
    });

    $('#notice-frm-login').submit(function (e) {
        e.preventDefault();

        var frm = $(this);

        var email = frm.find('[name=email]').val();
        var password = frm.find('[name=password]').val();
		if (email == '') {
            alert('이메일을 입력하세요');
			$('#email').focus();
            return false;
        }
		if (password == '') {
            alert('비밀번호를 입력하세요');
			$('#password').focus();
            return false;
        }
        var keepLogin = frm.find('[name=keepLogin]').is(':checked');
		var pURL = parse_url(document.location.href);	
		var tPage = '';
		 

        var p = [];		
		p.push('email='+email);
		p.push('password='+password);

		var pars = p.join('&');

		var Ajax = new Ajax2();
		Ajax.init('/Account/Login.php', {
			method: 'post'
			, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{							
				var ret = eval('(' + oXHR.responseText + ')');

				if(oXHR.responseText=='0000')
				{
					if(tPage =='')
					{
						location.reload();
					}
					else
					{
						location.reload();
					}
				}
				else
				{
					if(oXHR.responseText=='false')
					{
						alert('이메일이나 비밀번호를 확인하세요');
					}else{
						location.reload();
					}	 
				}
			}
		});
    });

    $('#frm-join').submit(function (e) {
        e.preventDefault();

        var frm = $(this);

        var name = frm.find('[name=name]').val();
        var email = frm.find('[name=email]').val();
        var password = frm.find('[name=password]').val();
        var confirm = frm.find('[name=confirm]').val();
        var accept = frm.find('[name=accept]').is(':checked');

        if (name == '') {
            alert('이름을 입력하세요');
            return false;
        }
		if (email == '') {
            alert('이메일을 입력하세요');
            return false;
        }
		if (password == '') {
            alert('비밀번호를 입력하세요');
            return false;
        }
		if (password !== confirm) {
            alert('비밀번호 확인을 정확히 입력하세요');
            return false;
        }	
		if (!accept) {
            alert('탈잉이용약관 및 개인정보취급방침에 동의해야 합니다');
            return false;
        }	

		var p = [];	
		p.push('name='+name);
		p.push('email='+email);
		p.push('password='+password);

		var ref = encodeURIComponent(document.location.href);

		var pars = p.join('&');

		var Ajax = new Ajax2();
		Ajax.init('/Account/Join.php', {
			method: 'post'
			, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{						
				if(oXHR.responseText =='0000')
				{
					//alert('회원 가입이 완료되었습니다');
					location.href = '/joinConv.php?ref='+ref;
				}
				else
				{
					alert(oXHR.responseText);
				}				
			}
		});
    });

	$('#frm-prof').submit(function (e) {
        e.preventDefault();

        var frm = $(this);
		
		if(frm.find('[name=year]').val()=='')
		{
			alert('출생년도를 정확히 입력하세요');
            return false;
		}

		if(frm.find('[name=man]').val()=='')
		{
			alert('성별을 정확히 입력하세요');
            return false;
		}

		if(frm.find('[name=level]').val()=='')
		{
			alert('직업을 정확히 입력하세요');
            return false;
		}

        var man = frm.find('[name=man]').val();
        var level = frm.find('[name=level]').val();
        var year = frm.find('[name=year]').val();

		var p = [];	
		p.push('man='+man);
		p.push('level='+level);
		p.push('year='+year);

	
		var pars = p.join('&');

		var Ajax = new Ajax2();
		Ajax.init('/Account/Save.php', {
			method: 'post'
			, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{						
				if(oXHR.responseText =='0000')
				{
					alert('등록해 주셔서 감사합니다');
					location.reload();
				}
				else
				{
					alert(oXHR.responseText);
				}				
			}
		});
    });

    $('#btn-menu-logout, #btn-flyout-menu-logout').click(function() {
		var p = [];	
		logout = '';
		p.push('logout='+logout);
		var pars = p.join('&');
        var Ajax = new Ajax2();
		Ajax.init('/Account/Logout.php', {
			method: 'post'
			, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{				
				location.reload();
			}
		});    
    });

    $('#btn-popup-join-facebook, #notice-btn-popup-login-facebook').click(function() {

		var ref = encodeURIComponent(document.location.href);
		 
        FB.login(function(response) {
            if (response.authResponse
                && response.status === 'connected') {

                var userId = response.authResponse.userID;
                var accessToken = response.authResponse.accessToken;
                FB.api('/me?fields=name,email,picture.redirect(false).width(200){url}', function (response) {
                    if(!response.email || response.email.replace(/\s/g, '').length === 0) {
                        alert('페이스북에 이메일 정보가 없습니다.\n페이스북 로그인 > 계정 설정 > \n연락처에 새로운 이메일을 추가 > 기본 연락처로 설정\n혹은 이메일로 회원가입을 해주세요.');
                        return;
                    }
					
                    $.post('/Account/NoticeLoginFaceBook.php', {
                        name: response.name,
						email: response.email,
                        userId: userId,
                        accessToken: accessToken,
						picture: response.picture.data.url
                    }).done(function(response) {
						 
                        if (response=='0000') {
                            location.reload();
                        } else if (response=='1111') {
							 alert('이메일이나 비밀번호를 확인하세요');
                             location.reload();
                        }
						else
						{
							location.reload();
						}


                    }).fail(function(rawResponse) {
						 
                        alert(rawResponse.responseJSON.message);
                    });
                });
            } else {
                alert('페이스북 연동 중에 오류가 발생했습니다');
            }
        }, { scope: 'email, user_friends', return_scopes: true, auth_type: 'rerequest' });
    });

    $('#btn-resend-email').click(function() {
        $.post('/Account/Confirm/Resend', null)
         .done(function (response) {
             if (response=='0000') {
                 alert('인증 메일이 전송되었습니다');
             } else {
                 alert(response);
             }
		})
    });


    $('.dropdown-label').click(function (e) {
        $(this).parent()
            .children('.dropdown-list')
            .slideToggle('fast');
    });

    $('.dropdown-list li').click(function (e) {
        $(this).parent()
            .slideToggle('fast');
    });

    $(window).keyup(function(e) {
        if(e.keyCode === 27) {
            $('.popup').hide();
        }
    });
});

function parse_url(str, component) {
	var  o   = {
		strictMode: false,
		key: ["source","protocol","authority","userInfo","user","password","host","port","relative","path","directory","file","query","anchor"],
		q:   {
			name:   "queryKey",
			parser: /(?:^|&)([^&=]*)=?([^&]*)/g
		},
		parser: {
			strict: /^(?:([^:\/?#]+):)?(?:\/\/((?:(([^:@]*):?([^:@]*))?@)?([^:\/?#]*)(?::(\d*))?))?((((?:[^?#\/]*\/)*)([^?#]*))(?:\?([^#]*))?(?:#(.*))?)/,
			loose:  /^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/\/?)?((?:(([^:@]*):?([^:@]*))?@)?([^:\/?#]*)(?::(\d*))?)(((\/(?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/ // Added one optional slash to post-protocol to catch file:/// (should restrict this)
		}
	};

	var m   = o.parser[o.strictMode ? "strict" : "loose"].exec(str),
	uri = {},
	i   = 14;
	while (i--) uri[o.key[i]] = m[i] || "";
	switch (component) {
		case 'PHP_URL_SCHEME':
			return uri.protocol;
		case 'PHP_URL_HOST':
			return uri.host;
		case 'PHP_URL_PORT':
			return uri.port;
		case 'PHP_URL_USER':
			return uri.user;
		case 'PHP_URL_PASS':
			return uri.password;
		case 'PHP_URL_PATH':
			return uri.path;
		case 'PHP_URL_QUERY':
			return uri.query;
		case 'PHP_URL_FRAGMENT':
			return uri.anchor;
		default:
			var retArr = {};
			if (uri.protocol !== '') retArr.scheme=uri.protocol;
			if (uri.host !== '') retArr.host=uri.host;
			if (uri.port !== '') retArr.port=uri.port;
			if (uri.user !== '') retArr.user=uri.user;
			if (uri.password !== '') retArr.pass=uri.password;
			if (uri.path !== '') retArr.path=uri.path;
			if (uri.query !== '') retArr.query=uri.query;
			if (uri.anchor !== '') retArr.fragment=uri.anchor;
			return retArr;
	}
}