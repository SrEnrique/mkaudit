RSpec.describe "`mkaudit new` command", type: :cli do
  it "executes `mkaudit help new` command successfully" do
    output = `mkaudit help new`
    expected_output = <<-OUT
Usage:
  mkaudit new PROJECT_NAME

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
