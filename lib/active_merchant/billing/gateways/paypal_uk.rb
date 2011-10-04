require File.dirname(__FILE__) + '/paypal'

module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    class PaypalUkGateway < PaypalGateway      
      self.supported_cardtypes = [:visa, :master, :maestro, :switch, :solo]
      self.default_currency = 'GBP'
      self.supported_countries = ['UK']
      self.homepage_url = 'https://www.paypal-business.co.uk/process-online-payments-with-paypal/index.htm'
      self.display_name = 'PayPal Website Payments Pro (UK)'
      
      def express
        @express ||= PaypalExpressUkGateway.new(@options)
      end
    end
  end
end
