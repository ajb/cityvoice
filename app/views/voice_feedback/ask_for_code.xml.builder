xml.instruct!
xml.Response do
  xml.Gather timeout: 15, numDigits: @call_in_code_digits, finishOnKey: '' do
    if session[:attempts].nil?
      xml.Play voice_file_path('welcome')
    else
      xml.Play voice_file_path('error1')
    end
    xml.Play voice_file_path('code_prompt')
  end
  xml.Redirect route_to_survey_path
end