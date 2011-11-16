class ParticipantMailer < ActionMailer::Base
  default from: "participant@wec.com"
  def participate_email(participant, cv_file)
    @participant = participant
    @cv = cv_file.tempfile
    attachments[cv_file.original_filename] = File.read(@cv.path)
    mail(:to => 'competicion_barcelona@bestspain.es', :subject => "[WEC11] participant info!")
  end
end
