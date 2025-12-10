import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Ingrese el tamaño del arreglo: ");
        int n = sc.nextInt();
        int[] arr = new int[n];

        System.out.println("Ingrese " + n + " números:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        while (true) {
            System.out.println("\n=== ARREGLO ACTUAL ===");
            mostrarArreglo(arr);

            System.out.println("\n1. Ordenar de menor a mayor");
            System.out.println("2. Ordenar de mayor a menor");
            System.out.println("3. Pares al inicio, impares al final");
            System.out.println("4. Salir");
            System.out.print("Elige una opción: ");
            int op = sc.nextInt();

            if (op == 1) {
                ordenarMenorMayor(arr.clone()); 
            }
            else if (op == 2) {
                ordenarMayorMenor(arr.clone());
            }
            else if (op == 3) {
                ordenarParesImpares(arr.clone());
            }
            else if (op == 4) {
                System.out.println("¡Chau! Gracias por usar el programa");
                break;
            }
            else {
                System.out.println("Opción inválida");
            }
        }
        sc.close();
    }

    public static void ordenarMenorMayor(int[] a) {
        int n = a.length;
        for (int i = 0; i < n-1; i++) {
            for (int j = 0; j < n-i-1; j++) {
                if (a[j] > a[j+1]) {
                    int temp = a[j];
                    a[j] = a[j+1];
                    a[j+1] = temp;
                }
            }
        }
        System.out.println("Ordenado de menor a mayor:");
        mostrarArreglo(a);
    }

    public static void ordenarMayorMenor(int[] a) {
        int n = a.length;
        for (int i = 0; i < n-1; i++) {
            for (int j = 0; j < n-i-1; j++) {
                if (a[j] < a[j+1]) {
                    int temp = a[j];
                    a[j] = a[j+1];
                    a[j+1] = temp;
                }
            }
        }
        System.out.println("Ordenado de mayor a menor:");
        mostrarArreglo(a);
    }


    public static void ordenarParesImpares(int[] a) {
        int[] pares = new int[a.length];
        int[] impares = new int[a.length];
        int p = 0, im = 0;

        for (int num : a) {
            if (num % 2 == 0) {
                pares[p++] = num;
            } else {
                impares[im++] = num;
            }
        }

        for (int i = 0; i < p-1; i++) {
            for (int j = 0; j < p-i-1; j++) {
                if (pares[j] > pares[j+1]) {
                    int temp = pares[j];
                    pares[j] = pares[j+1];
                    pares[j+1] = temp;
                }
            }
        }

        for (int i = 0; i < im-1; i++) {
            for (int j = 0; j < im-i-1; j++) {
                if (impares[j] > impares[j+1]) {
                    int temp = impares[j];
                    impares[j] = impares[j+1];
                    impares[j+1] = temp;
                }
            }
        }

        int k = 0;
        for (int i = 0; i < p; i++) a[k++] = pares[i];
        for (int i = 0; i < im; i++) a[k++] = impares[i];

        System.out.println("Pares al inicio, impares al final:");
        mostrarArreglo(a);
    }


    public static void mostrarArreglo(int[] a) {
        for (int num : a) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}