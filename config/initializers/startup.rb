begin
    if Doorkeeper::Application.count == 0
        Doorkeeper::Application.create!({ 
            name: 'master', 
            redirect_uri: 'urn:ietf:wg:oauth:2.0:oob',
            scopes: 'admin write read'})
    end
rescue Exception => e  
    puts e.message
end