local MY_FQBN = "arduino:avr:nano"
return {
  cmd = {
        "arduino-language-server",
        "-cli-config", "/path/to/arduino-cli.yaml",
        "-fqbn",
        MY_FQBN
    }
}
