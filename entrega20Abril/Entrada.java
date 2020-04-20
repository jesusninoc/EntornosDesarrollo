package entrega20Abril;

import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

public class Entrada {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        Usuario usuario = new Usuario();
        ArrayList<Usuario> lista= new ArrayList<>();
        int opcion = 0;
        Excel prueba = new Excel();

        do {
            System.out.println("Opciones del menu");
            System.out.println("1- Registrar usuario");
            System.out.println("2- Volcar datos en excel");
            System.out.println("3- Mostrar los datos");
            System.out.println("4- Salir");
            System.out.print("Introduzca que desea realizar:");
            opcion = teclado.nextInt();
            String infectado=null;
            boolean contagiado=false;
            switch (opcion) {
                case 1:
                    System.out.print("\nIntroduzca su nombre: ");
                    String nombre = teclado.next();
                    System.out.print("\nIntroduzca su apellido: ");
                    String apellido = teclado.next();
                    System.out.print("\nIntroduzca su dni: ");
                    String dni = teclado.next();
                    System.out.print("\nIntroduzca su telefono: ");
                    int telefono = teclado.nextInt();
                    System.out.print("\nIntroduzca su edad: ");
                    int edad = teclado.nextInt();
                    System.out.println();
                    usuario = new Usuario(nombre, apellido, dni, edad, telefono);
                    lista.add(usuario);

                    break;
                case 2:
                        prueba.escribirDatos("src\\entrega20Abril\\excel.xlsx",lista);
                    break;
                case 3:
                    prueba.leerExcelCompleto(new File("src\\entrega20Abril\\excel.xlsx"));
                case 4:
                    System.out.println("SALIENDO");
            }
        } while (opcion != 4);
    }
}
