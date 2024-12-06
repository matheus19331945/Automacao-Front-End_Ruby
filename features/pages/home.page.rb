class HomePage < SitePrism::Page

    element :userName, :xpath, '//div[@class="t-16 t-black t-bold"]'
    element :navBarHome, :xpath, '//span[@title="Início"]'
    element :myIcon, :xpath, '//span[contains(@class, "t-12") and contains(@class, "global-nav__primary-link-text") and text()="Eu"]
'

    def checkLoginSuccessful
        expect(userName.text).to eql "Matheus Santos"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end
end