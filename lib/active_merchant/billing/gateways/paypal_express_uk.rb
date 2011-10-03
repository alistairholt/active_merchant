require File.dirname(__FILE__) + '/paypal_express'

module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    class PaypalExpressUkGateway < PaypalExpressGateway
      self.test_redirect_url = 'https://www.sandbox.paypal.com/uk/cgi-bin/webscr'
      self.live_redirect_url = 'https://www.paypal.com/uk/cgibin/webscr'
      self.default_currency = 'GBP'
      self.supported_countries = ['UK']
      self.homepage_url = 'https://www.paypal-business.co.uk/add-paypal-to-online-shop/index.htm'
      self.display_name = 'PayPal Express Checkout (UK)'
    end
  end
end
