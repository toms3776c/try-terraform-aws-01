# Terraform 検証

## 概要

AWS へTerraformを実行する検証コード。

## 事前準備（環境）

- 実行する環境に Terraform をインストールする（`asdf`などで用意することも可能）。
- 実行する環境に AWS CLI をインストールする。
- AWSで、Terraform実行用のIAMユーザーを作成する。
- 実行する環境で、`aws configure`を実行し、AWSへコマンド実行するための初期設定を行う。

## 事前準備（設定ファイル）

- `terraform.tfvars` を作成し、以下のAWSアクセスキー、シークレットキーを設定する。※設定することで、`variables.tf` から設定が読み込まれ、対象のAWSへ実行できるようになる。

    ```text
    aws_access_key = ""
    aws_secret_key = ""
    ```

## 使い方

1. ソースをクローン
2. `terraform init`を実行し、初期設定（最初に１回だけ実行）。
3. `terraform plan`を実行し、作成されるリソースを確認。
4. `terraform apply`を実行し、リソースを作成。
5. 検証後、`terraform destroy`を実行し、リソースを削除。
