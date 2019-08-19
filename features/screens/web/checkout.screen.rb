class CheckoutScreen < Utils

    def initialize
        @payOptionSelect = "(//span[@class='btn btn-primary btn-sm btn-thin ng-binding'])[4]"
        @submitPay = "bank-slip-submit"
        @printBill = "//a[@class='btn btn-block btn-primary ng-binding']"
        @bill = "bill"
    end

    def selectPayOption
        wait_for_xpath(@payOptionSelect)
        click_xpath(@payOptionSelect)
        click_id(@submitPay)
        wait_for_xpath(@printBill)
        click_xpath(@printBill)
    end
    
    def checkBillExist
        sleep 5
        wait_for_element_exist?(@bill, 10)     
    end    

end