require 'cpf_cnpj'

def valid_cpf?(cpf)
  CPF.valid?(cpf)
end

# Solicitar ao usuário que insira o CPF
print 'Digite o CPF (somente números): '
cpf_to_check = gets.chomp

# Remover possíveis pontos e traços do CPF inserido pelo usuário
cpf_to_check.gsub!(/[\.\-]/, '')

# Verificar a validade do CPF e exibir o resultado
puts valid_cpf?(cpf_to_check) ? 'CPF válido' : 'CPF inválido'
