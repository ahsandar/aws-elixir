# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.KMS do
  @moduledoc """
  AWS Key Management Service (KMS) is an encryption and key management web
  service. This guide describes the KMS actions that you can call
  programmatically. For general information about KMS, see the [ AWS Key
  Management Service Developer Guide
  ](http://docs.aws.amazon.com/kms/latest/developerguide/overview.html)

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .Net, iOS,
  Android, etc.). The SDKs provide a convenient way to create programmatic
  access to KMS and AWS. For example, the SDKs take care of tasks such as
  signing requests (see below), managing errors, and retrying requests
  automatically. For more information about the AWS SDKs, including how to
  download and install them, see [Tools for Amazon Web
  Services](http://aws.amazon.com/tools/). </note> We recommend that you use
  the AWS SDKs to make programmatic API calls to KMS.

  Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS
  1.2. Clients must also support cipher suites with Perfect Forward Secrecy
  (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral
  Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later
  support these modes.

  **Signing Requests**

  Requests must be signed by using an access key ID and a secret access key.
  We strongly recommend that you do not use your AWS account access key ID
  and secret key for everyday work with KMS. Instead, use the access key ID
  and secret access key for an IAM user, or you can use the AWS Security
  Token Service to generate temporary security credentials that you can use
  to sign requests.

  All KMS operations require [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  **Recording API Requests**

  KMS supports AWS CloudTrail, a service that records AWS API calls and
  related events for your AWS account and delivers them to an Amazon S3
  bucket that you specify. By using the information collected by CloudTrail,
  you can determine what requests were made to KMS, who made the request,
  when it was made, and so on. To learn more about CloudTrail, including how
  to turn it on and find your log files, see the [AWS CloudTrail User
  Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/whatiscloudtrail.html)

  **Additional Resources**

  For more information about credentials and request signing, see the
  following:

  * [AWS Security
  Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html).
  This topic provides general information about the types of credentials used
  for accessing AWS. * [AWS Security Token
  Service](http://docs.aws.amazon.com/STS/latest/UsingSTS/). This guide
  describes how to create and use temporary security credentials. * [Signing
  AWS API
  Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html).
  This set of topics walks you through the process of signing a request using
  an access key ID and a secret access key.

  **Commonly Used APIs**

  Of the APIs discussed in this guide, the following will prove the most
  useful for most applications. You will likely perform actions other than
  these, such as creating keys and assigning policies, by using the console.
  * `Encrypt` * `Decrypt` * `GenerateDataKey` *
  `GenerateDataKeyWithoutPlaintext`
  """

  @doc """
  Creates a display name for a customer master key. An alias can be used to
  identify a key and should be unique. The console enforces a one-to-one
  mapping between the alias and a key. An alias name can contain only
  alphanumeric characters, forward slashes (/), underscores (_), and dashes
  (-). An alias must start with the word "alias" followed by a forward slash
  (alias/). An alias that begins with "aws" after the forward slash
  (alias/aws...) is reserved by Amazon Web Services (AWS).
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Adds a grant to a key to specify who can access the key and under what
  conditions. Grants are alternate permission mechanisms to key policies. For
  more information about grants, see
  [Grants](http://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
  in the developer guide. If a grant is absent, access to the key is
  evaluated based on IAM policies attached to the user. <ol> * `ListGrants` *
  `RetireGrant` * `RevokeGrant` </ol>
  """
  def create_grant(client, input, options \\ []) do
    request(client, "CreateGrant", input, options)
  end

  @doc """
  Creates a customer master key. Customer master keys can be used to encrypt
  small amounts of data (less than 4K) directly, but they are most commonly
  used to encrypt or envelope data keys that are then used to encrypt
  customer data. For more information about data keys, see `GenerateDataKey`
  and `GenerateDataKeyWithoutPlaintext`.
  """
  def create_key(client, input, options \\ []) do
    request(client, "CreateKey", input, options)
  end

  @doc """
  Decrypts ciphertext. Ciphertext is plaintext that has been previously
  encrypted by using any of the following functions: * `GenerateDataKey` *
  `GenerateDataKeyWithoutPlaintext` * `Encrypt`

  Note that if a caller has been granted access permissions to all keys
  (through, for example, IAM user policies that grant `Decrypt` permission on
  all resources), then ciphertext encrypted by using keys in other accounts
  where the key grants access to the caller can be decrypted. To remedy this,
  we recommend that you do not grant `Decrypt` access in an IAM user policy.
  Instead grant `Decrypt` access only in key policies. If you must grant
  `Decrypt` access in an IAM user policy, you should scope the resource to
  specific keys or to specific trusted accounts.
  """
  def decrypt(client, input, options \\ []) do
    request(client, "Decrypt", input, options)
  end

  @doc """
  Deletes the specified alias.
  """
  def delete_alias(client, input, options \\ []) do
    request(client, "DeleteAlias", input, options)
  end

  @doc """
  Provides detailed information about the specified customer master key.
  """
  def describe_key(client, input, options \\ []) do
    request(client, "DescribeKey", input, options)
  end

  @doc """
  Marks a key as disabled, thereby preventing its use.
  """
  def disable_key(client, input, options \\ []) do
    request(client, "DisableKey", input, options)
  end

  @doc """
  Disables rotation of the specified key.
  """
  def disable_key_rotation(client, input, options \\ []) do
    request(client, "DisableKeyRotation", input, options)
  end

  @doc """
  Marks a key as enabled, thereby permitting its use. You can have up to 25
  enabled keys at one time.
  """
  def enable_key(client, input, options \\ []) do
    request(client, "EnableKey", input, options)
  end

  @doc """
  Enables rotation of the specified customer master key.
  """
  def enable_key_rotation(client, input, options \\ []) do
    request(client, "EnableKeyRotation", input, options)
  end

  @doc """
  Encrypts plaintext into ciphertext by using a customer master key. The
  `Encrypt` function has two primary use cases: * You can encrypt up to 4 KB
  of arbitrary data such as an RSA key, a database password, or other
  sensitive customer information. * If you are moving encrypted data from one
  region to another, you can use this API to encrypt in the new region the
  plaintext data key that was used to encrypt the data in the original
  region. This provides you with an encrypted copy of the data key that can
  be decrypted in the new region and used there to decrypt the encrypted
  data.

  Unless you are moving encrypted data from one region to another, you don't
  use this function to encrypt a generated data key within a region. You
  retrieve data keys already encrypted by calling the `GenerateDataKey` or
  `GenerateDataKeyWithoutPlaintext` function. Data keys don't need to be
  encrypted again by calling `Encrypt`.

  If you want to encrypt data locally in your application, you can use the
  `GenerateDataKey` function to return a plaintext data encryption key and a
  copy of the key encrypted under the customer master key (CMK) of your
  choosing.
  """
  def encrypt(client, input, options \\ []) do
    request(client, "Encrypt", input, options)
  end

  @doc """
  Generates a data key that you can use in your application to locally
  encrypt data. This call returns a plaintext version of the key in the
  `Plaintext` field of the response object and an encrypted copy of the key
  in the `CiphertextBlob` field. The key is encrypted by using the master key
  specified by the `KeyId` field. To decrypt the encrypted key, pass it to
  the `Decrypt` API.

  We recommend that you use the following pattern to locally encrypt data:
  call the `GenerateDataKey` API, use the key returned in the `Plaintext`
  response field to locally encrypt data, and then erase the plaintext data
  key from memory. Store the encrypted data key (contained in the
  `CiphertextBlob` field) alongside of the locally encrypted data.

  <note>You should not call the `Encrypt` function to re-encrypt your data
  keys within a region. `GenerateDataKey` always returns the data key
  encrypted and tied to the customer master key that will be used to decrypt
  it. There is no need to decrypt it twice. </note> If you decide to use the
  optional `EncryptionContext` parameter, you must also store the context in
  full or at least store enough information along with the encrypted data to
  be able to reconstruct the context when submitting the ciphertext to the
  `Decrypt` API. It is a good practice to choose a context that you can
  reconstruct on the fly to better secure the ciphertext. For more
  information about how this parameter is used, see [Encryption
  Context](http://docs.aws.amazon.com/kms/latest/developerguide/encrypt-context.html).

  To decrypt data, pass the encrypted data key to the `Decrypt` API.
  `Decrypt` uses the associated master key to decrypt the encrypted data key
  and returns it as plaintext. Use the plaintext data key to locally decrypt
  your data and then erase the key from memory. You must specify the
  encryption context, if any, that you specified when you generated the key.
  The encryption context is logged by CloudTrail, and you can use this log to
  help track the use of particular data.
  """
  def generate_data_key(client, input, options \\ []) do
    request(client, "GenerateDataKey", input, options)
  end

  @doc """
  Returns a data key encrypted by a customer master key without the plaintext
  copy of that key. Otherwise, this API functions exactly like
  `GenerateDataKey`. You can use this API to, for example, satisfy an audit
  requirement that an encrypted key be made available without exposing the
  plaintext copy of that key.
  """
  def generate_data_key_without_plaintext(client, input, options \\ []) do
    request(client, "GenerateDataKeyWithoutPlaintext", input, options)
  end

  @doc """
  Generates an unpredictable byte string.
  """
  def generate_random(client, input, options \\ []) do
    request(client, "GenerateRandom", input, options)
  end

  @doc """
  Retrieves a policy attached to the specified key.
  """
  def get_key_policy(client, input, options \\ []) do
    request(client, "GetKeyPolicy", input, options)
  end

  @doc """
  Retrieves a Boolean value that indicates whether key rotation is enabled
  for the specified key.
  """
  def get_key_rotation_status(client, input, options \\ []) do
    request(client, "GetKeyRotationStatus", input, options)
  end

  @doc """
  Lists all of the key aliases in the account.
  """
  def list_aliases(client, input, options \\ []) do
    request(client, "ListAliases", input, options)
  end

  @doc """
  List the grants for a specified key.
  """
  def list_grants(client, input, options \\ []) do
    request(client, "ListGrants", input, options)
  end

  @doc """
  Retrieves a list of policies attached to a key.
  """
  def list_key_policies(client, input, options \\ []) do
    request(client, "ListKeyPolicies", input, options)
  end

  @doc """
  Lists the customer master keys.
  """
  def list_keys(client, input, options \\ []) do
    request(client, "ListKeys", input, options)
  end

  @doc """
  Attaches a policy to the specified key.
  """
  def put_key_policy(client, input, options \\ []) do
    request(client, "PutKeyPolicy", input, options)
  end

  @doc """
  Encrypts data on the server side with a new customer master key without
  exposing the plaintext of the data on the client side. The data is first
  decrypted and then encrypted. This operation can also be used to change the
  encryption context of a ciphertext.
  """
  def re_encrypt(client, input, options \\ []) do
    request(client, "ReEncrypt", input, options)
  end

  @doc """
  Retires a grant. You can retire a grant when you're done using it to clean
  up. You should revoke a grant when you intend to actively deny operations
  that depend on it. The following are permitted to call this API: * The
  account that created the grant * The `RetiringPrincipal`, if present * The
  `GranteePrincipal`, if `RetireGrant` is a grantee operation
  """
  def retire_grant(client, input, options \\ []) do
    request(client, "RetireGrant", input, options)
  end

  @doc """
  Revokes a grant. You can revoke a grant to actively deny operations that
  depend on it.
  """
  def revoke_grant(client, input, options \\ []) do
    request(client, "RevokeGrant", input, options)
  end

  @doc """
  Updates the description of a key.
  """
  def update_key_description(client, input, options \\ []) do
    request(client, "UpdateKeyDescription", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "kms"}
    host = "kms.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "TrentService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end
