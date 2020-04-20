package entrega20Abril;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

public class Excel {
    public void escribirDatos(String ruta, ArrayList<Usuario> lista){
        ArrayList<Usuario>listaUsuario=lista;
        String [] cabecera = {"nombre","apellido","dni","edad","telefono"};

        XSSFWorkbook ficheroExcel = null;
        FileOutputStream fos = null;

        try {
        ficheroExcel= new XSSFWorkbook();
        XSSFSheet hojaUsuarios = ficheroExcel.createSheet("usuarios");
        for(int i=0;i<listaUsuario.size()+1; i++){
            XSSFRow fila = hojaUsuarios.createRow(i);
            if (i==0){
                for (int j=0;j<cabecera.length;j++){
                    XSSFCell celda= fila.createCell(j);
                    celda.setCellValue(cabecera[j]);
                }
            }else{
                Usuario usuarioActual = lista.get(i-1);
                for (int j=0; j<cabecera.length;j++){
                    XSSFCell celda=null;
                    switch (j){
                        case 0:
                            celda= fila.createCell(j);
                            celda.setCellValue(usuarioActual.getNombre());
                            break;
                        case 1:
                            celda= fila.createCell(j);
                            celda.setCellValue(usuarioActual.getApellido());
                            break;
                        case 2:
                            celda= fila.createCell(j);
                            celda.setCellValue(usuarioActual.getDni());
                            break;
                        case 3:
                            celda= fila.createCell(j, CellType.NUMERIC);
                            celda.setCellValue(usuarioActual.getEdad());
                            break;
                        case 4:
                            celda= fila.createCell(j,CellType.NUMERIC);
                            celda.setCellValue(usuarioActual.getTelefono());
                            break;
                    }
                }
            }
        }

            fos= new FileOutputStream(ruta);
        ficheroExcel.write(fos);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                fos.close();
                ficheroExcel.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
    public void leerExcelCompleto(File f){
        FileInputStream fis = null;
        XSSFWorkbook ficheroExcel = null;
        try {
            fis= new FileInputStream(f);
            ficheroExcel= new XSSFWorkbook(fis);
            Iterator<Sheet> iteratorHojas= ficheroExcel.iterator();
            while(iteratorHojas.hasNext()){
                Sheet hojaActual = iteratorHojas.next();
                Iterator<Row> iteratorFilas = hojaActual.iterator();
                while(iteratorFilas.hasNext()){
                    Row filaActual = iteratorFilas.next();
                    Iterator<Cell> iteratorCelda=filaActual.iterator();
                    while(iteratorCelda.hasNext()){
                        Cell celdaActual = iteratorCelda.next();
                        if (celdaActual.getCellType()== CellType.STRING){
                            System.out.print(celdaActual.getStringCellValue()+" ");
                        }else if (celdaActual.getCellType()== CellType.NUMERIC){
                            System.out.print(celdaActual.getNumericCellValue()+" ");
                        }
                    }
                    System.out.println();
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}
