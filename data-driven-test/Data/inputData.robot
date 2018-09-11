*** Variables ***
# Configuration
${BROWSER} =  firefox
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.trendyol.com/  qa=https://qa.trendyol.com/  prod=https://www.trendyol.com/
${LOGIN_URL} =  login

#Input Data
&{UNREGISTERED_USER}   Email=melis@melis.com    Password=123456   ExpectedErrorMessage=Email ve/veya şifreniz hatalı.
&{INVALID_PASSWORD_USER}  Email=n.meliscelik@hotmail.com    Password=123456    ExpectedErrorMessage=Email ve/veya şifreniz hatalı.
&{BLANK_CREDENTIALS_USER}   Email=#BLANK    Password=#BLANK   ExpectedErrorMessage=Lütfen email adresinizi giriniz.
&{VALID_PASSWORD_USER}   Email=nuraymeliscelik@gmail.com    Password=112233