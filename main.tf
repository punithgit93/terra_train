resource "aws_kms_key" "test" {

 description = "KMS key 1"

 deletion_window_in_days = 10

}

resource "aws_glue_data_catalog_encryption_settings" "example" {
 data_catalog_encryption_settings {
 connection_password_encryption {
aws_kms_key_id = aws_kms_key.test.arn
return_connection_password_encrypted = true

 }

encryption_at_rest {
 catalog_encryption_mode = "SSE-KMS"
sse_aws_kms_key_id = aws_kms_key.test.arn

}

}

}
