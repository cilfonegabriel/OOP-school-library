require_relative './modules/app'
def main
  app = App.new
  app.run
  app.save
end

main
