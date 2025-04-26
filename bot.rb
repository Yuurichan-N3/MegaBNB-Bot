require 'httparty'
require 'json'

# ANSI color codes
GREEN = "\033[92m"
RED = "\033[91m"
YELLOW = "\033[93m"
RESET = "\033[0m"

def print_banner
  banner = <<~BANNER
  ╔══════════════════════════════════════════════╗
  ║       🌟 MegaBNB Bot - Automated Claim       ║
  ║  Automate your airdrop request submissions!  ║
  ║  Developed by: https://t.me/sentineldiscus   ║
  ╚══════════════════════════════════════════════╝
  BANNER
  puts "#{YELLOW}#{banner}#{RESET}"
end

def send_airdrop_request(address)
  api_url = "https://mbscan.io/airdrop"
  payload = { address: address }

  begin
    response = HTTParty.post(
      api_url,
      body: payload.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )

    if response.code == 200
      puts "#{GREEN}Request successful for address: #{address}#{RESET}"
    else
      puts "#{RED}Request failed for address: #{address}#{RESET}"
    end
  rescue StandardError => e
    puts "#{RED}Error occurred for address #{address}: #{e}#{RESET}"
  end

  # Add 3-second delay
  sleep(3)
end

def valid_address?(address)
  # Basic Ethereum address validation
  address.length == 42 &&
    address.start_with?('0x') &&
    address[2..-1].chars.all? { |c| c.match?(/[0-9a-fA-F]/) }
end

def main
  print_banner

  loop do
    print "#{YELLOW}Enter Ethereum address (or 'q' to quit): #{RESET}"
    address = gets.chomp.strip

    if address.downcase == 'q'
      puts "#{YELLOW}Exiting program...#{RESET}"
      break
    end

    unless valid_address?(address)
      puts "#{RED}Invalid Ethereum address! Please enter a valid address (42 characters, starting with 0x)#{RESET}"
      next
    end

    begin
      print "#{YELLOW}Enter number of requests to send: #{RESET}"
      num_requests = gets.chomp.to_i
      if num_requests <= 0
        puts "#{RED}Please enter a positive number!#{RESET}"
        next
      end
    rescue ArgumentError
      puts "#{RED}Please enter a valid number!#{RESET}"
      next
    end

    puts "#{YELLOW}Starting #{num_requests} requests for address: #{address}#{RESET}"

    num_requests.times do |i|
      puts "#{YELLOW}Sending request #{i + 1}/#{num_requests}...#{RESET}"
      send_airdrop_request(address)
    end

    puts "#{GREEN}Completed #{num_requests} requests for address: #{address}#{RESET}"
  end
end

if __FILE__ == $PROGRAM_NAME
  main
end