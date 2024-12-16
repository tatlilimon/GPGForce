# GPGForce

GPGForce is a simple Go application that generates GPG key pairs with custom fingerprint prefixes. It utilizes parallel processing to efficiently search for keys matching the desired prefix pattern.

## Demonstration
![gpgforce usage](./resources/gpgforce.gif)

## Features

- Generate GPG key pairs with custom fingerprint prefixes
- Parallel processing using all available CPU cores
- Real-time progress monitoring
- Secure key storage with encryption

## Prerequisites

- Go
- Environment variables:
  - `GPG_KEY_PASSWORD`: Password for key encryption
  - `NAME`: Name for the GPG key
  - `EMAIL`: Email address for the GPG key
  - `COMMENT`: Comment for key

## Installation

```bash
git clone https://github.com/tatlilimon/gpgforce.git
cd gpgforce
./install.sh
```

This will build the binary and install it to `/usr/local/bin`, making it available as a system-wide command. You'll need sudo privileges for the installation.

## Usage

```bash
gpgforce <desired-prefix>
```


Example:
```bash
gpgforce AA
```

This will generate a GPG key pair where the fingerprint starts with "AA" and save the keys in the `keys` directory:
- `keys/AA_private.gpg`: Encrypted private key
- `keys/AA_public.gpg`: Public key


## Security Considerations

- Uses 2048-bit RSA keys
- Implements secure key storage with encryption
- Employs SHA256 for hashing
- Uses AES256 for cipher operations

## Uninstallation

```bash
pkill gpgforce
sudo rm /usr/local/bin/gpgforce
```