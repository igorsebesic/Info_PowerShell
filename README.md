# Device Information PowerShell Script

This PowerShell script gathers essential information about the device and displays it in a user-friendly format. It retrieves the following details:

- **Device Name:** The name of the computer.
- **Username:** The current user's username.
- **RAM Memory:** The total RAM capacity in gigabytes (GB).
- **CPU Model:** The model of the processor.
- **HDD Information:** The size and media type (e.g., SSD, HDD) of each physical disk.

## How to Use

1. Open PowerShell with administrator privileges.
2. Navigate to the directory where the script is located.
3. Run the script using the command:

   ```powershell
   .\InfoScript.ps1
If you encounter permission issues, you might need to change the Execution Policy temporarily by running the following command in PowerShell with administrator privileges:
   ```powershell
	Set-ExecutionPolicy RemoteSigned
   ```
After running the script, you can set the Execution Policy back to its original state with:
   ```powershell
	Set-ExecutionPolicy <OriginalPolicy>
   ```
## License

This script is distributed under the terms of the GNU General Public License v3.0 (GPL-3.0). Feel free to customize or contribute to enhance the script's functionality!

Make sure to replace "InfoScript.ps1" with the actual name of your PowerShell script. You can use this description as a README.md file on your GitHub repository. If you have any further questions or need additional modifications, feel free to ask!
