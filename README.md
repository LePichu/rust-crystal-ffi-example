# Rust to Crystal FFI Example.
This is a demo repository showing how to use Rust with Crystal.

## Prerequisites:
- [Rust](https://rust-lang.org)
- [Crystal](https://crystal-lang.org)
- [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.2)

## Running Locally:
- Clone the repository to your local machine.
- Run `.\debug.ps1` to build the example in debug.

## How does it work?
This example does what Crystal needs, C ABI functions. We are exposing Rust code to C ABI which is then picked up by Crystal to use.