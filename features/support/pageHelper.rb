
Dir[File.join(File.dirname(__FILE__),'~/features/screens/web/*.screen.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Screens

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe base foi instanciada,se sim ela não irá fazer nada ,se não ela irá instanciar a classe.
  def utils
    @utils ||= Utils.new
  end
  
#O método serve para que toda vez que chamar esse método ele vai verificar se a classe LoginScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.
  def login
    @login ||= LoginScreen.new
  end

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe HomeScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.  
  def checkout
    @checkout ||= CheckoutScreen.new
  end

  def product
    @product ||= ProductScreen.new
  end

end