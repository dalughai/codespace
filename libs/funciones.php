<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

function enviarEmail ($email,$asunto,$cuerpo,$nombre) {

    $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
    try {
        //Server settings
        $mail->SMTPDebug = 0;                                 // Enable verbose debug output
        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = gethostbyname('smtp.gmail.com');
        //$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = 'alvgars0@gmail.com';                 // SMTP username
        $mail->Password = 'alvgars91';                           // SMTP password
        $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 587;    

       $mail->SMTPOptions = array(
                        'ssl' => array(
                            'verify_peer' => false,
                            'verify_peer_name' => false,
                            'allow_self_signed' => true
                        )
                    );

        //Recipients
        $mail->setFrom('alvgars0@gmail.com', 'Mailer');
        $mail->addAddress('alvgars0@gmail.com', $nombre);     // Add a recipient


        //Attachments
       // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
      //  $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

        //Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = $asunto;
        $mail->Body    = $cuerpo;
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        $mail->send();
        //echo 'Mensaje enviado con exito';
    } catch (Exception $e) {
        echo 'El mensaje no se ha podido enviar. Mailer Error: ', $mail->ErrorInfo;
    }
}

 

    
            
