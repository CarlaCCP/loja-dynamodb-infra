resource "aws_dynamodb_table" "cliente" {
  name           = "cliente"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "cpf"

  attribute {
    name = "cpf"
    type = "S"
  }

  tags = {
    Name        = "cliente-tabela"
    Environment = "production"
  }
}


resource "aws_dynamodb_table" "pedido" {
  name           = "pedido"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"

  tags = {
    Name        = "pedido-tabela"
    Environment = "production"
  }
}

resource "aws_dynamodb_table" "produto" {
  name           = "produto"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"

  tags = {
    Name        = "produto-tabela"
    Environment = "production"
  }
}