이 프로그램은 Intel Mac 환경을 기준으로 작성되었습니다.(M1 Mac도 가능은 함)

@실행법 :
1. make 명령어로 컴파일 합니다.
2. [./webserv config파일명] 으로 실행합니다. ex) ./webserv config/default.conf



@사용법(작성되었는 default.conf 기준으로 설명) : 

webserv를 실행 후 config파일에 지정되어있는 localhost:port번호 로 접속하면 됩니다.

1. 8083 port로 접근
   - https://www.naver.com으로 리다이렉션 되도록 설정되어있습니다.

2. 80번 포트로 접근
   - / : 기본 index.html 파일이 나옵니다. 수정을 원하시면 html/www/index.html을 수정하세요.
   - /soulee : html/www 폴더의 파일들이 리스팅되어 나옵니다. 원하시는대로 브라우징 해보세요.
     - index.html : 기본 index.html입니다.
     - media.html : 몇가지 media 파일을 올려둔 페이지입니다. 수정을 원하시면 html/www/media.html 파일을 수정하세요.
     - sample.mp4 : html/www/sample.mp4파일이 다운로드 됩니다.
     - uploaded_files : upload.html을 이용해 클라이언트가 서버로 업로드한 파일들이 저장되는 공간입니다.
     - py_adder.html : 간단한 계산기를 사용할 수 있습니다. cgi를 이용해 python 코드가 동작하여 결과를 반환합니다.
     - upload.html : 파일을 업로드 할 수 있습니다. 크기는 제한없습니다.

Console : 응답이 오고 갈 때마다 로그가 출력됩니다.(로그파일로 저장은 되지 않음.)
<img width="1171" alt="image" src="https://github.com/CodyKat/webserv/assets/98837511/7b73883d-d90d-4723-b16c-fd5ed36a82ea">
