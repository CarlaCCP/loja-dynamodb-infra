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

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "orderStatus"
    type = "S"
  }


  global_secondary_index {
    name               = "orderStatus-index"
    hash_key           = "orderStatus"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "ALL"
  }


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

  attribute {
    name = "id"
    type = "S"
  }
  attribute {
    name = "categoria"  
    type = "S"
  }


  global_secondary_index {
    name               = "categoria-index"
    hash_key           = "categoria"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "ALL"
  }

  tags = {
    Name        = "produto-tabela"
    Environment = "production"
  }
}

resource "aws_dynamodb_table" "pagamento" {
  name           = "pagamento"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "pagamento-tabela"
    Environment = "production"
  }
}