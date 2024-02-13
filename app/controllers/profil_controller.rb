class ProfilController < ApplicationController
  def show
    puts "$" * 60
      puts "Voici le message de l'URL :"
      puts  params[:profil_page_id]
      puts "$" * 60    
      @profil_page_id = params[:profil_page_id]
  end
end
