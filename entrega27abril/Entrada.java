package entrega27abril;

import entrega20Abril.Usuario;

import java.io.File;
import java.util.Scanner;

public class Entrada {
    public static void main(String[] args) {
        Conexion conexion= new Conexion();
        Scanner teclado = new Scanner(System.in);
        int opcion=0;

        do {
            System.out.println("Opciones del menu");
            System.out.println("1- Realizar conexion");
            System.out.println("2- Introducir y volcar datos");
            System.out.println("3- Cerrar conexion");
            System.out.print("Introduzca que desea realizar:");
            opcion = teclado.nextInt();
            switch (opcion) {
                case 1:
                    conexion.realizarConexion();
                    break;
                case 2:
                    conexion.realizarConexion();
                    System.out.print("\nIntroduzca su nombre: ");
                    String nombre = teclado.next();
                    System.out.print("\nIntroduzca su apellido: ");
                    String apellido = teclado.next();
                    System.out.print("\nIntroduzca su edad: ");
                    int edad = teclado.nextInt();
                    System.out.print("\nIntroduzca su telefono: ");
                    int telefono = teclado.nextInt();
                    System.out.println();
                    conexion.insercion(nombre, apellido, edad, telefono);
                    break;
                case 3:
                    conexion.cerrarConexion();
                    break;
            }

        }while(opcion!=3);

    }
}
