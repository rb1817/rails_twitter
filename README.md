
day 8 

Cookie(쿠키)

클라이언드 <-> 서버 

    요청->                 <-응답

요청들이 다 독립적이다. 그래서 이를 해결하기 위해 Cookie를 사용한다.

Cookies

-사용자 혹은 서버에서 삭제 할 때 까지

  cookies 는 상태가 유지된다.

-클라이언트에 저장한다.

휘발성 쿠키 : flash

서버가 사용자의 웹 브라우저에 전송하는 작은 데이터 조각입니다. 브라우저는 그 데이터 조각들을 저장할 수 있고 동일한 서버로 다음 요청 시 함께 전송할 것입니다. — 예를 들자면, 유저 로그인 상태 유지. 쿠키는 상태가 없는(stateless) HTTP 프로토콜에서 상태 기반 정보를 기억합니다. 

쿠키는 주로 세 가지 목적을 위해 사용됩니다:

---

- 세션 관리(Session management)
  Logins, shopping carts, game scores, or anything else the server should remember
- 개인화(Personalization)
  User preferences, themes, and other settings
- 트래킹(Tracking)
  Recording and analyzing user behavior
  Recording and analyzing user behavior

ToastrRails

This is an opninionated toaster asset gem. It sets some defaults, adds support for flash messages and assumes you have a navbar.

Installation

Add this line to your application's Gemfile:

    gem 'toastr_rails'

And then execute:

    $ bundle

Usage

Add to your application.js and application.css:

    //= require toastr_rails

You can put this in your layout/application.html file if you want to chach flash messages in a toast:

    = render 'toastr_rails/flash'

Defaults:

    // javascript
    toastr.options = {
      "closeButton": true,
      "debug": false,
      "progressBar": true,
      "positionClass": "toast-top-right",
      "showDuration": "300",
      "hideDuration": "1000",
      "timeOut": "5000",
      "extendedTimeOut": "1000",
      "showEasing": "swing",
      "hideEasing": "linear",
      "showMethod": "fadeIn",
      "hideMethod": "fadeOut"
    };
    
    // css
    #toast-container{
      top: 70px;
    }





Form tag helper

    <%= form_tag do %>
      Form contents
    <% end %>

    <form accept-charset="UTF-8" action="/" method="post">
      <input name="utf8" type="hidden" value="&#x2713;" />
      <input name="authenticity_token" type="hidden" value="J7CBxfHalt49OSHp27hblqK20c9PgwJ108nDHX/8Cts=" />
      Form contents
    </form>

 웹 애플리케이션에서의 폼(Form)은 유저 입력을 받기 위해서는 필수인 인터페이스입니다. 하지만 폼의 각 요소들의 명명법과 수많은 속성들 탓에 폼의 마크업은 쉽게 복잡해지고, 관리하기 어려워집니다. 그래서 Rails에서는 폼 마크업을 생성하기 위한 뷰 헬퍼를 제공하고, 이런 번잡한 작업을 할 필요를 없앴습니다. 

일반적인 검색 폼

웹에서는 검색 폼이 자주 사용됩니다. 이 폼은 아래와 같은 부분을 포함하고 있습니다.

- "GET" 메소드를 대상으로 하는 폼 요소
- 입력할 대상을 알려주는 텍스트
- 텍스트 입력 폼
- [송신] 버튼

#기본코드

    <%= form_tag("/search", method: "get") do %>
      <%= label_tag(:q, "Search for:") %>
      <%= text_field_tag(:q) %>
      <%= submit_tag("Search") %
    <% end %>


