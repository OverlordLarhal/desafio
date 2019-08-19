class LoginScreen < Utils

    def initialize
        @emailField = "email-input"
        @passwordField = 'password-input'
        @continueButton = 'login-button'
    end

    def appLogin(emailField, passwordField, email, password)
          wait_for_element(@emailField)
          clear_fields(@emailField)
          send_keys_id(@emailField, email)
          wait_for_element(@passwordField)
          clear_fields(@passwordField)
          send_keys_id(@passwordField, password)
          click_id(@enterButton)
    end  

end