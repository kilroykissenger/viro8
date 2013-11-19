class Party < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :url, :party_name, :party_location, :party_type, :party_details
  attr_accessible :playlist

  has_many :fluxes
  has_many :users

  def playlist=(uploaded_io)
    file = File.open(Rails.root.join(uploaded_io.original_filename), 'w')
    file.write(uploaded_io.read)
    raw = uploaded_io.original_filename
    file.close
    reformat raw
  end

  def reformat(raw)
  file = File.open(raw, 'r:UTF-8')
  newFile = File.open(Rails.root.join(raw + ".new"), 'w')


  file.each do |line|

#
#  Just for debugging.
#  print "Reading " + line
#

# Capturing two patterns here:
#  <key>XXXX</key><string>YYYY</string>
#  <key>XXXX</key><integer>ZZZZ</integer>
#
      if line =~ /(\s+)<key>([a-zA-Z ]+)<\/key><(string|integer)>([^<]+)<\/(string|integer)>/
        space = $1
        value = $4
        tag = $2.gsub(' ', '_')
        newFile.write space + "<#{tag}>"  + value.to_s  + "</#{tag}>\n"
        #
        # Capturing two patterns here:
        #  <key>XXXX</key><true/>
        #  <key>XXXX</key><false/>
        #
      elsif line =~ /(\s+)<key>([a-zA-Z ]+)<\/key><(true|false)\/>/
        space = $1
        value = $3
        tag = $2.gsub(' ', '_')
        newFile.write space + "<#{tag}>"  + value.to_s  + "</#{tag}>\n"
        #
        # Everything else is not tranlsated
        #
      else
        newFile.write line
      end
    newFile.close
  end

  end

end