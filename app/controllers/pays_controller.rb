require "uri"
require "json"
require "net/http"
class PaysController < ApplicationController

  def index
    @pays = Pay.all
    render json: @pays
  end
  
  def show
    @pays = Pay.find(params[:id])
    render json: @pays.to_json
  end

 # Create a new pay object
  def create
  pay =Pay.create(pay_params)
    token = JSON.parse(get_pesapal_token)
    order = create_order(token['token'], pay)
    render json: order
  end
# This function sends a request to Pesapal API to obtain an authentication token
  def get_pesapal_token
    url = URI("https://cybqa.pesapal.com/pesapalv3/api/Auth/RequestToken")
    
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    
    request = Net::HTTP::Post.new(url)
    request["Content-Type"] = "application/json"
    request["Accept"] = "application/json"
    request.body = JSON.dump({
      "consumer_key": "qkio1BGGYAXTu2JOfm7XSXNruoZsrqEW",
      "consumer_secret": "osGQ364R49cXKeOYSpaOnT++rHs="
    })
    # Send the request and get a response
     # Return the body of the response as a string
    response = https.request(request)
   return response.read_body
  end

  def create_order(token, pay)
        # Fetching the user details for the pay.
    user = Usr.find(pay.usr_id)
    names = user.name.split(" ")

    url = URI("https://cybqa.pesapal.com/pesapalv3/api/Transactions/SubmitOrderRequest")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Content-Type"] = "application/json"
request["Accept"] = "application/json"
request["Authorization"] = "Bearer "+token
request.body = JSON.dump({
  "id": SecureRandom.hex,
  "currency": "KES",
  "amount": pay.amount,
  "description": "Book for travel",
  "callback_url": "http://localhost:3000/pesapal/callback",
  "notification_id": "362b449d-2301-46fb-bc4f-ded9dcb31be6",
  "billing_address": {
    "email_address": user.email,
    "phone_number": nil,
    "country_code": "",
    "first_name": names[0],
    "middle_name": "",
    "last_name": names[1],
    "line_1": "",
    "line_2": "",
    "city": "",
    "state": "",
    "postal_code": nil,
    "zip_code": nil
  }
})

response = https.request(request)
return response.read_body

  end
# This method is used as a callback URL to receive the transaction status from Pesapal payment.
  def pesapal_callback
    #receive tracking id from url
    params = request.query_parameters
  # Retrieve the Pesapal API token from the server
    token = JSON.parse(get_pesapal_token)
 # Get the transaction status from the Pesapal API using the token and order tracking ID
    order = JSON.parse(get_transaction_status(token['token'], params['OrderTrackingId']))
# Redirect the user back to the home page with a message containing the transaction status description
    redirect_to '/?message='+ order['description']

  end

  # This method retrieves the transaction status from the Pesapal API using the provided token and order ID.
def get_transaction_status(token, order_id)
url = URI("https://cybqa.pesapal.com/pesapalv3/api/Transactions/GetTransactionStatus?orderTrackingId="+order_id)

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Authorization"] = "Bearer "+token

response = https.request(request)
return response.read_body

  end


  private

  def pay_params
    params.require(:pay).permit(:amount, :status, :method, :usr_id, :book_id)
  end
  
end
