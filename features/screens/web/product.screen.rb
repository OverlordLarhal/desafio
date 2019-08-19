class ProductScreen < Utils

    def initialize
        @buyButton = "buy-button"
    end
    
    def selectProduct
        wait_for_element(@buyButton)
        click_id(@buyButton)
    end    

end