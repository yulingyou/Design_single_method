require 'grammar_checker'

describe 'grammer_checker' do
  it "if a text starts with a lowcase letter and without anymarks on the end should return false" do
    result = grammar_checker("hello WORLD")
    expect(result).to eq false
    end
  it "if a text with no suitable sentence-ending punctuation mark" do
    result = grammar_checker("Hello world")
    expect(result).to eq false
	end
	it "if a text with starts with capitalize and suitable sentencde-ending mark" do
    result = grammar_checker("Hello world.")
    expect(result).to eq true
	end

	it "if a text with starts with capitalize and suitable sentencde-ending mark" do
    result = grammar_checker("Hello world?")
    expect(result).to eq true
	end

	it "if a text with starts with capitalize and suitable sentencde-ending mark" do
    result = grammar_checker("Hello world!")
    expect(result).to eq true
	end
end