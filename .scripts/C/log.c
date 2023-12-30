#include <stdio.h>
#include <stdlib.h>

int main() {
    char choose[20];

    printf("Choose an option:\n");
    printf("1. POWEROFF\n2. REBOOT\n3. ZZZ\n");

    scanf("%s", choose);

    if (strcmp(choose, "POWEROFF") == 0) {
            printf("Executing poweroff command...\n");
	    system("echo 'hello' | dmenu ");
    } else if (strcmp(choose, "REBOOT") == 0) {
	    printf("Executing reboot command...\n");
    } else if (strcmp(choose, "ZZZ") == 0) {
	    printf("Executing zzz command...\n");
    // You can replace the print statement with your actual command.
    } else {
	    printf("Invalid choice. Please choose from POWEROFF, REBOOT, or ZZZ.\n");
    }
    
   return 0;
}
   
