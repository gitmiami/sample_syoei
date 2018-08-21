<%@ page contentType="text/html;charset=UTF-8"
    import="org.apache.commons.mail.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>電子メール送信</title>
</head>
<body>
<%
SimpleEmail email = new SimpleEmail();
email.setHostName("smtp.examples.com");
email.setSmtpPort(587);
email.setAuthentication("USER00000", "PASS00000");
email.addTo("nami@wings.msn.to", "山田奈美","ISO-2022-JP");
email.setFrom("CQW15204@nifty.com", "山田祥寛", "ISO-2022-JP");
email.addHeader("X-Mailer", "Commons Email");
email.setCharset("ISO-2022-JP");
email.setSubject("JavaMailによるメール送信");
email.setMsg("こんにちは、皆さん！");
email.send();
%>
メール送信に成功しました。
</body>
</html>