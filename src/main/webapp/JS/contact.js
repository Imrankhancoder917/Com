function doPost(e) {
  var email = "ik3370349@gmail.com";  // Your email address where the form should send messages
  var subject = e.parameter.subject;
  var message = "You have received a message from: \n\n";
  message += "Name: " + e.parameter.name + "\n";
  message += "Email: " + e.parameter.email + "\n";
  message += "Message: \n" + e.parameter.message + "\n";
  
  // Send the email
  MailApp.sendEmail(email, subject, message);
  
  // Return a success response
  return HtmlService.createHtmlOutput("Your message has been sent successfully!");
}
