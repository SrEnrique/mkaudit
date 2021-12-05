require 'mkaudit/commands/new'

RSpec.describe Mkaudit::Commands::New do
  it "executes `new` command successfully" do
    output = StringIO.new
    project_name = nil
    options = {}
    command = Mkaudit::Commands::New.new(project_name, options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
